package com.cart.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Raju-PC
 */
public class UserInfo {

    private static List<User> userList = new ArrayList<>();

    static {
        User user = new User();
        user.setId(1);
        user.setUsername("admin");
        user.setPassword("Test@123");
        user.setUserClass(UserClass.ADMIN);
        user.setFullName("Admin");
        userList.add(user);

        User cust = new User();
        cust.setId(2);
        cust.setUsername("user");
        cust.setPassword("Test@123");
        cust.setFullName("Raju Kumar");
        cust.setPhoneNo("9876545555");
        cust.setUserClass(UserClass.CUSTOMER);
        userList.add(cust);

    }

    public static List<User> getUserList() {
        return userList;
    }

    public static void setUserList(List<User> userList) {
        UserInfo.userList = userList;
    }

}
