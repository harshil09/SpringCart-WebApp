package com.cart.model;

import com.cart.entities.Product;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Raju-PC
 */
public class Shop {

    String name;
    private List<Product> products = new ArrayList<Product>();

    public Shop(String nameIn) {
        this.name = nameIn;
    }

}
