package btlSpringMvc.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Cate_Pro")
public class Category_Pro {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "ProId", referencedColumnName = "Id")
	private Products pro;
	@ManyToOne
	@JoinColumn(name = "CateId", referencedColumnName = "Id")
	private Categories category;
	
	public Category_Pro() {
		// TODO Auto-generated constructor stub
	}

	public Category_Pro(Long id, Products pro, Categories category) {
		super();
		this.id = id;
		this.pro = pro;
		this.category = category;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Products getPro() {
		return pro;
	}

	public void setPro(Products pro) {
		this.pro = pro;
	}

	public Categories getCategory() {
		return category;
	}

	public void setCategory(Categories category) {
		this.category = category;
	}
	

}
