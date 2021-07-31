<%@page import="model.bean.Products"%>
<%@page import="model.bean.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/admin/inc/header.jsp"%>

<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="header">
						<h4 class="title">Danh sách sản phẩm</h4>
						<!-- <p class="category success">Thêm thành công</p> -->
						<%
						String msg = request.getParameter("msg");
						if("1".equals(msg)){
							out.print("<h5 style=\"background: green; color: yellow; width:160px;  \"> Thêm thành công!!!</h5>");
						}
						if("2".equals(msg)){
							out.print("<h5 style=\"background: green; color: yellow; width:160px;  \"> sửa thành công!!!</h5>");
						}
						if("3".equals(msg)){
							out.print("<h5 style=\"background: green; color: yellow; width:160px;  \"> xóa thành công!!!</h5>");
						}
					%>
						<form action="" method="post">
							<div class="row">
								<div class="col-md-1">
									<div class="form-group">
										<input type="text" name="id" class="form-control border-input"
											value="" placeholder="ID" />
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<input type="text" name="name"
											class="form-control border-input"
											placeholder="Tên sản phẩm" value="" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<%
						 if (request.getAttribute("allCat") != null) {
							ArrayList<Category> allCat = new ArrayList<Category>((ArrayList<Category>) request.getAttribute("allCat"));
					    %>
										<select name="friend_list" class="form-control border-input">
											<option value="0">-- Chọn danh mục --</option>
											<%for (Category x : allCat) { %>
											<option value="<%=x.getId() %>"><%=x.getName()%></option>
											<%} %>

										</select>
										<%} %>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<input type="submit" name="search" value="Tìm kiếm" class="is" />
									</div>
								</div>
							</div>
						</form>

						<a href="<%=request.getContextPath()%>/them-san-pham"
							class="addtop"><img
							src="<%=request.getContextPath()%>/templates/admin/assets/img/add.png"
							alt="" /> Thêm</a>
					</div>
					<div class="content table-responsive table-full-width">
						<table class="table table-striped">
							<thead>
								<th>ID</th>
								<th>Tên Sản phẩm</th>
								<th>Hình ảnh</th>
								<th>Danh mục</th>
								<th>Mô tả</th>
								<th>Giá</th>
								<!-- <th>Giảm giá</th></td>  -->
								<td>
								<th>Chức năng</th>
							</thead>
							<tbody>
								<%
								ArrayList<Products> allProduct = null;
						 if (request.getAttribute("allProducts") != null) {
							allProduct = new ArrayList<Products>((ArrayList<Products>) request.getAttribute("allProducts"));
							for(Products x : allProduct){
					    %>
								<tr>
									<td><%=x.getId()%></td>
									<td><%=x.getName()%></td>
									<td><img
										src="<%=request.getContextPath() %>/images/products/<%=x.getImage() %>"
										alt="" width="100px" /></td>
									<td><%=x.getCategory_name()%></td>
									<td>
										<div class="etc">
											<%=x.getContent()%>
										</div>

									</td>
									<td><%=x.getMoney()%></td>
									<!-- <%=x.getDiscount()%></td>  -->
									<td>
									<td><a
										href="<%=request.getContextPath()%>/sua-san-pham?id=<%=x.getId()%>"><img
											src="<%=request.getContextPath()%>/templates/admin/assets/img/edit.gif"
											alt="" /> Sửa</a> &nbsp;||&nbsp; <a
										href="<%=request.getContextPath()%>/xoa-san-pham?id=<%=x.getId()%>"><img
											src="<%=request.getContextPath()%>/templates/admin/assets/img/del.gif"
											alt="" /> Xóa</a></td>
								</tr>
								<%}} %>
							</tbody>
						</table>
						<%
						int currentPage = (Integer)request.getAttribute("currentPage");
						int numberOfPages = (Integer)request.getAttribute("numberOfPages");
						if(allProduct != null && allProduct.size() > 0){
						%>
						<div class="text-center">
							<ul class="pagination">
								<%	
	                                	String active ="";
	                                	for(int i = 1 ; i < numberOfPages; i++){
	                                		if(currentPage == i){
	                                			active ="current";
	                  						 }%>
								<li><a href="<%=request.getContextPath()%>/quan-ly-san-pham?page=<%=i%>" title=""><%=i %></a></li>
										<%
	                                	}
	                                	%>
							</ul>
						</div>
						<%} %>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


</div>
</div>
</body>

<%@include file="/templates/admin/inc/footer.jsp"%>