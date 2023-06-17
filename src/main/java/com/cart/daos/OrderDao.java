package com.cart.daos;

import com.cart.entities.Order;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Raju-PC
 */
@Repository
public class OrderDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public int save(Order order) {
        return (Integer) this.hibernateTemplate.save(order);
    }

    public List<Order> getOrderById(String orderId, String userName) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Order.class);
        criteria.add(Restrictions.eq("orderId", orderId));
        criteria.add(Restrictions.eq("userId", userName));
        criteria.addOrder(org.hibernate.criterion.Order.desc("creationDate"));
        return (List<Order>) this.hibernateTemplate.findByCriteria(criteria);
    }

    public List<Order> getOrderByUser(String username) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Order.class);
        criteria.add(Restrictions.eq("userId", username));
        criteria.addOrder(org.hibernate.criterion.Order.desc("creationDate"));
        return (List<Order>) this.hibernateTemplate.findByCriteria(criteria);
    }
}
