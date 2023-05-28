package btlSpringMvc.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import btlSpringMvc.dao.GeneralDAOAc;
import btlSpringMvc.entities.Producer;
import btlSpringMvc.entities.Products;
@Repository
public class ProducerDaoImpl implements GeneralDAOAc<Producer> {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Producer> getAll() {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List<Producer>  list = session.createQuery("from Producer").list();
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
	public Producer findByName(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insert(Producer op) {
		// TODO Auto-generated method stub
		return false;
	}

}
