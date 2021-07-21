<%@page import="model.bean.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/admin/inc/header.jsp"%>
       <div class="content">
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-12 col-md-12">
                <div class="card">
                  <div class="header">
                    <h4 class="title">Thêm sản phẩm</h4>
                  </div>
                  <div class="content">
                 <form action="<%=request.getContextPath()%>/them-san-pham" method="post" enctype="multipart/form-data">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label>Tên sản phẩm</label> <input type="text" name="name"
											class="form-control border-input"
											placeholder="Tên sản phẩm" value="" />
									</div>
								</div>

							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label>Danh mục sản phẩm</label>
										<%
						 					if (request.getAttribute("allCat") != null) {
												ArrayList<Category> allCat = new ArrayList<Category>((ArrayList<Category>) request.getAttribute("allCat"));
					   					 %>
										<select name="cat" class="form-control border-input">
										 <%for (Category x : allCat) { %>
                            				<option value="<%=x.getId()%>"><%=x.getName()%></option>
                          				 <%} %>
											
											
										</select>
										 <%} %>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Hình ảnh</label> <input type="file" name="picture"
											class="form-control" placeholder="Chọn ảnh" />
									</div>
								</div>
								
							</div>
							
							<div class="col-md-6">
									<div class="form-group">
										<label>Giá</label> <input type="text" name="price"
											class="form-control border-input"
											placeholder="Tên sản phẩm" value="" />
									</div>
								</div>
								
								<div class="col-md-6">
									<div class="form-group">
										<label>Giá giảm</label> <input type="text" name="discount"
											class="form-control border-input"
											placeholder="Tên sản phẩm" value="" />
									</div>
								</div>
							

							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label>Mô tả</label>
										<textarea rows="4" class="form-control border-input" name="des"
											placeholder="Mô tả sản phẩm"></textarea>
									</div>
								</div>
							</div>

							<div class="text-center">
								<input type="submit" class="btn btn-info btn-fill btn-wd"
									value="Thực hiện" />
							</div>
							<div class="clearfix"></div>
						</form>
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