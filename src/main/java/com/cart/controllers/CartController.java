package com.cart.controllers;

import com.cart.utils.Utility;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Raju-PC
 */
@Controller
public class CartController {
 
    @GetMapping({"/cart"})
    public String cart(Model model, HttpSession session) {
        if (!Utility.isCustomerLogin(session)) {
            return "redirect:login";
        }
        model.addAttribute("pageName", "cart");
        return "cart";
    }
}
