package btlSpringMvc.entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Color")
public class Color {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "Name")
	private String name;
	
	@OneToMany(mappedBy = "color")
	private Set<Pro_Color> colorPro;
	
	public Color() {
		// TODO Auto-generated constructor stub
	}

	public Color(Long id, String name, Set<Pro_Color> colorPro) {
		super();
		this.id = id;
		this.name = name;
		this.colorPro = colorPro;
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

	public Set<Pro_Color> getColorPro() {
		return colorPro;
	}

	public void setColorPro(Set<Pro_Color> colorPro) {
		this.colorPro = colorPro;
	}
	
	
}
