package btlSpringMvc.entities;

import java.util.Collection;
import java.util.Date;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class CustomAccountDetails implements UserDetails {
	private Collection<? extends GrantedAuthority> authorities;
	private String email;
	private String password;
	private String username;
	private String phone;
	private String fullName;
	private String address;
	private Boolean gender;
	private Date birthday;
	private Boolean enabled;
	private Boolean accountNonExpired;
	private Boolean accountNonLocked;
	private boolean credentialsNonExpired;

	public CustomAccountDetails() {
		super();
// TODO Auto-generated constructor stub
	}


	public CustomAccountDetails(Collection<? extends GrantedAuthority> authorities, String email, String password,
			String username, String phone, String fullName, String address, Boolean gender, Date birthday,
			Boolean enabled, Boolean accountNonExpired, Boolean accountNonLocked, boolean credentialsNonExpired) {
		super();
		this.authorities = authorities;
		this.email = email;
		this.password = password;
		this.username = username;
		this.phone = phone;
		this.fullName = fullName;
		this.address = address;
		this.gender = gender;
		this.birthday = birthday;
		this.enabled = enabled;
		this.accountNonExpired = accountNonExpired;
		this.accountNonLocked = accountNonLocked;
		this.credentialsNonExpired = credentialsNonExpired;
	}


	
	public String getFullName() {
		return fullName;
	}


	public void setFullName(String fullName) {
		this.fullName = fullName;
	}


	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	public Boolean getGender() {
		return gender;
	}

	public void setGender(Boolean gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public Boolean getAccountNonExpired() {
		return accountNonExpired;
	}

	public void setAccountNonExpired(Boolean accountNonExpired) {
		this.accountNonExpired = accountNonExpired;
	}

	public Boolean getAccountNonLocked() {
		return accountNonLocked;
	}

	public void setAccountNonLocked(Boolean accountNonLocked) {
		this.accountNonLocked = accountNonLocked;
	}


	public void setCredentialsNonExpired(boolean credentialsNonExpired) {
		this.credentialsNonExpired = credentialsNonExpired;
	}
	
	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return credentialsNonExpired;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		return credentialsNonExpired;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return accountNonLocked;
	}
	@Override
	public String getUsername() {
		return username;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return enabled;
	}
	
	
	@Override
	public String getPassword() {
		return password;
	}
	
	public void eraseCredentials() {
		this.password = null;
	}
	
}
