package com.cart.daos;

import com.cart.entities.Product;
import java.io.Serializable;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.criterion.CriteriaSpecification;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Raju-PC
 */
@Repository
public class ProductDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public int save(Product product) {
        return (Integer) this.hibernateTemplate.save(product);
    }

    public List<Product> getAllProduct() {
        DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
        criteria.addOrder(Order.desc("creationDate"));
        criteria.add(Restrictions.gt("qtyInStock", 0));
        return (List<Product>) this.hibernateTemplate.findByCriteria(criteria);
    }
    public List<Product> getAllForAdminProduct() {
        DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
        criteria.addOrder(Order.desc("creationDate"));
        return (List<Product>) this.hibernateTemplate.findByCriteria(criteria);
    }

    public Product getProductById(int id) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
        criteria.add(Restrictions.eq("id", id));
        List<Product> list = (List<Product>) this.hibernateTemplate.findByCriteria(criteria);
        if (!list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }

    public List<Product> getProductBySearch(String search) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);

        String searchText = "";
        //remove comma from search text and remove spaces
        searchText = search.replaceAll(",", " ").trim();
        //remove extra spaces between words 
        searchText = "%" + searchText.replaceAll("\\s+", " ") + "%";

        Disjunction disjunctionOfSearchCondition = Restrictions.or(
                Restrictions.ilike("name", searchText),
                Restrictions.ilike("manufacturer", searchText),
                Restrictions.ilike("productType", searchText)
        );
        criteria.add(disjunctionOfSearchCondition);
        criteria.setResultTransformer(CriteriaSpecification.DISTINCT_ROOT_ENTITY);

        criteria.addOrder(Order.desc("creationDate"));

        return (List<Product>) this.hibernateTemplate.findByCriteria(criteria);
    }

    @Transactional
    public void update(Product product) {
        this.hibernateTemplate.update(product);
    }

}
