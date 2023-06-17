package com.cart.services;

import com.cart.daos.ProductDao;
import com.cart.entities.Product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Raju-PC
 */
@Service
public class ProductService {

    @Autowired
    private ProductDao productDao;

    public int save(Product product) {
        return this.productDao.save(product);
    }

    public List<Product> getAllProduct() {
        return this.productDao.getAllProduct();
    }
    
    public List<Product> getAllForAdminProduct() {
        return this.productDao.getAllForAdminProduct();
    }

    public Product getProductById(int id) {
        return this.productDao.getProductById(id);
    }

    public List<Product> getProductBySearch(String search) {
        return this.productDao.getProductBySearch(search);
    }

    public void update(Product product) {
        this.productDao.update(product);
    }

}
