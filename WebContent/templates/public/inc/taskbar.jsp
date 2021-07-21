<%@page import="model.bean.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="thanhcc text-xs-center text-sm-left wow bounceInDown">
	<div class="container">
		<div class="row">
			<%
			if (session.getAttribute("userLogin") != null) {
				Users userLogin = (Users) session.getAttribute("userLogin");
			%>
			<a href="cart.jsp" class="cctop"> <%=userLogin.getName()%>
			</a> <a href="cart.jsp" class="cctop"> <i class="fa fa-shopping-cart"></i>
				Giỏ hàng
			</a>

			<%
			}else{
			%>
			<div class="col-sm-6">
				<a href="#0" class="cctop cd-signup" data-toggle="modal"
					data-target="#exampleModal" data-whatever="@mdo"> <i
					class="fa fa-sign-in"></i> Đăng nhập / Đăng ký
				</a>


			</div>
			<%} %>
			<div class="col-sm-6">
			</div>
			<div class="col-sm-6">
			</div>
			
			<div class="col-sm-6 ">
				<div class="float-sm-right text-xs-center text-sm-left">
					<input type="text" class="form-control tim" placeholder="Tìm kiếm">
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="form-wrap">
			<div class="tabs">
				<h3 class="signup-tab">
					<a class="active" href="#signup-tab-content">Đăng Ký</a>
				</h3>
				<h3 class="login-tab">
					<a href="#login-tab-content">Đăng nhập</a>
				</h3>
			</div>
			<!--.tabs-->

			<div class="tabs-content">
				<div id="signup-tab-content" class="active">
					<form class="signup-form"
						action="<%=request.getContextPath()%>/dang-ky" method="post"
						action="<%=request.getContextPath()%>/dang-ky">
						<input name="name" type="type" class="input" id="user_email"
							autocomplete="off" placeholder="Tên"> <input name="email"
							type="email" class="input" id="user_email" autocomplete="off"
							placeholder="Email"> <input name="phone" type="type"
							class="input" id="user_email" autocomplete="off"
							placeholder="Số điện thoại"> <input name="address"
							type="type" class="input" id="user_email" autocomplete="off"
							placeholder="Địa chỉ"> <input name="password"
							type="password" class="input" id="user_pass" autocomplete="off"
							placeholder="Mật khẩu"> <input name="rePassword"
							type="password" class="input" id="user_pass" autocomplete="off"
							placeholder="Nhập lại mật khẩu"> <input type="submit"
							class="button" value="Đăng ký">
					</form>
					<!--.login-form-->
					<div class="help-text">
						<p>Đăng ký, và đồng ý với chúng tôi</p>
						<p>
							<a href="#">điều khoản</a>
						</p>
					</div>
					<!--.help-text-->

				</div>
				<!--.signup-tab-content-->

				<div id="login-tab-content">
					<form action="<%=request.getContextPath()%>/dang-nhap"
						class="login-form" method="post">
						<input name="email" type="text" class="input" id="user_login"
							autocomplete="off" placeholder="Email"> <input
							name="password" type="password" class="input" id="user_pass"
							autocomplete="off" placeholder="Mật khẩu"> <input
							type="checkbox" class="checkbox" id="remember_me"> <label
							for="remember_me">Ghi nhớ</label> <input type="submit"
							class="button" value="Đăng nhập">
					</form>
					<!--.login-form-->
					<div class="help-text">
						<p>
							<a href="#">Quên mật khẩu?</a>
						</p>
					</div>
					<!--.help-text-->
				</div>
				<!--.login-tab-content-->
			</div>
			<!--.tabs-content-->
		</div>
		<!--.form-wrap-->
	</div>

</div>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		tab = $('.tabs h3 a');

		tab.on('click', function(event) {
			event.preventDefault();
			tab.removeClass('active');
			$(this).addClass('active');

			tab_content = $(this).attr('href');
			$('div[id$="tab-content"]').removeClass('active');
			$(tab_content).addClass('active');
		});
	});
</script>
<!-- HẾT THANH CÔNG CỤ -->