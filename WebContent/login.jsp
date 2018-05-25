<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">

  <title>Đăng nhập</title>

  <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/css/bootstrap-theme.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/css/style-responsive.css" rel="stylesheet" />

</head>

<body class="login-img3-body">

  <div class="container">

    <form class="login-form" action="<%=request.getContextPath()%>/xulylogin" method="post">
      <div class="login-wrap">
        <p class="login-img"><i class="icon_lock_alt"></i></p>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
          <input type="text" name="username" class="form-control" placeholder="Username" autofocus>
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <input type="password" name="password" class="form-control" placeholder="Password">
        </div>
        <button class="btn btn-primary btn-lg btn-block" type="submit">Đăng nhập</button>
      </div>
    </form>
    <div class="text-right">
      <div class="credits">
          <a href="#">Design</a> by <a href="">Thanh Tuyen</a>
        </div>
    </div>
  </div>


</body>

</html>
