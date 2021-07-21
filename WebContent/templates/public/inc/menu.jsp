<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<div class="menutop wow bounceInUp">
 	        <nav class="navbar navbar-light ">
 	          <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar2">
 	           
 	          </button>
 	          <div class="collapse navbar-toggleable-md" id="exCollapsingNavbar2">
 	            <a class="navbar-brand" href="#"><img src="<%=request.getContextPath()%>/templates/public/images/logo.png" alt="LOGO Project 1"></a>
 	            <ul class="nav navbar-nav">
 	              <li class="nav-item active">
 	                <a class="nav-link" href="<%=request.getContextPath()%>/trang-chu">Trang chủ  </a>
 	              </li>
 	              <li class="nav-item">
 	                <a class="nav-link" href="<%=request.getContextPath()%>/cua-hang?id=1">Cửa hàng </a>
 	                <ul>
 	                	<li><a href="<%=request.getContextPath()%>/cua-hang?id=1">Thời trang Nam</a></li>
 	                	<li><a href="<%=request.getContextPath()%>/cua-hang?id=2">Thời trang Nữ</a></li>
 	                	<li><a href="<%=request.getContextPath()%>/cua-hang?id=3">Áo khoác</a></li>
 	                	<li><a href="<%=request.getContextPath()%>/cua-hang?id=4">Phụ kiện</a></li>
 	                	
 	                </ul>
 	              </li>
 	              <li class="nav-item">
 	                <a class="nav-link" href="news.jsp">Tin tức</a>
 	              </li>
 	              <li class="nav-item">
 	                <a class="nav-link" href="#">Liên hệ</a>
  	              </li>
 	            </ul>
 	          </div>
 	        </nav>
 	     </div>   <!-- END MENUTOP -->