<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head>
	<title> Giỏ hàng - web bán hàng  </title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">  
	<script type="text/javascript" src="vendor/bootstrap.js"></script>
 	<script type="text/javascript" src="1.js"></script>
	<link rel="stylesheet" href="vendor/bootstrap.css">
	<link rel="stylesheet" href="vendor/font-awesome.css">
 	<link rel="stylesheet" href="1.css">
</head>
<body class="cart-page">
		<div class="thanhcc text-xs-center text-sm-left wow bounceInDown">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<a href="cart.jsp" class="cctop">
							<i class="fa fa-sign-in"></i>
							Register
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
 	              <li class="nav-item ">
 	                <a class="nav-link" href="index.jsp">Trang chủ  </a>
 	              </li>
 	              <li class="nav-item active">
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
			<h2>Giỏ hàng</h2>
			<nav class="breadcrumb">
				<a href="">Home </a> &nbsp; / &nbsp; <a href="">Tin tức</a>
			</nav>
		</div>
		
	</div> <!-- HET KHOI TIEU DE -->
 
	<div class="giohangchitiet">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h1> Tóm tắt giỏ hàng</h1>
				</div>
				<div class="col-sm-12 ">

					<table  class="shop_table table  table-hover  ">
						<thead>
							<tr>
								<th class="product-thumbnail"> Image</th>
								<th class="product-name"> Products</th>
								<th class="product-price"> Price</th>
								<th class="product-quantity"> Quantity</th>
								<th class="product-subtotal"> Total</th>
								<th class="product-remove"> Remove</th>
							</tr>
						</thead>
						<tbody>
							<tr class="cart_item">
								<td class="product-thumbnail"><img src="images/thumbnails1.png" alt=""></td>
								<td class="product-name">Quần Levis</td>
								<td class="product-price">90.000 đ</td>
								<td class="product-quantity">
									<div class="quantity">										
										<input type="button" class="minus" value="-">
										<input type="number" value="1" class="qty">
										<input type="button" class="plus" value="+"> 
									</div>

								</td>
								<td class="product-subtotal">180.000 đ</td>
								<td class="product-remove"><i class="fa fa-times"></i></td>

							</tr>

							<tr class="cart_item">
								<td class="product-thumbnail"><img src="images/thumbnails2.png" alt=""></td>
								<td class="product-name">Quần Levis</td>
								<td class="product-price">90.000 đ</td>
								<td class="product-quantity">
									<div class="quantity">										
										<input type="button" class="minus" value="-">
										<input type="number" value="1" class="qty">
										<input type="button" class="plus" value="+"> 
									</div>

								</td>
								<td class="product-subtotal">180.000 đ</td>
								<td class="product-remove"><i class="fa fa-times"></i></td>

							</tr>
							<tr class="cart_item">
								<td class="product-thumbnail"><img src="images/thumbnails3.png" alt=""></td>
								<td class="product-name">Quần Levis</td>
								<td class="product-price">90.000 đ</td>
								<td class="product-quantity">
									<div class="quantity">										
										<input type="button" class="minus" value="-">
										<input type="number" value="1" class="qty">
										<input type="button" class="plus" value="+"> 
									</div>

								</td>
								<td class="product-subtotal">180.000 đ</td>
								<td class="product-remove"><i class="fa fa-times"></i></td>

							</tr>
	<tr class="cart_item">
								<td class="product-thumbnail"><img src="images/thumbnails2.png" alt=""></td>
								<td class="product-name">Quần Levis</td>
								<td class="product-price">90.000 đ</td>
								<td class="product-quantity">
									<div class="quantity">										
										<input type="button" class="minus" value="-">
										<input type="number" value="1" class="qty">
										<input type="button" class="plus" value="+"> 
									</div>

								</td>
								<td class="product-subtotal">180.000 đ</td>
								<td class="product-remove"><i class="fa fa-times"></i></td>

							</tr>
							<tr class="cart_item">
								<td class="product-thumbnail"><img src="images/thumbnails3.png" alt=""></td>
								<td class="product-name">Quần Levis</td>
								<td class="product-price">90.000 đ</td>
								<td class="product-quantity">
									<div class="quantity">										
										<input type="button" class="minus" value="-">
										<input type="number" value="1" class="qty">
										<input type="button" class="plus" value="+"> 
									</div>

								</td>
								<td class="product-subtotal">180.000 đ</td>
								<td class="product-remove"><i class="fa fa-times"></i></td>

							</tr>
	<tr class="cart_item">
								<td class="product-thumbnail"><img src="images/thumbnails2.png" alt=""></td>
								<td class="product-name">Quần Levis</td>
								<td class="product-price">90.000 đ</td>
								<td class="product-quantity">
									<div class="quantity">										
										<input type="button" class="minus" value="-">
										<input type="number" value="1" class="qty">
										<input type="button" class="plus" value="+"> 
									</div>

								</td>
								<td class="product-subtotal">180.000 đ</td>
								<td class="product-remove"><i class="fa fa-times"></i></td>

							</tr>
							<tr class="cart_item">
								<td class="product-thumbnail"><img src="images/thumbnails3.png" alt=""></td>
								<td class="product-name">Quần Levis</td>
								<td class="product-price">90.000 đ</td>
								<td class="product-quantity">
									<div class="quantity">										
										<input type="button" class="minus" value="-">
										<input type="number" value="1" class="qty">
										<input type="button" class="plus" value="+"> 
									</div>

								</td>
								<td class="product-subtotal">180.000 đ</td>
								<td class="product-remove"><i class="fa fa-times"></i></td>

							</tr>
	<tr class="cart_item">
								<td class="product-thumbnail"><img src="images/thumbnails2.png" alt=""></td>
								<td class="product-name">Quần Levis</td>
								<td class="product-price">90.000 đ</td>
								<td class="product-quantity">
									<div class="quantity">										
										<input type="button" class="minus" value="-">
										<input type="number" value="1" class="qty">
										<input type="button" class="plus" value="+"> 
									</div>

								</td>
								<td class="product-subtotal">180.000 đ</td>
								<td class="product-remove"><i class="fa fa-times"></i></td>

							</tr>
							<tr class="cart_item">
								<td class="product-thumbnail"><img src="images/thumbnails3.png" alt=""></td>
								<td class="product-name">Quần Levis</td>
								<td class="product-price">90.000 đ</td>
								<td class="product-quantity">
									<div class="quantity">										
										<input type="button" class="minus" value="-">
										<input type="number" value="1" class="qty">
										<input type="button" class="plus" value="+"> 
									</div>

								</td>
								<td class="product-subtotal">180.000 đ</td>
								<td class="product-remove"><i class="fa fa-times"></i></td>

							</tr>


						</tbody>
					</table>  <!-- HET SHOP TABLE -->

					<div class="actions">
						<div class="row">
							<div class="col-sm-2">
								<input type="submit" class="update_cart" value="UPDATE CART &#8594;">

							</div>
							<div class="col-sm-3">
								<a href="" class="nutslide btn btn-outline-secondary"> Continue shopping <i class="fa fa-long-arrow-right"></i> </a>
							</div>
							<div class="col-sm-7">
								<div class="cpc">
									<span class="label">COUPON CODE</span>
									<input type="text" class="couponcode" placeholder="Enter you coupon code">
									<input type="submit" class="apply_coupon" value="Apply Coupon">
								</div>
							</div>
						</div>
					</div> <!-- HET ACTION -->
					<div class="cart_total">
						<div class="container">
							<div class="row">
								<div class="col-sm-5 push-sm-7">
									<h2>Tổng tiền</h2>
									 
									<table class="table shop_table ">
										
										<tbody>
											<tr class="cart-subtotal">
												<th> Subtotal</th>
												<td> 205.000 đ</td>	
											</tr>
											<tr class="shipping">
												<th> Shipping </th>
												<td> 
													<ul class="shipping_method">
														<li>
															<input type="radio" class="shipping_method">
															<label for=""> Giao hàng COD</label>
														</li>

														<li>
															<input type="radio" class="shipping_method">
															<label for=""> Miễn phí </label>
														</li>

													</ul>		
												</td>
											</tr>
											<tr class="order-total">
												<th> Total </th>
												<th> 205.000 đ</th>
											</tr>
										

										</tbody>
									</table>
									<div class="thanhtoan">
										<a href="checkout.jsp" class="checkout-button"> Thanh toán <i class="fa fa-long-arrow-right"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>   <!-- HET CART_TOTAL -->
				</div>
			</div>
		</div>
	</div>  <!-- HET GIO HANG CHI TIET -->


<%@include file="inc/footer.jsp" %>