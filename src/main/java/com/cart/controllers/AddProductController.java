package com.cart.controllers;

import com.cart.entities.Product;
import com.cart.services.ProductService;
import com.cart.utils.Console;
import com.cart.utils.GlobalConfig;
import com.cart.utils.Utility;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FileUtils;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

/**
 *
 * @author Raju-PC
 */
@Controller
public class AddProductController {

    @Autowired
    private ProductService productService;

    @GetMapping("/update-product")
    public String updateProduct(@RequestParam int id, Model model, HttpSession session) {
        if (!Utility.isAdminLogin(session)) {
            return "redirect:logout";
        }
        try {
            Product product = productService.getProductById(id);
            model.addAttribute("product", product);
            model.addAttribute("productId", id);
        } catch (Exception e) {
            return "redirect:logout";
        }
        return "update-product";
    }

    @GetMapping("/product-list")
    public String productList(Model model, HttpSession session) {
        if (!Utility.isAdminLogin(session)) {
            return "redirect:logout";
        }
        model.addAttribute("pageName", "product-list");
        List<Product> productList = productService.getAllForAdminProduct();

        for (Product product : productList) {
            File folder = new File(GlobalConfig.BASE_PATH + "product_img/" + product.getId() + "/");
            if (folder.exists()) {
                File[] listOfFiles = folder.listFiles();
                List<String> fileList = new ArrayList<>();
                for (File file : listOfFiles) {
                    if (file.isFile()) {
                        fileList.add(file.getName());
                    }
                }
                product.setImgs(fileList);
            }
        }
        model.addAttribute("productList", productList);
        return "product-list";
    }

    @PostMapping("/saveProduct")
    @ResponseBody
    public String saveProduct(
            @RequestParam(name = "name") String name,
            @RequestParam(name = "productType") String productType,
            @RequestParam(name = "manufacturer") String manufacturer,
            @RequestParam(name = "price") double price,
            @RequestParam(name = "qtyInStock") int qtyInStock,
            @RequestParam(name = "description", required = false) String description
    ) {
        Product product = new Product();
        product.setName(name);
        product.setManufacturer(manufacturer);
        product.setPrice(price);
        product.setQtyInStock(qtyInStock);
        product.setProductType(productType);
        Console.printInfo("product - " + product);

        int productId = productService.save(product);

        JSONObject resp = new JSONObject();
        resp.put("resCode", "000");
        resp.put("productId", productId);
        resp.put("resMsg", "Product save successfully");

        return resp.toString();
    }

    @PostMapping("/updateProduct")
    @ResponseBody
    public String updateProduct(
            @RequestParam(name = "name") String name,
            @RequestParam(name = "productType") String productType,
            @RequestParam(name = "manufacturer") String manufacturer,
            @RequestParam(name = "price") double price,
            @RequestParam(name = "qtyInStock") int qtyInStock,
            @RequestParam(name = "productId") int productId,
            @RequestParam(name = "description", required = false) String description
    ) {
        JSONObject resp = new JSONObject();
        resp.put("errCode", "111");
        resp.put("productId", productId);
        resp.put("resMsg", "Somthing went wrong");
        try {
            Product product = productService.getProductById(productId);
            Console.printInfo("product - " + product);
            product.setName(name);
            product.setProductType(productType);
            product.setManufacturer(manufacturer);
            product.setPrice(price);
            product.setQtyInStock(qtyInStock);
            productService.update(product);
            resp.put("errCode", "000");
            resp.put("productId", productId);
            resp.put("resMsg", "Product updated successfully");
        } catch (Exception e) {
        }
        return resp.toString();
    }

    @GetMapping({"/add-product"})
    public String index(HttpSession session) {
        if (!Utility.isAdminLogin(session)) {
            return "redirect:logout";
        }
        return "add-product";
    }

    @PostMapping({"/uploadFile"})
    @ResponseBody
    public String uploadFile(MultipartHttpServletRequest request,
            HttpServletResponse response) {

        String productId = request.getParameter("productId");

        Console.printInfo("productId - " + productId);

        Iterator<String> itr = request.getFileNames();
        MultipartFile mpf = null;
        while (itr.hasNext()) {
            mpf = request.getFile(itr.next());
            String absPath = GlobalConfig.BASE_PATH;

            if (new File(absPath + "product_img/" + productId + "/").exists()) {
                new File(absPath + "product_img/" + productId + "/").mkdirs();
            }
            try {
                FileUtils.writeByteArrayToFile(new File(absPath + "product_img/" + productId + "/" + mpf.getOriginalFilename()), mpf.getBytes());
            } catch (IOException ex) {
                ex.printStackTrace();
            }

        }

        JSONObject resp = new JSONObject();
        resp.put("resCode", "000");
        resp.put("productId", productId);
        resp.put("resMsg", "Product save successfully");
        return resp.toString();
    }
}
