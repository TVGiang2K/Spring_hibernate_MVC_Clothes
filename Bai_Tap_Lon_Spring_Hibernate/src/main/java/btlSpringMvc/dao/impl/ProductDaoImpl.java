package btlSpringMvc.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import btlSpringMvc.dao.GeneralDAOPro;
import btlSpringMvc.entities.Products;

@Repository
public class ProductDaoImpl implements GeneralDAOPro<Products> {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Products> getAll(){
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List<Products>  list = session.createQuery("from Products").list();
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
	public List<Products> getAllSale(){
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List<Products> list = session.createQuery("from Products where salePrice > 0").setMaxResults(6).getResultList();
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
	public Products findByName(String username) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Products c = (Products) session.createQuery("from Products where name like :username").setParameter("username", username).uniqueResult();
			session.getTransaction().commit();
			return c;
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
	public List<Products> getFeatured() {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List<Products> list = session.createQuery("from Products where salePrice = 0").setMaxResults(6).getResultList();
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
	public List<Products> getNewProduct() {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List<Products> list = session.createQuery("from Products order by dateSubmitted desc").setMaxResults(5).getResultList();
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
	public List<Products> getBestSellerList() {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List<Products> list = session.createQuery("from Products where status = 0").setMaxResults(6).getResultList();
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
	public Products findById(Long proId) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Products c = (Products) session.createQuery("from Products where id = :proId").setParameter("proId", proId).uniqueResult();
			session.getTransaction().commit();
			return c;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return null;
	}
}
