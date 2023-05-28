package btlSpringMvc.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import btlSpringMvc.dao.GeneralDAOAc;
import btlSpringMvc.entities.Role;

@Repository
public class RoleDaoImpl implements GeneralDAOAc<Role> {
	
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<Role> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Role findByName(String rname) {
		Session session = sessionFactory.openSession();
		try {
			Role role = (Role) session.createQuery("from Role where name = :name")
					.setParameter("name", rname).uniqueResult();
			return role;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	@Override
	public boolean insert(Role op) {
		// TODO Auto-generated method stub
		return false;
	}


}
