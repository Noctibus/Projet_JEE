package fr.cytech.projetJava.login;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name = "Users")
public class User {

	
	@Id
	@NotNull
	@Column(name = "username")
	private String username;
	
	@NotNull
	@Column(name = "password")
	private String password;

	@NotNull
	@Column(name = "administrator")
	private boolean administrator=false;


	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isAdministrator() {
		return this.administrator;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", isAdministrator=" + administrator + "]";
	}
	
	
}
