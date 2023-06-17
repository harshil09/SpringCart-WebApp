package com.cart.services;

import com.cart.daos.OrderDao;
import com.cart.entities.Order;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Raju-PC
 */
@Service
public class OrderService {

    @Autowired
    private OrderDao orderDao;

    public int save(Order order) {
        return this.orderDao.save(order);
    }

    public List<Order> getOrderById(String orderId, String userName) {
        return this.orderDao.getOrderById(orderId, userName);
    }

    public List<Order> getOrderByUser(String username) {
        return this.orderDao.getOrderByUser(username);
    }
}
