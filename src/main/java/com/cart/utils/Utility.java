/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cart.utils;

import com.cart.model.UserClass;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;
import java.util.StringTokenizer;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class Utility {

    public static boolean isCustomerLogin(HttpSession session) {
        String username = (String) session.getAttribute("username");
        if (username == null || username.isEmpty()) {
            return false;
        }
        return true;
    }

    public static boolean isAdminLogin(HttpSession session) {
        String username = (String) session.getAttribute("username");
        UserClass userClass = (UserClass) session.getAttribute("userClass");
        if (username == null || username.isEmpty()) {
            return false;
        }
        if (userClass == null || !userClass.equals(UserClass.ADMIN)) {
            return false;
        }
        return true;
    }

    public static String parseDate(String input, String format) {
        String d = "";
        try {
            SimpleDateFormat parser = new SimpleDateFormat("yyyy-MM-dd");
            Date date = parser.parse(input);
//            SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy");
            SimpleDateFormat formatter = new SimpleDateFormat(format);
            d = formatter.format(date);
        } catch (Exception e) {
        }
        return d;
    }

    public static HashMap<String, String> toMap(String resp) {
        HashMap<String, String> hm = new HashMap<>();
        StringTokenizer st = new StringTokenizer(resp, "|");
        while (st.hasMoreTokens()) {
            StringTokenizer st1 = new StringTokenizer(st.nextToken(), "=");
            String key1 = st1.nextToken();
            boolean moreToken = st1.hasMoreTokens();
            String value = null;
            if (moreToken) {
                value = st1.nextToken();
            } else {
                value = "";
            }
            hm.put(key1, value);
        }
        return hm;
    }

//    public static Properties getProps(String file) {
//        String aua_props_location = GlobalConfig.PROPERTIES_PATH;
//        if (aua_props_location == null || aua_props_location.length() == 0) {
//            return null;
//        }
//        Properties epp_props = new Properties();
//        try {
//            epp_props.load(new FileInputStream(aua_props_location + file));
//            return epp_props;
//        } catch (Exception e) {
//            System.out.println(e);
//            e.printStackTrace();
//            return null;
//        }
//    }
    public static String getTS() {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
        return format.format(new Date());
    }

    public static String getTXN() {
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        return format.format(new Date()) + new Random().nextInt(999999);
    }

    public static String getCsrfToken() {
        return getRandom32();
    }

    public static String getRandom32() {
        String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        int len = 32;
        SecureRandom rnd = new SecureRandom();
        StringBuilder sb = new StringBuilder(len);
        for (int i = 0; i < len; i++) {
            sb.append(AB.charAt(rnd.nextInt(AB.length())));
        }
        return sb.toString();
    }

    //checking null values--------------
    public static boolean notExist(Object... args) {
        int iCount = 0;
        for (Object arg : args) {
            Console.printErr("iCount - " + iCount);
            if ((arg == null) || ("".equals(arg))) {
                return true;
            }
            iCount++;
        }
        return false;
    }

    public static boolean isValidLogin(HttpSession session) {
        boolean res = false;
        String csc_id = (String) session.getAttribute("csc_id");
        String user_type = (String) session.getAttribute("user_type");
//        String validateUser = (String) session.getAttribute("validateUser");
        Console.printInfo("csc_id - " + csc_id);
        Console.printInfo("user_type - " + user_type);

        if (csc_id == null //                && (!"VLE".equals(user_type) || user_type == null)
                ) {
            res = true;
        }
        return res;
    }

    public static boolean isValidAdminLogin(HttpSession session) {
        boolean res = false;
        String userName = (String) session.getAttribute("userName");
        String userType = (String) session.getAttribute("userType");
//        String validateUser = (String) session.getAttribute("validateUser");
        Console.printInfo("userName - " + userName);
        Console.printInfo("userType - " + userType);

        if (userName == null && (!"ADMIN".equals(userType) || userType == null)) {
            res = true;
        }
        return res;
    }
}
