package btlSpringMvc.entities;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

public class Cart  {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private Products pro;
	private String colorCart;
	private String sizeCart;
	private Integer quantity;
	
	public Cart() {
		// TODO Auto-generated constructor stub
	}

	

	




	public Cart(Long id, Products pro, String colorCart, String sizeCart, Integer quantity) {
		super();
		this.id = id;
		this.pro = pro;
		this.colorCart = colorCart;
		this.sizeCart = sizeCart;
		this.quantity = quantity;
	}








	public Integer getQuantity() {
		return quantity;
	}





	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}





	public String getColorCart() {
		return colorCart;
	}

	public void setColorCart(String colorCart) {
		this.colorCart = colorCart;
	}

	public String getSizeCart() {
		return sizeCart;
	}

	public void setSizeCart(String sizeCart) {
		this.sizeCart = sizeCart;
	}


	



	


	public Products getPro() {
		return pro;
	}


	public void setPro(Products pro) {
		this.pro = pro;
	}








	public Long getId() {
		return id;
	}








	public void setId(Long id) {
		this.id = id;
	}





	
}
