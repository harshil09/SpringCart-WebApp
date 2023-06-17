package com.cart.controllers;

import com.cart.entities.Order;
import com.cart.entities.Product;
import com.cart.model.User;
import com.cart.model.UserInfo;
import com.cart.services.OrderService;
import com.cart.services.ProductService;
import com.cart.utils.Utility;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Raju-PC
 */
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private ProductService productService;

    @GetMapping("/order-list")
    public String orderList(Model model, HttpSession session) {
        if (!Utility.isCustomerLogin(session)) {
            return "redirect:logout";
        }
        String username = session.getAttribute("username").toString();
        List<Order> orderList = orderService.getOrderByUser(username);
        Map<String, List<Order>> orderMap = new HashMap<>();
        for (Order order : orderList) {
            String orderId = order.getOrderId();
            if (orderMap.containsKey(orderId)) {
                List<Order> orders = orderMap.get(orderId);
                orders.add(order);
                orderMap.put(orderId, orders);
            } else {
                List<Order> lst = new ArrayList<>();
                lst.add(order);
                orderMap.put(orderId, lst);
            }
        }
        model.addAttribute("orderMap", orderMap);
        return "order-list";
    }

    @GetMapping("/success")
    public String success(@RequestParam("orderId") String orderId, Model model, HttpSession session) {
        if (!Utility.isCustomerLogin(session)) {
            return "redirect:logout";
        }
        String username = session.getAttribute("username").toString();
        List<Order> orderList = orderService.getOrderById(orderId, username);
        model.addAttribute("orderList", orderList);
        model.addAttribute("orderId", orderId);

        List<User> userList = UserInfo.getUserList();
        for (User user : userList) {
            if (user.getUsername().equalsIgnoreCase(username)) {
                System.out.println("user - " + user);
                break;
            }
        }
        return "success";
    }

    @PostMapping("/saveOrder")
    @ResponseBody
    public String saveOrder(@RequestParam("orderData") String orderData, HttpSession session) {
        JSONObject resJson = new JSONObject();
        resJson.put("errCode", "400");
        resJson.put("errMsg", "Somthing went wrong");
        if (!Utility.isCustomerLogin(session)) {
            return resJson.toString();
        }
        try {
            String username = session.getAttribute("username").toString();
            Map<String, Object> orderMap = new JSONObject(orderData).toMap();

            String oderId = getOderId();
            for (Map.Entry<String, Object> entry : orderMap.entrySet()) {
                Map<String, Object> order = (Map<String, Object>) entry.getValue();

                int id = (int) order.get("id");
                int quantity = (int) order.get("quantity");
                String name = (String) order.get("name");
                String img = (String) order.get("img");
                double price = Double.parseDouble(order.get("price").toString());

                Order order1 = new Order();
                order1.setOrderId(oderId);
                order1.setPrice(price);
                order1.setQuantity(quantity);
                order1.setTotal(price * quantity);
                order1.setProductName(name);
                order1.setProductId(id);
                order1.setUserId(username);
                order1.setImgPath(img);

                Product product = productService.getProductById(id);
                if (product != null) {
                    order1.setProductType(product.getProductType());
                    order1.setManufacturer(product.getManufacturer());

                    int qtyInStock = product.getQtyInStock();
                    product.setQtyInStock(qtyInStock - quantity);

                    productService.update(product);
                }

                List<User> userList = UserInfo.getUserList();
                int index = 0;
                for (User user : userList) {
                    if (user.getUsername().equalsIgnoreCase(username)) {
                        user.setBankBalance(user.getBankBalance() - (price * quantity));

                        userList.add(index, user);
                        UserInfo.setUserList(userList);
                        session.setAttribute("bankBalance", user.getBankBalance());
                        break;
                    }
                    index++;
                }

                int orderId = orderService.save(order1);
                resJson.put("errCode", "000");
                resJson.put("errMsg", "Your order placed successfully");
                resJson.put("orderId", oderId);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resJson.toString();
    }

    private String getOderId() {
        return System.currentTimeMillis() + "";
    }
}
