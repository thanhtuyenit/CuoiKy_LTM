package model.bo;

import model.bean.Users;
import model.dao.UsersDAO;

public class UsersBO {

	public UsersBO() {
		super();
	}

	UsersDAO usersDAO = new UsersDAO();

	public Users checkLogin(String username, String password) {
		return usersDAO.checkLogin(username,password);
	}

}
