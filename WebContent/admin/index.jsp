<%@page import="model.bean.Users"%>
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
						<h4 class="title">Danh sách tài khoản</h4>
						<%
						String error = request.getParameter("error");
						String msg = request.getParameter("msg");
						if("1".equals(msg)){
							out.print("<h5 style=\"background: green; color: yellow; width:160px;  \"> Thêm thành công!!!</h5>");
						}
						if("1".equals(error)){
							out.print("<h5 style=\"background:\"yellow\"; color:\"red\";  \"> id khoogn tồn tại</h5>");
						}%>
						

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
										<input type="text" name="email"
											class="form-control border-input" placeholder="email"
											value="" />
									</div>
								</div>

								<div class="col-md-4">
									<div class="form-group">
										<input type="submit" name="search" value="Tìm kiếm" class="is" />
										<input type="submit" name="reset" value="Hủy tìm kiếm"
											class="is" />
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="content table-responsive table-full-width">
						<table class="table table-striped">
							<thead>
								<th>ID</th>
								<th>Họ tên</th>
								<th>Email</th>
								<th>Số điện thoại</th>
								<th>Địa chỉ</th>
								<th>Chức năng</th>
							</thead>
							<tbody>
								<%
								ArrayList<Users> allUser = null;
								if (request.getAttribute("allUser") != null) {
									allUser = new ArrayList<Users>((ArrayList<Users>) request.getAttribute("allUser"));
									for (Users x : allUser) {
								%>
								<tr>
									<td><%=x.getId()%></td>
									<td><%=x.getName()%></td>
									<td><span><%=x.getEmail()%></span></td>
									<td><%=x.getPhone()%></td>
									<td><%=x.getAddress()%></td>
									<td>
										<%
										String url = request.getContextPath()+ "/khoa-tai-khoan?id="+x.getId()+"&action="+x.getStatus();
										String action = "Khóa";
										int status = 0;
										if (x.getStatus() == 0) {
											action = "Mở khóa";
										}
										%>
										<a href="<%=url%>"  class="btn btn-info btn-lg"
											><%=action%></a>
									</td>
								</tr>
								<%
								}
								}
								%>

							</tbody>
						</table>
						<div class="text-center">
						<%
						int currentPage = (Integer)request.getAttribute("currentPage");
						int numberOfPages = (Integer)request.getAttribute("numberOfPages");
						if(allUser != null && allUser.size() > 0){
						%>
						
							<ul class="pagination">
							<%	
	                                	String active ="";
	                                	for(int i = 1 ; i <= numberOfPages; i++){
	                                		%>
							
								<li><a href="<%=request.getContextPath()%>/quan-ly-tai-khoan?&page=<%=i%>" title=""><%=i%></a></li>
									<%
	                                	}
	                                %>
								
							</ul>
							<%} %>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
<!-- 

 -->

</body>

<%@include file="/templates/admin/inc/footer.jsp"%>