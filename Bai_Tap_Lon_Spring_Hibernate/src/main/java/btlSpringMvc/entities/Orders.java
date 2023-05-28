package btlSpringMvc.entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Orders")
public class Orders {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "AcId", referencedColumnName = "Id")
	private Account acId;
	
	@Column(name = "Address")
	private String address;
	
	@Column(name = "Phone")
	private String phone;
	
	@Column(name = "Quantity")
	private Integer quantity;
	
	@Column(name = "TotalPrice")
	private Float totalPrice;
	
	@Column(name = "Status")
	private Integer status;
	
	@OneToMany(mappedBy = "order")
	private Set<OrderDetail> orderDetail;
	
	public Orders() {
		// TODO Auto-generated constructor stub
	}

	

	public Orders(Long id, Account acId, String address, String phone, Integer quantity, Float totalPrice,
			Integer status, Set<OrderDetail> orderDetail) {
		super();
		this.id = id;
		this.acId = acId;
		this.address = address;
		this.phone = phone;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.status = status;
		this.orderDetail = orderDetail;
	}



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}



	public Float getTotalPrice() {
		return totalPrice;
	}



	public void setTotalPrice(Float totalPrice) {
		this.totalPrice = totalPrice;
	}



	public Account getAcId() {
		return acId;
	}

	public void setAcId(Account acId) {
		this.acId = acId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Set<OrderDetail> getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(Set<OrderDetail> orderDetail) {
		this.orderDetail = orderDetail;
	}
	
	
}
