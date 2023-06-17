package com.cart.controllers;

import com.cart.model.User;
import com.cart.model.UserClass;
import com.cart.model.UserInfo;
import com.cart.utils.Alert;
import com.cart.utils.Crypto;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Raju-PC
 */
@Controller
public class LoginSignupController {

    @GetMapping({"/login"})
    public String login() {
        System.out.println("user list - " + UserInfo.getUserList());
        return "login";
    }

    @GetMapping({"/logout"})
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:index";
    }

    @GetMapping({"/signup"})
    public String signup() {
        return "signup";
    }

    @PostMapping({"/signUpUser"})
    public String signUpUser(@ModelAttribute User user, HttpSession session, Model model) {
        List<User> userList = UserInfo.getUserList();

        for (User extuser : userList) {
            if (extuser.getUsername().equalsIgnoreCase(user.getUsername())) {
                session.setAttribute("msg", "err");
                Alert.setMessage("User already exist, please login", "danger");
                model.addAttribute("user", user);
                return "signup";
            }
        }
        user.setUsername(user.getUsername().toLowerCase());
        user.setUserClass(UserClass.CUSTOMER);
        userList.add(user);
        UserInfo.setUserList(userList);
        session.setAttribute("msg", "ok");
        Alert.setMessage("Account created successfully", "success");
        return "redirect:signup";
    }

    @PostMapping({"/validateUser"})
    public String validateUser(@ModelAttribute User user, HttpSession session, Model model) {
        List<User> userList = UserInfo.getUserList();

        String username = user.getUsername();
        String password = user.getPassword();
        password = Crypto.decrypt(password);
        for (User extUser : userList) {
            if (extUser.getUsername().equalsIgnoreCase(username)) {
                if (extUser.getPassword().equals(password)) {
                    session.setAttribute("username", username.toLowerCase());
                    session.setAttribute("fullName", extUser.getFullName());
                    session.setAttribute("userClass", extUser.getUserClass());
                    session.setAttribute("bankBalance", extUser.getBankBalance());
                    if (UserClass.CUSTOMER.equals(extUser.getUserClass())) {
                        return "redirect:index";
                    } else if (UserClass.ADMIN.equals(extUser.getUserClass())) {
                        return "redirect:add-product";
                    }
                }
                session.setAttribute("msg", "err");
                Alert.setMessage("Invalid credentials", "danger");
                model.addAttribute("user", user);
                return "login";
            }
        }
        session.setAttribute("msg", "err");
        Alert.setMessage("User not exist, please singup", "danger");
        model.addAttribute("user", user);
        return "login";
    }

}
