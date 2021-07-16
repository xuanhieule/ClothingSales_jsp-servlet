<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head>
	<title> Trang chủ - web bán hàng  </title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">  
	<script type="text/javascript" src="vendor/bootstrap.js"></script>
 	<script type="text/javascript" src="1.js"></script>
	<link rel="stylesheet" href="vendor/bootstrap.css">
	<link rel="stylesheet" href="vendor/font-awesome.css">
 	<link rel="stylesheet" href="1.css">
</head>
<body >
			<div class="thanhcc text-xs-center text-sm-left wow bounceInDown">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<a href="cart.jsp" class="cctop">
							<i class="fa fa-sign-in"></i>
							Đăng ký
						</a>
						<a href="cart.jsp" class="cctop">
							 
							My Account
						</a>
						<a href="cart.jsp" class="cctop">
							<i class="fa fa-shopping-cart"></i>
							5 items
						</a>
						

					</div>
					<div class="col-sm-6 ">
						<div class="float-sm-right text-xs-center text-sm-left">
							<input type="text" class="form-control tim" placeholder="Tìm kiếm">
						</div>  
					</div>
				</div>
			</div>
		</div>  <!-- HẾT THANH CÔNG CỤ -->

		<div class="menutop wow bounceInUp">
 	        <nav class="navbar navbar-light ">
 	          <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar2">
 	           
 	          </button>
 	          <div class="collapse navbar-toggleable-md" id="exCollapsingNavbar2">
 	            <a class="navbar-brand" href="#"><img src="images/logo.png" alt="LOGO Project 1"></a>
 	            <ul class="nav navbar-nav">
 	              <li class="nav-item active">
 	                <a class="nav-link" href="index.jsp">Trang chủ  </a>
 	              </li>
 	              <li class="nav-item">
 	                <a class="nav-link" href="shop.jsp">Shop </a>
 	                <ul>
 	                	<li><a href=""> Shop Men</a></li>
 	                	<li><a href=""> Shop Women</a></li>
 	                	<li><a href=""> Shop Accessories</a></li>
 	                </ul>
 	              </li>
 	              <li class="nav-item">
 	                <a class="nav-link" href="news.jsp">Tin tức</a>
 	                <ul>
 	                	<li><a href=""> Shop Men</a></li>
 	                	<li><a href=""> Shop Women</a></li>
 	                	<li><a href=""> Shop Accessories</a></li>
 	                </ul>

 	              </li>
 	              <li class="nav-item">
 	                <a class="nav-link" href="#">Liên hệ</a>
 	                 <ul>
 	                	<li><a href=""> Shop Men</a></li>
 	                	<li><a href=""> Shop Women</a></li>
 	                	<li><a href=""> Shop Accessories</a></li>
 	                </ul>
 	              </li>
 	            </ul>
 	          </div>
 	        </nav>
 	     </div>   <!-- END MENUTOP -->

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
				 <div class="col-sm-4 text-xs-center  wow fadeInUpBig">
					<div class="motsanphamchuan">
						<a href="shop-single.jsp" class="duoi">
							<span class="onsale">Sale</span>
							<span class="newnew">New</span>
							<span class="anh1sp"><img src="images/01.jpeg" alt=""></span>
							<h3> Hoody Tshirt</h3>
							<span class="cat"> Áo Khoác</span>
							<div class="price">$65</div>
						</a>
						<div class="tren">
							<a href=""> Thêm vào giỏ hàng <i class="fa fa-long-arrow-right"></i> </a>
						</div>
					</div>
				</div>

				 <div class="col-sm-4 text-xs-center  wow fadeInUpBig">
					<div class="motsanphamchuan">
						<a href="shop-single.jsp" class="duoi">
							<span class="onsale">Sale</span>
							<span class="newnew">New</span>
							<span class="anh1sp"><img src="images/46.jpg" alt=""></span>
							<h3> Hoody Tshirt</h3>
							<span class="cat"> Áo Khoác</span>
							<div class="price">$65</div>
						</a>
						<div class="tren">
							<a href=""> Thêm vào giỏ hàng <i class="fa fa-long-arrow-right"></i> </a>
						</div>
					</div>
				</div>

				 <div class="col-sm-4 text-xs-center  wow fadeInUpBig">
					<div class="motsanphamchuan">
						<a href="shop-single.jsp" class="duoi">
							<span class="onsale">Sale</span>
							<span class="newnew">New</span>
							<span class="anh1sp"><img src="images/motsp.jpg" alt=""></span>
							<h3> Hoody Tshirt</h3>
							<span class="cat"> Áo Khoác</span>
							<div class="price">$65</div>
						</a>
						<div class="tren">
							<a href=""> Thêm vào giỏ hàng <i class="fa fa-long-arrow-right"></i> </a>
						</div>
					</div>
				</div>

				 <div class="col-sm-4 text-xs-center  wow fadeInUpBig">
					<div class="motsanphamchuan">
						<a href="shop-single.jsp" class="duoi">
							<span class="onsale">Sale</span>
							<span class="newnew">New</span>
							<span class="anh1sp"><img src="images/motsp.jpg" alt=""></span>
							<h3> Hoody Tshirt</h3>
							<span class="cat"> Áo Khoác</span>
							<div class="price">$65</div>
						</a>
						<div class="tren">
							<a href=""> Thêm vào giỏ hàng <i class="fa fa-long-arrow-right"></i> </a>
						</div>
					</div>
				</div>

				 <div class="col-sm-4 text-xs-center">
					<div class="motsanphamchuan">
						<a href="shop-single.jsp" class="duoi">
							<span class="onsale">Sale</span>
							<span class="newnew">New</span>
							<span class="anh1sp"><img src="images/motsp.jpg" alt=""></span>
							<h3> Hoody Tshirt</h3>
							<span class="cat"> Áo Khoác</span>
							<div class="price">$65</div>
						</a>
						<div class="tren">
							<a href=""> Thêm vào giỏ hàng <i class="fa fa-long-arrow-right"></i> </a>
						</div>
					</div>
				</div>

				 <div class="col-sm-4 text-xs-center">
					<div class="motsanphamchuan">
						<a href="shop-single.jsp" class="duoi">
							<span class="onsale">Sale</span>
							<span class="newnew">New</span>
							<span class="anh1sp"><img src="images/motsp.jpg" alt=""></span>
							<h3> Hoody Tshirt</h3>
							<span class="cat"> Áo Khoác</span>
							<div class="price">$65</div>
						</a>
						<div class="tren">
							<a href=""> Thêm vào giỏ hàng <i class="fa fa-long-arrow-right"></i> </a>
						</div>
					</div>
				</div>

				 <div class="col-sm-4 text-xs-center">
					<div class="motsanphamchuan">
						<a href="shop-single.jsp" class="duoi">
							<span class="onsale">Sale</span>
							<span class="newnew">New</span>
							<span class="anh1sp"><img src="images/motsp.jpg" alt=""></span>
							<h3> Hoody Tshirt</h3>
							<span class="cat"> Áo Khoác</span>
							<div class="price">$65</div>
						</a>
						<div class="tren">
							<a href=""> Thêm vào giỏ hàng <i class="fa fa-long-arrow-right"></i> </a>
						</div>
					</div>
				</div>

				 <div class="col-sm-4 text-xs-center">
					<div class="motsanphamchuan">
						<a href="shop-single.jsp" class="duoi">
							<span class="onsale">Sale</span>
							<span class="newnew">New</span>
							<span class="anh1sp"><img src="images/motsp.jpg" alt=""></span>
							<h3> Hoody Tshirt</h3>
							<span class="cat"> Áo Khoác</span>
							<div class="price">$65</div>
						</a>
						<div class="tren">
							<a href=""> Thêm vào giỏ hàng <i class="fa fa-long-arrow-right"></i> </a>
						</div>
					</div>
				</div>

				 <div class="col-sm-4 text-xs-center">
					<div class="motsanphamchuan">
						<a href="shop-single.jsp" class="duoi">
							<span class="onsale">Sale</span>
							<span class="newnew">New</span>
							<span class="anh1sp"><img src="images/motsp.jpg" alt=""></span>
							<h3> Hoody Tshirt</h3>
							<span class="cat"> Áo Khoác</span>
							<div class="price">$65</div>
						</a>
						<div class="tren">
							<a href=""> Thêm vào giỏ hàng <i class="fa fa-long-arrow-right"></i> </a>
						</div>
					</div>
				</div>

				
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
  					<img src="images/logofoot.png" alt="">
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
  					<img src="images/bd.png" alt="">
  					<p>1040,Angelsgarden,North Texas, <br>United States.</p>
  				</div>
  				
  			</div>
  		</div>
  	</div>
  </footer>
</body>
</html>