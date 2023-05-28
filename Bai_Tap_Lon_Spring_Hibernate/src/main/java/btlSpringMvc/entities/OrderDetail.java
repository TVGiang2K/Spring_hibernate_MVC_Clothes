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
@Table(name = "OrderDetail")
public class OrderDetail {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "ProId", referencedColumnName = "Id")
	private ProductDetail proO;
	@ManyToOne
	@JoinColumn(name = "OrId", referencedColumnName = "Id")
	private Orders order;
	
	public OrderDetail() {
		// TODO Auto-generated constructor stub
	}

	public OrderDetail(Long id, ProductDetail proO, Orders order) {
		super();
		this.id = id;
		this.proO = proO;
		this.order = order;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public ProductDetail getProO() {
		return proO;
	}

	public void setProO(ProductDetail proO) {
		this.proO = proO;
	}

	public Orders getOrder() {
		return order;
	}

	public void setOrder(Orders order) {
		this.order = order;
	}
	
}
