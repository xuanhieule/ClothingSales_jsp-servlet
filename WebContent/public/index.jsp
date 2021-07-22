<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp" %>
<body class="home">
		<%@include file="/templates/public/inc/taskbar.jsp" %>

		<%@include file="/templates/public/inc/menu.jsp" %>

 <div class="slidehome wow fadeIn">
 			<div id="slidetrangchu" class="carousel slide" data-ride="carousel" data-interval="0">
 				<ol class="carousel-indicators">
 					<li data-target="#slidetrangchu" data-slide-to="0" class="active"></li>
 					<li data-target="#slidetrangchu" data-slide-to="1"></li>
 					<li data-target="#slidetrangchu" data-slide-to="2"></li>
 				</ol>
 				<div class="carousel-inner" role="listbox">
 					<div class="carousel-item active">
 						<div class="motslide container">
 							<img src="<%=request.getContextPath()%>/templates/public/images/01.png" alt="" class="anhsl img-fluid" >
 							<div class="container2">
 								<div class="row"> 									
 									<div class="col-sm-7 push-sm-5">
 										<h2>Bộ sưu tập công sở</h2>
 										<div class="desc">Giảm giá sốc 20% tặng kèm thêm nhiều quà tặng, khi mua 3 sản phẩm, </div>
 										<a href="" class="nutslide btn btn-outline-secondary"> Mua ngay <i class="fa fa-long-arrow-right"></i> </a>
 									</div>
 								</div>
 							</div>
 						</div> <!-- het motslide -->

 					</div>
 					 <div class="carousel-item ">
 						<div class="motslide container">
 							<img src="<%=request.getContextPath()%>/templates/public/images/02.png" alt="" class="anhsl img-fluid">
 							<div class="container2">
 								<div class="row"> 									
 									<div class="col-sm-7 push-sm-5">
 										<h2>Hè này mặc gì???</h2>
 										<div class="desc">Giảm giá 30% bộ sưu tập hè siêu cá tính dành cho các nàng.</div>
 										<a href="" class="nutslide btn btn-outline-secondary"> Mua ngay <i class="fa fa-long-arrow-right"></i> </a>
 									</div>
 								</div>
 							</div>
 						</div> <!-- het motslide -->

 					</div>
 					 <div class="carousel-item ">
 						<div class="motslide container">
 							<img src="<%=request.getContextPath()%>/templates/public/images/03.png" alt="" class="anhsl img-fluid">
 							<div class="container2">
 								<div class="row"> 									
 									<div class="col-sm-7 push-sm-5">
 										<h2>Đẹp trai mặc gì??</h2>
 										<div class="desc">Giảm 15% một số sản phẩm dành cho các chàng</div>
 										<a href="" class="nutslide btn btn-outline-secondary"> Mua ngay<i class="fa fa-long-arrow-right"></i> </a>
 									</div>
 								</div>
 							</div>
 						</div> <!-- het motslide -->

 					</div>
 					  
 				</div>
 				<a class="left carousel-control" href="#slidetrangchu" role="button" data-slide="prev">
 				 	
 					<span class="sr-only">Previous</span>
 				</a>
 				<a class="right carousel-control" href="#slidetrangchu" role="button" data-slide="next">
 					 
 					<span class="sr-only">Next</span>
 				</a>
 			</div>
 </div>  <!-- HET SLIDEHOME -->

 <div class="spnoibat">
 	<div class="container">
 		<div class="row">
 			<div class="col-sm-8 push-sm-2 text-xs-center wow fadeInDownBig">
 				<h2 class="kieuchuto">Danh mục sản phẩm</h2>
 				<p class="mota">Mang đến cho bạn những trải nghiệm tuyệt vời nhất.</p>
 			</div>
 		</div>
 		<div class="row gutter10">
 			<div class="col-sm-6">
 				<a href="" class="kngan wow fadeInDownBig">
 					<h4>Bộ sưu tập nam</h4>
 					<b class="view">Xem thêm <i class="fa fa-long-arrow-right"></i></b>
 				</a>
				<a href="" class="kngan kdai wow fadeInDownBig">
 					<h4>Giảm giá</h4>
 					<b class="view">Xem thêm <i class="fa fa-long-arrow-right"></i></b>
 				</a>

 			</div>
 			<div class="col-sm-6">
 				
 				<a href="" class="kngan kdai wow fadeInDownBig">
 					<h4>Bộ sưu tập nữ</h4>
 					<b class="view">Xem thêm <i class="fa fa-long-arrow-right"></i></b>
 				</a>
 				<a href="" class="kngan wow fadeInDownBig">
 					<h4>Sản phẩm sắp ra mắt</h4>
 					<b class="view">View More <i class="fa fa-long-arrow-right"></i></b>
 				</a>

 			</div>
 		</div>
 	</div>
 </div> <!-- HET SAN PHAM NOI BAT  -->

 <div class="quangcao1home  wow fadeInUpBig">
 	<div class="container">
 		<div class="row">
 			<div class="col-sm-12">
 				<div class="qchome text-xs-center">
 					<h2>Chúng tôi giảm giá 10% dành cho lần mua đầu tiên của bạn</h2>
 					<p>Mua ngay và giảm 10%</p>
 					<a href="" class="nutslide btn btn-outline-secondary"> Mua ngay <i class="fa fa-long-arrow-right"></i> </a>
 				</div>
 			</div>
 		</div>
 	</div>
 </div> <!--  HET QUANG CAO TRANG HOME -->

 <div class="sanphamhome">
 	<div class="container">
 		<div class="row">
 			<div class="col-sm-8 push-sm-2  wow fadeInDownBig">
 				<div class="text-xs-center">
	 				<h2 class="kieuchuto">Phong cách</h2>
	 				<p class="mota">Luôn mang đến những sản phẩm có chât lượng tốt, và cực kỳ cá tính và phong cách tuốt lên vẻ ngoài siêu đẹp dành cho bạn.</p>
 				</div>
 			</div>
 		</div>
 	</div>
 	</div>

 	


