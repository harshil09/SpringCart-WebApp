/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demat.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Pattern;
import org.springframework.stereotype.Component;

/**
 *
 * @author Admin
 */
@Component
public class Validation {

    int[][] d = new int[][]{{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, {1, 2, 3, 4, 0, 6, 7, 8, 9, 5},
    {2, 3, 4, 0, 1, 7, 8, 9, 5, 6}, {3, 4, 0, 1, 2, 8, 9, 5, 6, 7}, {4, 0, 1, 2, 3, 9, 5, 6, 7, 8},
    {5, 9, 8, 7, 6, 0, 4, 3, 2, 1}, {6, 5, 9, 8, 7, 1, 0, 4, 3, 2}, {7, 6, 5, 9, 8, 2, 1, 0, 4, 3},
    {8, 7, 6, 5, 9, 3, 2, 1, 0, 4}, {9, 8, 7, 6, 5, 4, 3, 2, 1, 0}};
    int[][] p = new int[][]{{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, {1, 5, 7, 6, 2, 8, 3, 0, 9, 4},
    {5, 8, 0, 3, 7, 9, 6, 1, 4, 2}, {8, 9, 1, 6, 0, 4, 3, 5, 2, 7}, {9, 4, 5, 3, 1, 2, 6, 8, 7, 0},
    {4, 2, 8, 6, 5, 7, 3, 9, 0, 1}, {2, 7, 9, 3, 8, 0, 6, 4, 1, 5}, {7, 0, 4, 6, 9, 1, 3, 2, 5, 8}};
    int[] inv = {0, 4, 3, 2, 1, 5, 6, 7, 8, 9};

    private boolean validateVerhoeff(String num) {
        int c = 0;
        int[] myArray = StringToReversedIntArray(num);
        for (int i = 0; i < myArray.length; i++) {
            c = d[c][p[(i % 8)][myArray[i]]];
        }

        return (c == 0);
    }

    private int[] StringToReversedIntArray(String num) {
        int[] myArray = new int[num.length()];
        for (int i = 0; i < num.length(); i++) {
            myArray[i] = Integer.parseInt(num.substring(i, i + 1));
        }
        myArray = Reverse(myArray);
        return myArray;
    }

    private int[] Reverse(int[] myArray) {
        int[] reversed = new int[myArray.length];
        for (int i = 0; i < myArray.length; i++) {
            reversed[i] = myArray[myArray.length - (i + 1)];
        }
        return reversed;
    }

    public boolean validateAadharNumber(String s) {
        if (s.contains("XXXX")) {
            return true;
        }
        boolean isValidAadhar = false;
        int i = s.length();
        if (i == 12 || i == 16) {
            Pattern aadharPattern = null;
            if (i == 12) {
                aadharPattern = Pattern.compile("\\d{12}");
            } else if (i == 16) {
                aadharPattern = Pattern.compile("\\d{16}");
            }

            isValidAadhar = aadharPattern.matcher(s).matches();
            if (isValidAadhar) {
                isValidAadhar = validateVerhoeff(s);
            }
        } else if (i == 72) {
            Pattern aadharPattern = null;
            aadharPattern = Pattern.compile("^[A-Za-z0-9-+/\\=:]+$");
            isValidAadhar = aadharPattern.matcher(s).matches();
        }
        return isValidAadhar;
    }

    public boolean isFullName(String name) {
        if (name == null || name.isEmpty()) {
            return false;
        }
        String expression = "^[a-zA-Z\\s]+";
        return name.matches(expression);
    }

    public boolean isEmail(String email) {
        if (email == null || email.isEmpty()) {
            return false;
        }
        String expression = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
                + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        return email.matches(expression);
    }

    public boolean isMobile(String mobile) {
        if (mobile == null || mobile.isEmpty() || mobile.length() != 10) {
            return false;
        }
        String expression = "^[6-9]\\d{9}$";
        return mobile.matches(expression);
    }

    public boolean isYOB(String yob) {
        try {
            if (yob.length() == 4) {
                int intYob = Integer.parseInt(yob);
                if (intYob > 1870 && intYob <= Integer.parseInt(new SimpleDateFormat("yyyy").format(new Date()))) {
                    return true;
                }
            }
        } catch (Exception e) {
        }
        return false;
    }

    public boolean isGender(String gender) {
        if (gender.equalsIgnoreCase("m") || gender.equalsIgnoreCase("f") || gender.equalsIgnoreCase("o")) {
            return true;
        } else {
            return false;
        }
    }

    public boolean isRelation(String relation) {
        if (relation.equalsIgnoreCase("Self") || relation.equalsIgnoreCase("Mother")
                || relation.equalsIgnoreCase("Father") || relation.equalsIgnoreCase("Wife")
                || relation.equalsIgnoreCase("Child")) {
            return true;
        } else {
            return false;
        }
    }
}
