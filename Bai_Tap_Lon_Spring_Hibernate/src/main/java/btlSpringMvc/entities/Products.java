package btlSpringMvc.entities;

import java.util.Date;
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
@Table(name = "Products")
public class Products {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "ProducerId", referencedColumnName = "Id")
	private Producer producerId;
	
	@Column(name = "Name")
	private String name;
	
	@Column(name = "Price")
	private Double price;
	
	@Column(name = "SalePrice")
	private Double salePrice;
	
	@Column(name = "Description")
	private String description;
	
	@Column(name = "DateSubmitted")
	private Date dateSubmitted;
	
	@Column(name = "Status")
	private Integer status;
	
	@OneToMany(mappedBy = "pro", fetch = FetchType.EAGER)
	private Set<Category_Pro> proCt;
	
	
	@OneToMany(mappedBy = "proId", fetch = FetchType.EAGER)
	private List<ProductDetail> productDetail;
	
	public Products() {
		// TODO Auto-generated constructor stub
	}



	public Products(Long id, Producer producerId, String name, Double price, Double salePrice, String description,
			Date dateSubmitted, Integer status, Set<Category_Pro> proCt, List<ProductDetail> productDetail) {
		super();
		this.id = id;
		this.producerId = producerId;
		this.name = name;
		this.price = price;
		this.salePrice = salePrice;
		this.description = description;
		this.dateSubmitted = dateSubmitted;
		this.status = status;
		this.proCt = proCt;
		this.productDetail = productDetail;
	}



	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public Producer getProducerId() {
		return producerId;
	}



	public void setProducerId(Producer producerId) {
		this.producerId = producerId;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public Double getPrice() {
		return price;
	}



	public void setPrice(Double price) {
		this.price = price;
	}



	public Double getSalePrice() {
		return salePrice;
	}



	public void setSalePrice(Double salePrice) {
		this.salePrice = salePrice;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public Date getDateSubmitted() {
		return dateSubmitted;
	}



	public void setDateSubmitted(Date dateSubmitted) {
		this.dateSubmitted = dateSubmitted;
	}



	public Integer getStatus() {
		return status;
	}



	public void setStatus(Integer status) {
		this.status = status;
	}



	public Set<Category_Pro> getProCt() {
		return proCt;
	}



	public void setProCt(Set<Category_Pro> proCt) {
		this.proCt = proCt;
	}



	public List<ProductDetail> getProductDetail() {
		return productDetail;
	}



	public void setProductDetail(List<ProductDetail> productDetail) {
		this.productDetail = productDetail;
	}


	

	
}
