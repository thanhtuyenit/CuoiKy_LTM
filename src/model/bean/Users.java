package model.bean;

public class Users {
	int idUser;
	String username;
	String password;
	String fullname;
	public Users() {
		super();
	}
	public Users(int idUser, String username, String password, String fullname) {
		super();
		this.idUser = idUser;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	@Override
	public String toString() {
		return "Users [idUser=" + idUser + ", username=" + username + ", password=" + password + ", fullname="
				+ fullname + "]";
	}
	

}
