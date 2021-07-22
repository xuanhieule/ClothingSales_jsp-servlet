<%@page import="model.bean.Products"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp" %>
<body class="cart-page">
		<%@include file="/templates/public/inc/taskbar.jsp" %>

		<%@include file="/templates/public/inc/menu.jsp" %>

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
							<%if(session.getAttribute("listCart")!=null){
								ArrayList<Products> listCart = (ArrayList<Products>) session.getAttribute("listCart");
								for(Products pro : listCart){
									
							%>
							<tr class="cart_item">
								<td class="product-thumbnail"><img src="<%=request.getContextPath()%>/images/products/<%=pro.getImage()%>" alt=""></td>
								<td class="product-name"><%=pro.getName()%></td>
								<td class="product-price"><%=pro.getMoney()+ " VNĐ"%></td>
								<td class="product-quantity">
									<div class="quantity">										
										<a href="<%=request.getContextPath()%>/giam-gio-hang?id=<%=pro.getId()%>"><input type="button" class="plus" value="-"></a> 
										<input type="number" value="<%=pro.getQty()%>" class="qty">
										<a href="<%=request.getContextPath()%>/tang-gio-hang?id=<%=pro.getId()%>"><input type="button" class="plus" value="+"></a> 
									</div>

								</td>
								<td class="product-subtotal"><%=pro.getTotalNVD()%></td>
								<td class="product-remove""><a href="<%=request.getContextPath()%>/xoa-gio-hang?id=<%=pro.getId()%>"><i class="fa fa-times"></i></a></td>

							</tr>
							<%}} %>
						</tbody>
					</table>  <!-- HET SHOP TABLE -->

					<div class="actions">
						<div class="row">
							<div class="col-sm-2">
								<a href="<%=request.getContextPath()%>/trang-chu" class="update_cart">Tiếp tục mua sắm &#8594;</a>

							</div>
							<div class="col-sm-3">
								
							</div>
							<div class="col-sm-7">
								<div class="cpc">
									<span class="label">Mã giảm giá</span>
									<input type="text" class="couponcode" placeholder="Nhập mã giảm giá">
									<input type="submit" class="apply_coupon" value="Đồng ý">
								</div>
							</div>
						</div>
					</div> <!-- HET ACTION -->
					<div class="cart_total">
						<div class="container">
							<div class="row">
								<div class="col-sm-5 push-sm-7">
									<h2>Tổng</h2>
									 
									<table class="table shop_table ">
										
										<tbody>
											<tr class="cart-subtotal">
												<th> Tổng tiền sản phẩm</th>
												<td> <%=session.getAttribute("total")%> VNĐ</td>	
											</tr>
											<tr class="shipping">
												<th> Phí vận chuyển </th>
												<td> 
													<ul class="shipping_method">
														<li>
															<label> <%=session.getAttribute("ship")%> </label> <br/>
															<small>Hóa đơn trên 300k sẽ được miễn phí phí vận chuyển</small>
														</li>

													</ul>		
												</td>
											</tr>
											<tr class="order-total">
												<th> Tổng tiền thanh toán </th>
												<th> <%
												if(session.getAttribute("total")!=null)
													out.print(session.getAttribute("total")+" VNĐ");
												%></th>
											</tr>
										

										</tbody>
									</table>
									<div class="thanhtoan">
										<a href="<%=request.getContextPath()%>/thanh-toan" class="checkout-button"> Thanh toán <i class="fa fa-long-arrow-right"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>   <!-- HET CART_TOTAL -->
				</div>
			</div>
		</div>
	</div>  <!-- HET GIO HANG CHI TIET -->	

<%@include file="/templates/public/inc/footer.jsp" %>