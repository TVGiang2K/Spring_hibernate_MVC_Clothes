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
@Table(name = "Pro_Size")
public class Pro_Size {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "ProId", referencedColumnName = "Id")
	private ProductDetail pros;
	@ManyToOne
	@JoinColumn(name = "SizeId", referencedColumnName = "Id")
	private Size size;
	
	public Pro_Size() {
		// TODO Auto-generated constructor stub
	}

	public Pro_Size(Long id, ProductDetail pro, Size size) {
		super();
		this.id = id;
		this.pros = pro;
		this.size = size;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public ProductDetail getPros() {
		return pros;
	}

	public void setPros(ProductDetail pro) {
		this.pros = pro;
	}

	public Size getSize() {
		return size;
	}

	public void setSize(Size size) {
		this.size = size;
	}
	
}
