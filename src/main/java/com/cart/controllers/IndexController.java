package com.cart.controllers;

import com.cart.entities.Product;
import com.cart.services.ProductService;
import com.cart.utils.GlobalConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Raju-PC
 */
@Controller
public class IndexController {

    
    @Autowired
    private ProductService productService;
    
    
    @GetMapping("/index")
    public String abc(){
    
        return "index"; //  /views/index.jsp
    }

//    @RequestMapping({"", "/", "/index"})
//    public String index(@RequestParam(name = "search", required = false) String search, Model model, HttpSession session) {
//        model.addAttribute("pageName", "index");
//        List<Product> productList = null;
//        if (search == null || search.isEmpty()) {
//            productList = productService.getAllProduct();
//        } else {
//            productList = productService.getProductBySearch(search);
//        }
//
//        for (Product product : productList) {
//            File folder = new File(GlobalConfig.BASE_PATH + "product_img/" + product.getId() + "/");
//            if (folder.exists()) {
//                File[] listOfFiles = folder.listFiles();
//                List<String> fileList = new ArrayList<>();
//                for (File file : listOfFiles) {
//                    if (file.isFile()) {
//                        fileList.add(file.getName());
//                    }
//                }
//                product.setImgs(fileList);
//            }
//        }
//        model.addAttribute("productList", productList);
//        model.addAttribute("search", search);
//        return "index";
//    }
}
