<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="header dark-bg">
	<div class="toggle-nav">
		<div class="icon-reorder tooltips"
			data-original-title="Toggle Navigation" data-placement="bottom">
			<i class="icon_menu"></i>
		</div>
	</div>

	<a href="index.html" class="logo">Thanh <span class="lite">Tuyền</span></a>

	<div class="nav search-row" id="top_menu">
		<ul class="nav top-menu">
			<li>
				<form class="navbar-form">
					<input class="form-control" placeholder="Search" type="text">
				</form>
			</li>
		</ul>
	</div>

	<div class="top-nav notification-row">
		<ul class="nav pull-right top-menu">
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <span class="profile-ava">
						<img alt=""
						src="<%=request.getContextPath()%>/img/avatar1_small.jpg">
				</span> <span class="username">admin</span> <b class="caret"></b>
			</a>
				<ul class="dropdown-menu extended logout">
					<div class="log-arrow-up"></div>
					<li class="eborder-top"><a href="#"><i
							class="icon_profile"></i> Thông tin cá nhân</a></li>
					<li><a href="#"><i class="icon_mail_alt"></i> Đổi mật khẩu</a>
					</li>
					<li><a href="login.html"><i class="icon_key_alt"></i> Đăng
							xuất</a></li>
				</ul></li>
		</ul>
	</div>
</header>