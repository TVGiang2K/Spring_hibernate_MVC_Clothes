package btlSpringMvc.dao;

import java.util.List;

public interface GeneralDAOAc <T>  {
	public List<T> getAll();
	public T findByName(String username);
	public boolean insert(T op);
}
