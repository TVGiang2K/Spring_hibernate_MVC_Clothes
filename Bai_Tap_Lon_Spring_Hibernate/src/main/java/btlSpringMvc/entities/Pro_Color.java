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
@Table(name = "Pro_Color")
public class Pro_Color {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "ProId", referencedColumnName = "Id")
	private ProductDetail proc;
	@ManyToOne
	@JoinColumn(name = "ColorId", referencedColumnName = "Id")
	private Color color;
	
	public Pro_Color() {
		// TODO Auto-generated constructor stub
	}

	public Pro_Color(Long id, ProductDetail proc, Color color) {
		super();
		this.id = id;
		this.proc = proc;
		this.color = color;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public ProductDetail getProc() {
		return proc;
	}

	public void setProc(ProductDetail proc) {
		this.proc = proc;
	}

	public Color getColor() {
		return color;
	}

	public void setColor(Color color) {
		this.color = color;
	}
	
	
}
