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
@Table(name = "Images")
public class Images {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "Name")
	private String name;
	
	@ManyToOne
	@JoinColumn(name = "ProId", referencedColumnName = "Id")
	private Products proId;
	
	public Images() {
		// TODO Auto-generated constructor stub
	}

	public Images(Long id, String name, Products proId) {
		super();
		this.id = id;
		this.name = name;
		this.proId = proId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Products getProId() {
		return proId;
	}

	public void setProId(Products proId) {
		this.proId = proId;
	}
	
	
	
}
