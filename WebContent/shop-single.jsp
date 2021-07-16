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
<body class="single">
		<div class="thanhcc text-xs-center text-sm-left wow bounceInDown">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<a href="cart.html" class="cctop">
							<i class="fa fa-sign-in"></i>
							Register
						</a>
						<a href="cart.html" class="cctop">
							 
							My Account
						</a>
						<a href="cart.html" class="cctop">
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
 	                <a class="nav-link" href="index.html">Trang chủ  </a>
 	              </li>
 	              <li class="nav-item">
 	                <a class="nav-link" href="shop.html">Shop </a>
 	                <ul>
 	                	<li><a href=""> Shop Men</a></li>
 	                	<li><a href=""> Shop Women</a></li>
 	                	<li><a href=""> Shop Accessories</a></li>
 	                </ul>
 	              </li>
 	              <li class="nav-item">
 	                <a class="nav-link" href="news.html">Tin tức</a>
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
			<h2>Tên sản phẩm chi tiết</h2>
			<nav class="breadcrumb">
				<a href="">Home </a> &nbsp; / &nbsp; <a href="">Shop</a>
			</nav>
		</div>
		
	</div> <!-- HET KHOI TIEU DE -->

	<div class="sanpham">
		<div class="container">
			<div class="row">
				<div class="images col-sm-6 wow fadeInLeftBig">
					<a href="" class="bigimage"> <img src="images/bigimage.png" alt=""></a>
					<div class="thumbnails">
						<a href="" class="anhnho"><img src="images/thumbnails1.png" alt=""></a>
						<a href="" class="anhnho"><img src="images/thumbnails2.png" alt=""></a>
						<a href="" class="anhnho"><img src="images/thumbnails3.png" alt=""></a>
						<a href="" class="anhnho"><img src="images/thumbnails4.png" alt=""></a>

					</div>
				</div> <!-- HET IMAGES TRAI -->
				<div class="summary col-sm-6 wow fadeInRightBig">
					<h1 class="product-title">Áo Hoody đen phối đỏ 	</h1>
					<p class="price">1800000 đ</p>
					<div class="description">Nesciunt dignissim officia viverra dictumst maecenas corrupti commodo wisi sunt ipsum penatibus primis rem nostrud lacinia ratione cubilia molestiae aspernatur, lacus ipsa officia. Minus? Mauris dolorum excepturi illum itaque rem dictumst neque faucibus nisi blanditiis. Commodi, quod malesuada accusantium</div>
					<div class="in-stock">Còn 15 sản phẩm trong kho</div>
					<form action="" class="cart">
						<div class="quantity">
							<span class="label"> QTY</span>
							<input type="button" class="minus" value="-">
							<input type="number" value="1" class="qty">
							<input type="button" class="plus" value="+">


							<button class="button btn btn-primary"> Thêm vào giỏ hàng <i class="fa fa-long-arrow-right"></i></button>
						</div>
						<div class="variation">
							<span class="label">Select Color</span>
							<img src="images/mau.png" alt="">
						</div>
					</form>


				</div> 		<!-- HET NOI DUNG CHI TIET SP -->
				<div class="tabspchitiet col-sm-12">
					<ul class="tabs">
						<li class="active"><a href="">Description </a></li>
						<li><a href="">Addition Info</a></li>
						<li><a href="">Review (5)</a></li>
					</ul>

					<ul class="noidungtabsp">
						<li><div id="description" class="tabsanpham active">
							Odio ipsum, cumque explicabo, mollitia eaque dolorum metus fugit ante delectus excepteur, magna, hic litora, nihil, cupiditate mi cupidatat volutpat convallis vel blanditiis quo. Tenetur, distinctio dictumst? Ipsam? Deserunt. Augue montes nonummy rem illum quis corporis, imperdiet voluptatem odit tellus, dictumst eligendi. Iaculis maecenas. Ipsa egestas integer quidem veritatis ipsam vehicula veniam? Fermentum ipsum error, aliqua, sociectus excepteur, magna, hic litora, nihil, cupiditate mi cupidatat volutpat convallis vel blanditiis quo. Tenetur, distinctio dictumst? Ipsam? Deserunt. Augue montes nonummy rem illum quis corporis, imperdiet voluptatem odit tellus, dictumst eligendi. Iaculis maecenas. Ipsa egestas integer quidem veritatis ipsam vehicula veniam? Fermentum ipsum error, aliqua, sociectus excepteur, magna, hic litora, nihil, cupiditate mi cupidatat volutpat convallis vel blanditiis quo. Tenetur, distinctio dictumst? Ipsam? Deserunt. Augue montes nonummy rem illum quis corporis, imperdiet voluptatem odit tellus, dictumst eligendi. Iaculis maecenas. Ipsa egestas integer quidem veritatis ipsam vehicula veniam? Fermentum ipsum error, aliqua, sociectus excepteur, magna, hic litora, nihil, cupiditate mi cupidatat volutpat convallis vel blanditiis quo. Tenetur, distinctio dictumst? Ipsam? Deserunt. Augue montes nonummy rem illum quis corporis, imperdiet voluptatem odit tellus, dictumst eligendi. Iaculis maecenas. Ipsa egestas integer quidem veritatis ipsam vehicula veniam? Fermentum ipsum error, aliqua, sociosqu senectus mattis exercitationem, class fugiat, sollicitudin habitant curabitur consectetuer quis hendrerit, dignissim dolorem ducimus soluta. Ornare, eleifend animi occaecati accumsan aenean, occaecat veritatis incidunt hic scelerisque dolorum! Sunt sodales potenti mauris, provident natoque animi potenti laudantium sit cursus expedita, ante ut cumque deserunt.
						</div></li>

						<li><div id="additioninfo" class="tabsanpham">
							Odio ipsum, cumque explicabo, mollitia eaque dolorum metus fugit ante delectus excepteur, magna, hic litora, nihil, cupiditate mi cupidatat volutpat convallis vel blanditiis quo. Tenetur, distinctio dictumst? Ipsam? Deserunt. Augue montes nonummy rem illum quis corporis, imperdiet voluptatem odit tellus, dictumst eligendi. Iaculis maecenas. Ipsa egestas integer quidem veritatis ipsam vehicula veniam? Fermentum ipsum error, aliqua, sociosqu senectus mattis exercitationem, class fugiat, sollicitudin habitant curabitur consectetuer quis hendrerit, dignissim dolorem ducimus soluta. Ornare, eleifend animi occaecati accumsan aenean, occaecat veritatis incidunt hic scelerisque dolorum! Sunt sodales potenti mauris, provident natoque animi potenti laudantium sit cursus expedita, ante ut cumque deserunt.
						</div></li>

						<li><div id="additioninfo" class="tabsanpham">
							Odio ipsum, cumque explicabo, mollitia eaque dolorum metus fugit ante delectus excepteur, magna, hic litora, nihil, cupiditate mi cupidatat volutpat convallis vel blanditiis quo. Tenetur, distinctio dictumst? Ipsam? Deserunt. Augue montes nonummy rem illum quis corporis, imperdiet voluptatem odit tellus, dictumst eligendi. Iaculis maecenas. Ipsa egestas integer quidem veritatis ipsam vehicula veniam? Fermentum ipsum error, aliqua, sociosqu senectus mattis exercitationem, class fugiat, sollicitudin habitant curabitur consectetuer quis hendrerit, dignissim dolorem ducimus soluta. Ornare, eleifend animi occaecati accumsan aenean, occaecat veritatis incidunt hic scelerisque dolorum! Sunt sodales potenti mauris, provident natoque animi potenti laudantium sit cursus expedita, ante ut cumque deserunt.
						</div></li>


					</ul>

				</div>
				<div class="related-products col-sm-12 mt-100">
					<div class="row">
						<div class="col-sm-8 push-sm-2 text-xs-center wow fadeInDownBig">
			 				<h2 class="kieuchuto">RELATED PRODUCTS</h2>
			 				 
			 			</div>
					</div>
					<div class="row">
						 <div class="col-sm-4 text-xs-center  wow fadeInUpBig">
							<div class="motsanphamchuan">
								<a href="cart.html" class="cctop">
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
								<a href="cart.html" class="cctop">
									<span class="onsale">Sale</span>
									<span class="newnew">New</span>
									<span class="anh1sp"><img src="images/motsp.jpg" alt=""></span>
									<h3> Hoody Tshirt</h3>
									<span class="cat"> Áo Khoác</span>
									<div class="price">$65</div>
								</a>
								<div class="tren ofs">
 										<a href=""> Tạm hết hàng <i class="fa fa-long-arrow-right"></i> </a>
 									</div>
							</div>
						 </div>

						 <div class="col-sm-4 text-xs-center  wow fadeInUpBig">
							<div class="motsanphamchuan">
								<a href="cart.html" class="cctop">
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

						 
					</div>
				</div>

			</div> <!-- HET ROW -->
		</div>	<!-- HET CONTAINER -->
	</div>  <!-- HET KHOI SAN PHAM  -->







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