<div class="tinhome mt-100-vien">
	<div class="container">
		<div class="row">
 			<div class="col-sm-8 push-sm-2  wow fadeInDownBig">
 				<div class="text-xs-center">
	 				<h2 class="kieuchuto">Tin khuyến mãi</h2>
		 				<p class="mota">Tin tức siêu khuyến mãi của tháng 7 nàyy</p>
 				</div>
 			</div>
 		</div>
 		<div class="row  wow fadeInDownBig">
 			<div class="col-sm-6">
 				<a href="" class="anhtin">
 					<img src="<%=request.getContextPath()%>/templates/public/images/anhtin.jpg" alt="" class="">
 					<div class="ngaythang">
 						<b>11</b>
 						<i>JAN</i>
 					</div>
 				</a>
 				<div class="ndtin">
 					<a href="" class="td1tin">Khuyến mãi lớn ngày 7/7</a>
 					<p>Săn siêu giảm giá chỉ với 7k, bắt đầu các khung giờ 8:00 15:00 21:00</p>
 					<a href="" class="rm">Đọc tiếp <i class="fa fa-long-arrow-right"></i></a>
 				</div>
 			</div>
 			<div class="col-sm-6">
 				<a href="" class="anhtin">
 					<img src="<%=request.getContextPath()%>/templates/public/images/anhtin.jpg" alt="" class="">
 					<div class="ngaythang">
 						<b>07</b>
 						<i>JAN</i>
 					</div>
 				</a>
 				<div class="ndtin">
 					<a href="" class="td1tin">Bộ sưu tập mùa hè siêu cá tính</a>
 					<p>Tung thỏa sức cùng mùa hè với những bộ quần áo siêu cá tính, mát mẻ giá siêu mềm dành cho các nàng.</p>
 					<a href="" class="rm">Đọc tiếp <i class="fa fa-long-arrow-right"></i></a>
 				</div>
 			</div>

 		</div>
	</div>
</div> <!-- HET TIN HOME -->

<div class="nhanemail  wow fadeInDownBig">
	<div class="container">
		<div class="row">
			<div class="col-xs-10 push-xs-1 text-xs-center">
				<h2>Nhận thông tin khuyến mãi từ chúng tôi</h2>
				<p>Chúng tôi sẽ gửi thông tin khuyến mãi qua email của bạn!</p>
				<div class="form">
					<input type="text" class="form-control nhanmail" placeholder="Điền email nhận khuyến mãi">
					<input type="submit" class="form-control" value="Đồng ý">
				</div>
			</div>
		</div>
	</div>
</div>  <!-- HET KHOI NHAN EMAIL -->
  
  <%@include file="/templates/public/inc/footer.jsp" %>