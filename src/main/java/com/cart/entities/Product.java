package com.cart.entities;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author Raju-PC
 */
@Entity
@Table(name = "product")
public class Product extends CommonEntity {

    private String name;
    private String manufacturer;
    private String productType;
    private double price;
    private int qtyInStock;

    @Transient
    private List<String> imgs;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQtyInStock() {
        return qtyInStock;
    }

    public void setQtyInStock(int qtyInStock) {
        this.qtyInStock = qtyInStock;
    }

    public List<String> getImgs() {
        return imgs;
    }

    public void setImgs(List<String> imgs) {
        this.imgs = imgs;
    }

    @Override
    public String toString() {
        return "Product{" + "name=" + name + ", manufacturer=" + manufacturer + ", productType=" + productType + ", price=" + price + ", qtyInStock=" + qtyInStock + ", imgs=" + imgs + '}';
    }

   
}
