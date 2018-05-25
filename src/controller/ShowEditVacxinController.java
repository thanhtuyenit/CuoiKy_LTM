package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.VacxinBO;

public class ShowEditVacxinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ShowEditVacxinController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VacxinBO vacxinBO = new VacxinBO();
		int maVacxin;
		try {
			maVacxin = Integer.parseInt(request.getParameter("maVacxin"));
		} catch (Exception e) {
			response.sendRedirect(request.getContextPath() + "/trang-chu?msg=0");
			return;
		}
		request.setAttribute("objVacxin", vacxinBO.findVacxinByMaVacxin(maVacxin));
		RequestDispatcher rd = request.getRequestDispatcher("/editVacxin.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
