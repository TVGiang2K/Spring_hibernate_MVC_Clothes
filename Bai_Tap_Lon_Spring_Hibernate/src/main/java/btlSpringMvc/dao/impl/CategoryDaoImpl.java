package btlSpringMvc.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import btlSpringMvc.dao.GeneralDAOPro;
import btlSpringMvc.entities.Categories;
import btlSpringMvc.entities.ProductDetail;
import btlSpringMvc.entities.Products;

@Repository
public class CategoryDaoImpl implements GeneralDAOPro<Categories>{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Categories> getAll() {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List<Categories>  list = session.createQuery("from Categories").list();
			session.getTransaction().commit();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	@Override
	public Categories findByName(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Categories findById(Long ctId) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Categories prd = (Categories) session.createQuery("from Categories where id = :ctId").setParameter("ctId", ctId).uniqueResult();
			session.getTransaction().commit();
			return prd;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return null;
	}

	@Override
	public List<Categories> getAllSale() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Categories> getFeatured() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Categories> getNewProduct() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Categories> getBestSellerList() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
