package com.cart.controllers;

import com.cart.model.User;
import com.cart.model.UserInfo;
import com.cart.utils.Utility;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Raju-PC
 */
@Controller
public class ProfileController {

    @GetMapping("/profile")
    public String success(HttpSession session, Model model) {
        if (!Utility.isCustomerLogin(session)) {
            return "redirect:logout";
        }
        String username = session.getAttribute("username").toString();

        List<User> userList = UserInfo.getUserList();
        System.out.println("username - " + username);
        System.out.println("userList - " + userList);
        for (User user : userList) {
            if (user.getUsername().equalsIgnoreCase(username)) {
                model.addAttribute("user", user);
                break;
            }
        }
        return "profile";
    }
}
