<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.Products"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp"%>
<%@include file="/templates/public/inc/taskbar.jsp"%>
	<%@include file="/templates/public/inc/menu.jsp"%>
	  <div class="container">
  <div class="py-5 text-center">
    
    <h2>Thanh toán</h2>
    <p class="lead">Đơn hàng của bạn sẽ được gửi đến bạn trong 3-5 ngày sau khi bạn đặt đơn.</p>
  </div>

  <div class="row">
    <div class="col-md-4 order-md-2 mb-4">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
        <span class="text-muted">Giỏ hàng của bạn</span>
        <span class="badge badge-secondary badge-pill"><%
        		ArrayList<Products> listCart= (ArrayList<Products>) session.getValue("listCart");
        		out.print(listCart.size());
        %></span>
      </h4>
      <ul class="list-group mb-3">
      <%
      	for(Products pro : listCart){
      %>
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0"><%=pro.getName()%></h6>
            <small class="text-muted">Số lượng: <%=pro.getQty()%></small>
          </div>
          <span class="text-muted"><%=pro.getMoney()+ " VNĐ"%></span>
        </li>
        <%} %>
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <span class="text-muted">
          <%
          if(session.getAttribute("total")!=null)
			out.print(session.getAttribute("total")+" VNĐ");
		   %>
		</span>
        </li>
      </ul>

      <form class="card p-2">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Mã giảm giá">
          <div class="input-group-append">
            <button type="submit" class="btn btn-secondary">Áp mã</button>
          </div>
        </div>
      </form>
    </div>
    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">Thông tin nhận hàng</h4>
      <form class="needs-validation" method="post" action="<%=request.getContextPath()%>/thanh-toan">
        <div class="row">
          <div class="col-md-12 mb-3">
            <label for="name">Họ và tên</label>
            <input type="text" class="form-control" name="name" placeholder="" value="" required>
            <label for="email">Email</label>
            <input type="email" class="form-control" name="email" placeholder="" value="" required>
              <label for="phone">Số điện thoại</label>
            <input type="text" class="form-control" name="phone" placeholder="" value="" required>
          </div>
          </div>
        <div class="row">
          <div class="col-md-12 mb-3">
            <label for="address">--Địa chỉ--</label>
            <input type="text" class="form-control" name="address" placeholder="nhập số nhà tên đường địa chỉ của bạn" value="" required>
          </div>
          <div class="col-md-4 mb-3">
            <label for="city">--Tỉnh/Thành phố--</label>
            <select class="custom-select d-block w-100" id="city" required>
              <option value="">Chọn</option>
              <option>Hà Nội</option>
              <option>Đà Nẵng</option>
              <option>TP Hồ Chí Minh</option>
            </select>
           </div>
          <div class="col-md-4 mb-3">
            <label for="district">--Quận/Huyện--</label>
            <select class="custom-select d-block w-100" name="district" required>
              <option value="">Chọn</option>
              <option>Thanh Khê</option>
              <option>Hải Châu</option>
              <option>Ngũ Hành Sơn</option>
            </select>
          </div>
          <div class="col-md-4 mb-3">
            <label for="ward">--Phường/Xã--</label>
            <select class="custom-select d-block w-100" name="ward" required>
              <option value="">Chọn</option>
              <option>Vĩnh Trung</option>
            </select>
          </div>
         
        </div>
       
        <hr class="mb-4">
        <button class="btn btn-primary btn-lg btn-block" type="submit">Đặt hàng</button>
      </form>
    </div>
  </div>

  
</div>
<%@include file="/templates/public/inc/footer.jsp" %>