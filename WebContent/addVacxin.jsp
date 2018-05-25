<%@page import="model.bean.Vacxin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../inc/checkLogin.jsp"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Thi cuối kỳ lập trình mạng</title>

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
            <h3 class="page-header"><i class="fa fa-files-o"></i>Chỉnh sửa vacxin</h3>
          </div>
        </div>
        <!-- Form validations -->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <div class="panel-body">
                <div class="form">
                  <form class="form-validate form-horizontal " id="register_form" method="post" action="<%=request.getContextPath()%>/xu-ly-them">
                    <div class="form-group ">
                      <label for="address" class="control-label col-lg-2">Tên vacxin <span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class=" form-control" id="tenVacxin" name="tenVacxin" type="text" required="required" />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="username" class="control-label col-lg-2">Số mũi <span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input  class="form-control " id="soMui" name="soMui" type="number" required="required" />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="password" class="control-label col-lg-2">Mô tả <span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input  class="form-control " id="moTa" name="moTa" type="text" />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="confirm_password" class="control-label col-lg-2">Gía vacxin <span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class="form-control " id="giaVacxin" name="giaVacxin" type="number" />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="email" class="control-label col-lg-2">Tên hãng <span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input  class="form-control " id="tenHang" name="tenHang" type="text" required="required"/>
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-primary" type="submit">Them</button>
                        <button class="btn btn-default" type="button">Hủy</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </section>
          </div>
        </div>
      </section>
    </section>
	<%@ include file="../inc/footer.jsp"%>
  </section>

  <script src="<%=request.getContextPath()%>/js/jquery.js"></script>
  <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/jquery.scrollTo.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/jquery.nicescroll.js" type="text/javascript"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>

  <%-- <script src="<%=request.getContextPath()%>/js/form-validation-script.js"></script> --%>
  <script src="<%=request.getContextPath()%>/js/scripts.js"></script>


</body>

</html>
