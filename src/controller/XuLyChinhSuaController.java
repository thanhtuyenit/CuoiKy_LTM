package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Vacxin;
import model.bo.VacxinBO;

public class XuLyChinhSuaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public XuLyChinhSuaController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		VacxinBO vacxinBO = new VacxinBO();
		int maVacxin = Integer.parseInt(request.getParameter("maVacxin"));
		String tenVacxin = request.getParameter("tenVacxin");
		int soMui = Integer.parseInt(request.getParameter("soMui"));
		String moTa = request.getParameter("moTa");
		double giaVacxin = Double.parseDouble(request.getParameter("giaVacxin"));
		String tenHang = request.getParameter("tenHang");
		Vacxin objVacxin = new Vacxin(maVacxin, tenVacxin, soMui, moTa, giaVacxin, tenHang);
		if (vacxinBO.editVacxin(objVacxin) != 0) {
			response.sendRedirect(request.getContextPath() + "/trang-chu?msg=2");
			return;
		} else {
			response.sendRedirect(request.getContextPath() + "/trang-chu?msg=0");
			return;
		}
	}

}
