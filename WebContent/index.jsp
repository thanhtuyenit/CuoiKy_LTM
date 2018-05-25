<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.Vacxin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="../inc/checkLogin.jsp"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Thi cuối kỳ Lập trình mạng</title>

  <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/css/bootstrap-theme.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/css/style-responsive.css" rel="stylesheet" />

</head>

<body>
  <section id="container" class="">
	<%@ include file="../inc/header.jsp"%>
	<%@ include file="../inc/leftbar.jsp"%>

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="icon_house_alt"></i> Trang chủ</h3>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
  <%          if(request.getAttribute("listVacxin") != null){
	@SuppressWarnings (value="unchecked")
	ArrayList<Vacxin> listVacxin = (ArrayList<Vacxin>) request.getAttribute("listVacxin");
	if(listVacxin.size() > 0){
%>
              <table class="table table-striped table-advance table-hover">
                <tbody>
                  <tr>
                    <th><i class=""></i>Mã vacxin</th>
                    <th><i class=""></i>Tên</th>
                    <th><i class=""></i>Số mũi</th>
                    <th><i class=""></i> Mô tả</th>
                    <th><i class=""></i> Gía</th>
                    <th><i class=""></i> Hãng</th>
                    <th><i class=""></i>Tác vụ</th>
                  </tr>
                  <%
                  	for(Vacxin objVacxin : listVacxin){
                  %>
                  <tr>
                    <td><%=objVacxin.getMaVacxin()%></td>
                    <td><%=objVacxin.getTenVacxin() %></td>
                    <td><%=objVacxin.getSoMui()%></td>
                    <td><%=objVacxin.getMoTa()%></td>
                    <td><%=objVacxin.getGiaVacxin()%></td>
                    <td><%=objVacxin.getTenHang()%></td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-success" href="<%=request.getContextPath()%>/chinh-sua-vacxin?maVacxin=<%=objVacxin.getMaVacxin()%>" ><i class="icon_check_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  <%} %>
                </tbody>
              </table>
              <%} }%>
            </section>
          </div>
        </div>
        <!-- page end-->
      </section>
    </section>
    
	<%@ include file="../inc/footer.jsp"%>
  </section>
  <script src="<%=request.getContextPath()%>/js/jquery.js"></script>
  <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/jquery.scrollTo.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="<%=request.getContextPath()%>/js/scripts.js"></script>


</body>

</html>
