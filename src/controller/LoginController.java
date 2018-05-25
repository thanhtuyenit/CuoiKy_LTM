package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.bo.UsersBO;

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UsersBO userBO = new UsersBO();
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if (userBO.checkLogin(username, password) != null) {
			// login success
			session.setAttribute("userInfor", userBO.checkLogin(username, password));
			response.sendRedirect(request.getContextPath() + "/trang-chu");
		} else {
			// username or password invalid
			response.sendRedirect(request.getContextPath() + "/dang-nhap?msg=0");
			return;
		}
	}

}
