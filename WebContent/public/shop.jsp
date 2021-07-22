<%@page import="model.bean.Products"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp" %>
<body >			
	<%@include file="/templates/public/inc/taskbar.jsp" %>	
	<%@include file="/templates/public/inc/menu.jsp" %>

	<div class="ktieude text-xs-center">
		<div class="ktieudetrong">
			<h2>Shop</h2>
			<nav class="breadcrumb">
				<a href="">Home </a> &nbsp; / &nbsp; <a href="">Shop</a>
			</nav>
		</div>
		
	</div> <!-- HET KHOI TIEU DE -->
	<div class="tieudelistsp">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 wow fadeInUpBig">
					<h3>Product List</h3>
				</div>				
				<div class="col-sm-3 wow fadeInUpBig">
					<b class="btn btn-outline-secondary nutgrid"> <i class="fa fa-th-large"></i> Grid</b>
					<b class="btn btn-outline-secondary nutlist"> <i class="fa fa-list"></i> List</b>
				</div>
				<div class="col-sm-3 wow fadeInUpBig">
					<span class="show">Showing 1-12 of 350 results</span>
				</div>
				<div class="col-sm-6 wow fadeInUpBig">
					<div class="float-sm-right">
						
						<form class="woocommerce-ordering" >
							<select name="orderby" class="orderby">
									<option value="menu_order">Thứ tự mặc định</option>
									<option value="popularity">Thứ tự theo mức độ phổ biến</option>
									<option value="date" selected="selected">Thứ tự theo sản phẩm mới</option>
									<option value="price">Thứ tự theo giá: thấp đến cao</option>
									<option value="price-desc">Thứ tự theo giá: cao xuống thấp</option>
							</select>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div> <!-- HET TIEUDELISTSP -->
	
	<div class="khoispshop">
		<div class="container">
			<div class="row">
				 <%
				 	if(request.getAttribute("pronull")!=null){
				 		out.print("<p>Hiện tại chưa có sản phẩm nào !!!</p>");
				 	}
				 if(request.getAttribute("listProduct")!=null){
				 		ArrayList<Products> listProduct = new ArrayList<Products>((ArrayList<Products>)request.getAttribute("listProduct"));
				 		for(Products pro : listProduct){
				 			
				 %>
				 	<div class="col-sm-4 text-xs-center  wow fadeInUpBig">
					<div class="motsanphamchuan">
						<a href="<%=request.getContextPath()%>/chi-tiet-san-pham?id=<%=pro.getId()%>" class="duoi">
							<span class="onsale">Giảm giá</span>
							<span class="newnew">Mới</span>
							<span class="anh1sp"><img src="<%=request.getContextPath()%>/images/products/<%=pro.getImage()%>" alt=""></span>
							<h3><%=pro.getName()%></h3>
							<span class="cat"> <%=pro.getCategory_name()%></span>
							<div class="price"><%=pro.getMoney()+ " VNĐ"%></div>
						</a>
						<div class="tren">
							<a href=""> Thêm vào giỏ hàng <i class="fa fa-long-arrow-right"></i> </a>
						</div>
					</div>
				</div>
				 
				 <%}
				 	} %>
				 				
			</div>  <!-- HET ROW -->
			<div class="row text-xs-center">
				 
					
					<nav class="woocommerce-pagination">
						<ul>
							<li><a href="" class="page-numbers prev"> &#8592;</a></li>
							<li><a href="" class="page-numbers"> 1</a></li>
							<li><span class="page-numbers current">2</span></li>
							<li><a href="" class="page-numbers"> 3</a></li>
							<li><a href="" class="page-numbers"> 4</a></li>
							<li><a href="" class="page-numbers next"> &#8594;</a></li>
						</ul>
					</nav>
				 
			</div>
		</div><!--  HET CONTAINER -->
	</div> <!-- HET KHOISPSHOP -->



  <footer class="foot  wow fadeInUpBig">
  	<div class="container">
  		<div class="row">
  			<div class="col-sm-3 cot1">
  				<h3 class="tdfoot text-xs-center text-sm-left">Quick Link</h3>
  				<div class="row">
  					<div class="col-xs-6">
  						<ul>
  							<li><a href="">Home</a></li>
  							<li><a href="">About</a></li>
  							<li><a href="">contact</a></li>
  							<li><a href="">News</a></li>
  							<li><a href="">SHop</a></li>
  							<li><a href="">Account</a></li>
  						</ul>
  					</div>
  					<div class="col-xs-6">
  						<ul>
  							<li><a href="">Home</a></li>
  							<li><a href="">About</a></li>
  							<li><a href="">contact</a></li>
  							<li><a href="">News</a></li>
  							<li><a href="">SHop</a></li>
  							<li><a href="">Account</a></li>
  						</ul>
  					</div>
  				</div>
  			</div>
  			<div class="col-sm-4 push-sm-1 cot2">
  				<div class="logo text-xs-center">
  					<img src="<%=request.getContextPath()%>/templates/public/images/logofoot.png" alt="">
  				</div>
  				<div class="mangxh">
  					<ul>
  						<li><a href=""><i class="fa fa-facebook-f"></i></a></li>
  						<li><a href=""><i class="fa fa-twitter"></i></a></li>
  						<li><a href=""><i class="fa fa-google-plus"></i></a></li>
  						<li><a href=""><i class="fa fa-youtube"></i></a></li>
  					</ul>  					
  				</div>
  				<div class="thethanhtoan">
  					<ul>
  						<li><a href=""><i class="fa fa-cc-visa"></i></a></li>
  						<li><a href=""><i class="fa fa-cc-mastercard"></i></a></li>
  						<li><a href=""><i class="fa fa-cc-visa"></i></a></li>
  						<li><a href=""><i class="fa fa-cc-mastercard"></i></a></li>
  					</ul>
  				</div>
  				<div class="copyright">
  					Copyrights <i class="fa fa-copyright"></i> 2016 VOLTA. All Rights Reserved
  				</div>
  			</div>
  			<div class="col-sm-3 push-sm-1 cot3">
  				<div class="bando">
  					<h3 class="tdfoot text-xs-center text-sm-left">Location</h3>
  					<img src="<%=request.getContextPath()%>/templates/public/images/bd.png" alt="">
  					<p>1040,Angelsgarden,North Texas, <br>United States.</p>
  				</div>
  				
  			</div>
  		</div>
  	</div>
  </footer>
</body>
</html>