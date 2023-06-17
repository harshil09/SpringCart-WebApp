package com.cart.model;

import com.cart.entities.Product;

/**
 *
 * @author Raju-PC
 */
public class CartItem {

    private Product product;
    private int desiredQty;
    private long id;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getDesiredQty() {
        return desiredQty;
    }

    public void setDesiredQty(int desiredQty) {
        this.desiredQty = desiredQty;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

}
