/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cart.utils;

/**
 *
 * @author Admin
 */
public class Console {

    public static void printErr(String str) {
        print(str);
    }

    public static void printInfo(String str) {
        if (GlobalConfig.ENV.equalsIgnoreCase("local")) {
            print(str);
        }
    }

    private static void print(String str) {
        System.out.println(str);
    }
}
