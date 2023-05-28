package btlSpringMvc.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import btlSpringMvc.dao.GeneralDAOPro;
import btlSpringMvc.entities.ProductDetail;

@Repository
public class ProductDetailDaoImpl implements GeneralDAOPro<ProductDetail>{

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<ProductDetail> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductDetail findByName(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductDetail findById(Long proId) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			ProductDetail prd = (ProductDetail) session.createQuery("from ProductDetail where id = :proId").setParameter("proId", proId).uniqueResult();
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
	public List<ProductDetail> getAllSale() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductDetail> getFeatured() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductDetail> getNewProduct() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductDetail> getBestSellerList() {
		// TODO Auto-generated method stub
		return null;
	}

}
