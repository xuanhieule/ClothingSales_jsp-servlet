<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.Products"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp"%>
<body class="single">
	<%@include file="/templates/public/inc/taskbar.jsp"%>
	<%@include file="/templates/public/inc/menu.jsp"%>
	<div class="ktieude text-xs-center">
		<div class="ktieudetrong">
			<h2>Tên sản phẩm chi tiết</h2>
			<nav class="breadcrumb">
				<a href="">Home </a> &nbsp; / &nbsp; <a href="">Shop</a>
			</nav>
		</div>

	</div>
	<!-- HET KHOI TIEU DE -->

	<div class="sanpham">
		<div class="container">
			<div class="row">
				<%
				if (request.getAttribute("infor") != null) {
					Products pro = (Products) request.getAttribute("infor");
				%>
				<div class="images col-sm-6 wow fadeInLeftBig">
					<a href="" class="bigimage"> <img
						src="<%=request.getContextPath()%>/images/products/<%=pro.getImage() %>"
						alt=""></a>
				</div>
				<!-- HET IMAGES TRAI -->
				<div class="summary col-sm-6 wow fadeInRightBig">
					<h1 class="product-title"><%=pro.getName() %></h1>
					<p class="price"><%=pro.getPrice() %>VNĐ</p>
					<form action="<%=request.getContextPath()%>/gio-hang" class="cart" method="post">
					<input name="id" value=<%=pro.getId()%> type="hidden">
						<div class="quantity">
							<span class="label"> QTY</span> <input type="button"
								class="minus" value="-"> <input name="qty" type="number" value="1"
								class="qty"> <input type="button" class="plus" value="+">
							<div>
								<br/>
								<p><b>QUY ĐỊNH MUA HÀNG</b></p>
									<small>
										- Chỉ đổi hàng 1 lần duy nhất, mong bạn cân nhắc kĩ trước khi quyết định.<br/>
										- Thời hạn đổi sản phẩm khi mua trực tiếp tại cửa hàng là 07 ngày, kể từ ngày mua. Đổi sản phẩm khi mua online là 14 ngày, kể từ ngày nhận hàng.<br/>
										- Sản phẩm đổi phải kèm hóa đơn. Bắt buộc phải còn nguyên tem, hộp, nhãn mác.<br/>
										- Sản phẩm đổi không có dấu hiệu đã qua sử dụng, không giặt tẩy, bám bẩn, biến dạng.<br/>
										- Chúng tôi chỉ ưu tiên hỗ trợ đổi size. Trong trường hợp sản phẩm hết size cần đổi, bạn có thể đổi sang 01 sản phẩm khác:<br/>
											+ Nếu sản phẩm muốn đổi ngang giá trị hoặc có giá trị cao hơn, bạn sẽ cần bù khoảng chênh lệch tại thời điểm đổi (nếu có).<br/>
										 	+ Nếu bạn mong muốn đổi sản phẩm có giá trị thấp hơn, chúng tôi sẽ không hoàn lại tiền.<br/>
										-Trong trường hợp sản phẩm - size bạn muốn đổi không còn hàng trong hệ thống. Vui lòng chọn sản phẩm khác.<br/>
										-Không hoàn trả bằng tiền mặt dù bất cứ trong trường hợp nào. Mong bạn thông cảm.<br/>
									</small>
									</div>

							<button type="submit" class="button btn btn-primary">
								Thêm vào giỏ hàng <i class="fa fa-long-arrow-right"></i>
							</button>
						</div>
					</form>


				</div>
				<!-- HET NOI DUNG CHI TIET SP -->
				

				<div class="tabspchitiet col-sm-12">
					<ul class="tabs">
						<li class="active"><a href="">Description </a></li>
						<li><a href="">Addition Info</a></li>
						<li><a href="">Review (5)</a></li>
					</ul>

					<ul class="noidungtabsp">
						<li><div id="description" class="tabsanpham active">
								<%=pro.getContent()%></div></li>

						<li><div id="additioninfo" class="tabsanpham">Odio
								ipsum, cumque explicabo, mollitia eaque dolorum metus fugit ante
								delectus excepteur, magna, hic litora, nihil, cupiditate mi
								cupidatat volutpat convallis vel blanditiis quo. Tenetur,
								distinctio dictumst? Ipsam? Deserunt. Augue montes nonummy rem
								illum quis corporis, imperdiet voluptatem odit tellus, dictumst
								eligendi. Iaculis maecenas. Ipsa egestas integer quidem
								veritatis ipsam vehicula veniam? Fermentum ipsum error, aliqua,
								sociosqu senectus mattis exercitationem, class fugiat,
								sollicitudin habitant curabitur consectetuer quis hendrerit,
								dignissim dolorem ducimus soluta. Ornare, eleifend animi
								occaecati accumsan aenean, occaecat veritatis incidunt hic
								scelerisque dolorum! Sunt sodales potenti mauris, provident
								natoque animi potenti laudantium sit cursus expedita, ante ut
								cumque deserunt.</div></li>

						<li><div id="additioninfo" class="tabsanpham">Odio
								ipsum, cumque explicabo, mollitia eaque dolorum metus fugit ante
								delectus excepteur, magna, hic litora, nihil, cupiditate mi
								cupidatat volutpat convallis vel blanditiis quo. Tenetur,
								distinctio dictumst? Ipsam? Deserunt. Augue montes nonummy rem
								illum quis corporis, imperdiet voluptatem odit tellus, dictumst
								eligendi. Iaculis maecenas. Ipsa egestas integer quidem
								veritatis ipsam vehicula veniam? Fermentum ipsum error, aliqua,
								sociosqu senectus mattis exercitationem, class fugiat,
								sollicitudin habitant curabitur consectetuer quis hendrerit,
								dignissim dolorem ducimus soluta. Ornare, eleifend animi
								occaecati accumsan aenean, occaecat veritatis incidunt hic
								scelerisque dolorum! Sunt sodales potenti mauris, provident
								natoque animi potenti laudantium sit cursus expedita, ante ut
								cumque deserunt.</div></li>


					</ul>
				<%
				}
				%>
				</div>
				<div class="related-products col-sm-12 mt-100">
					<div class="row">
						<div class="col-sm-8 push-sm-2 text-xs-center wow fadeInDownBig">
							<h2 class="kieuchuto">SẢN PHẨM VỪA XEM</h2>

						</div>
					</div>
					<div class="row">
					<%
						if(session.getAttribute("listRecent")!=null){ 
							ArrayList<Products> listRecent = (ArrayList<Products>) session.getAttribute("listRecent");
							int count=1;
							for(int i = listRecent.size()-1 ; i >=0  ; i--){
								if(count >3) break;
								Products product = listRecent.get(i);
								count++;
					%>
						<div class="col-sm-4 text-xs-center  wow fadeInUpBig">
							<div class="motsanphamchuan">
								<a href="cart.html" class="cctop"> <span class="onsale">Giảm giá</span>
									<span class="newnew">Mới</span> <span class="anh1sp"><img
										src="<%=request.getContextPath()%>/images/products/<%=product.getImage()%>"
										alt=""></span>
									<h3><%=product.getName()%></h3>
									<div class="price"><%=product.getPrice()%></div>
								</a>
								<div class="tren">
									<a href=""> Thêm vào giỏ hàng <i
										class="fa fa-long-arrow-right"></i>
									</a>
								</div>
							</div>
						</div>
					<%		
							}}
					%>
					</div>
				</div>

			</div>
			<!-- HET ROW -->
		</div>
		<!-- HET CONTAINER -->
	</div>
	<!-- HET KHOI SAN PHAM  -->







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
						<img
							src="<%=request.getContextPath()%>/templates/public/images/logofoot.png"
							alt="">
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
						Copyrights <i class="fa fa-copyright"></i> 2016 VOLTA. All Rights
						Reserved
					</div>
				</div>
				<div class="col-sm-3 push-sm-1 cot3">
					<div class="bando">
						<h3 class="tdfoot text-xs-center text-sm-left">Location</h3>
						<img
							src="<%=request.getContextPath()%>/templates/public/images/bd.png"
							alt="">
						<p>
							1040,Angelsgarden,North Texas, <br>United States.
						</p>
					</div>

				</div>
			</div>
		</div>
	</footer>
</body>
</html>