package btlSpringMvc.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Producer")
public class Producer {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "Name")
	private String name;
	
	@OneToMany(mappedBy = "producerId", fetch = FetchType.EAGER)
	private List<Products> listProduct;
	
	
	public Producer() {
		// TODO Auto-generated constructor stub
	}


	public Producer(Long id, String name, List<Products> listProduct) {
		super();
		this.id = id;
		this.name = name;
		this.listProduct = listProduct;
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


	public List<Products> getListProduct() {
		return listProduct;
	}


	public void setListProduct(List<Products> listProduct) {
		this.listProduct = listProduct;
	}
	
}
