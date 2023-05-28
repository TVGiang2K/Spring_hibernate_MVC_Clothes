package btlSpringMvc.dao;

import java.util.List;

public interface GeneralDAOPro<T> {
	public List<T> getAll();
	public T findByName(String username);
	public T findById(Long proId);
	public List<T> getAllSale();
	public List<T> getFeatured();
	public List<T> getNewProduct();
	public List<T> getBestSellerList();
}
