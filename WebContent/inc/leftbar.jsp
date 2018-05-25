<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <aside>
      <div id="sidebar" class="nav-collapse ">
        <ul class="sidebar-menu">
          <li class="">
            <a class="" href="<%=request.getContextPath()%>/trang-chu">
                          <i class="icon_house_alt"></i>
                          <span>Trang chủ</span>
                      </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="fa fa-users"></i>
                          <span>Vacxin</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="<%=request.getContextPath()%>/them-vacxin">Thêm mới</a></li>
              <li><a class="" href="">Lịch sử</a></li>
            </ul>
          </li>

        </ul>
      </div>
    </aside>