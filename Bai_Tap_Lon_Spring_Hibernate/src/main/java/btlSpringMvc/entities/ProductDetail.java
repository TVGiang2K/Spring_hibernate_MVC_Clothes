package btlSpringMvc.entities;

import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "ProductDetail")
public class ProductDetail {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "ProId", referencedColumnName = "Id")
	private Products proId;
	 
	@Column(name = "Weight")
	private String weight;
	
	@Column(name = "Dimensions")
	private String dimensions;
	
	@Column(name = "Materials")
	private String materials;
	
	@OneToMany(mappedBy = "pros", fetch = FetchType.EAGER)
	private Set<Pro_Size> proSize;
	
	@OneToMany(mappedBy = "proc", fetch = FetchType.EAGER)
	private Set<Pro_Color> colorPro;
	
	@OneToMany(mappedBy = "proO", fetch = FetchType.EAGER)
	private Set<OrderDetail> proDetailOrder;
	
	@OneToMany(mappedBy = "proId", fetch = FetchType.EAGER)
	private List<Images> listImage;
	
	public ProductDetail() {
		// TODO Auto-generated constructor stub
	}

	

	public ProductDetail(Long id, Products proId, String weight, String dimensions, String materials,
			Set<Pro_Size> proSize, Set<Pro_Color> colorPro, Set<OrderDetail> proDetailOrder, List<Images> listImage) {
		super();
		this.id = id;
		this.proId = proId;
		this.weight = weight;
		this.dimensions = dimensions;
		this.materials = materials;
		this.proSize = proSize;
		this.colorPro = colorPro;
		this.proDetailOrder = proDetailOrder;
		this.listImage = listImage;
	}



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Products getProId() {
		return proId;
	}

	public void setProId(Products proId) {
		this.proId = proId;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getDimensions() {
		return dimensions;
	}

	public void setDimensions(String dimensions) {
		this.dimensions = dimensions;
	}

	public String getMaterials() {
		return materials;
	}

	public void setMaterials(String materials) {
		this.materials = materials;
	}

	public Set<Pro_Size> getProSize() {
		return proSize;
	}

	public void setProSize(Set<Pro_Size> proSize) {
		this.proSize = proSize;
	}

	public Set<Pro_Color> getColorPro() {
		return colorPro;
	}

	public void setColorPro(Set<Pro_Color> colorPro) {
		this.colorPro = colorPro;
	}

	public Set<OrderDetail> getProDetailOrder() {
		return proDetailOrder;
	}

	public void setProDetailOrder(Set<OrderDetail> proDetailOrder) {
		this.proDetailOrder = proDetailOrder;
	}



	public List<Images> getListImage() {
		return listImage;
	}



	public void setListImage(List<Images> listImage) {
		this.listImage = listImage;
	}
	
	
	
	

}
