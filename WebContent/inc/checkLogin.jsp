<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("userInfor") == null){
		response.sendRedirect(request.getContextPath()+"/dang-nhap");
		return;
	}
%>