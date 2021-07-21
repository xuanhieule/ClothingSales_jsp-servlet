<%@page import="model.bean.Category"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/admin/inc/header.jsp"%>
 <div class="content">
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-12 col-md-12">
                <div class="card">
                  <div class="header">
                    <h4 class="title">Sửa thông tin danh mục</h4>
                  </div>
                   <%
                    	if(request.getAttribute("catById")!=null){
                    		Category cat = (Category) request.getAttribute("catById");     	
                    %>
                  <div class="content">
                    <form action="<%=request.getContextPath()%>/chinh-sua-danh-muc?id=<%=cat.getId()%>" method="post">
                   
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label>Tên danh mục</label>
                            <input
                              type="text"
                              name="name"
                              class="form-control border-input"
                              placeholder="Tên danh mục"
                              value="<%=cat.getName()%>"
                            />
                          </div>
                        </div>
                      </div>
                      <div class="text-center">
                        <input
                          type="submit"
                          class="btn btn-info btn-fill btn-wd"
                          value="Thực hiện"
                        />
                      </div>
                      <div class="clearfix"></div>
                      <%} %>
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