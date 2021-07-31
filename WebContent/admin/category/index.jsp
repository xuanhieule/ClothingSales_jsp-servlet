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
                    <h4 class="title">Danh sách danh mục</h4>
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
                    <% if(request.getAttribute("status")!=null)
                        out.print("<p class=\"category success\">" + request.getAttribute("status") + "</p>");
                    %>

                    <a href="<%=request.getContextPath()%>/admin/category/add.jsp" class="addtop"
                      ><img src="<%=request.getContextPath()%>/templates/admin/assets/img/add.png" alt="" /> Thêm</a
                    >
                  </div>
                  <div class="content table-responsive table-full-width">
                    <table class="table table-striped">
                      <thead>
                        <th>ID</th>
                        <th>Tên danh mục</th>
                      </thead>
                      <tbody>
                      <%
								if (request.getAttribute("allCat") != null) {
									ArrayList<Category> allCat = new ArrayList<Category>((ArrayList<Category>) request.getAttribute("allCat"));
									for (Category x : allCat) {
								%>
                        <tr>
                          <td><%=x.getId()%></td>
                          <td><%=x.getName()%></td>
                          <td>
                            <a href="<%=request.getContextPath()%>/chinh-sua-danh-muc?id=<%=x.getId()%>"
                              ><img src="<%=request.getContextPath()%>/templates/admin/assets/img/edit.gif" alt="" /> Sửa</a
                            >
                            &nbsp;||&nbsp;
                            <a href="<%=request.getContextPath()%>/xoa-danh-muc?id=<%=x.getId()%>"
                              ><img src="<%=request.getContextPath()%>/templates/admin/assets/img/del.gif" alt="" /> Xóa</a
                            >
                          </td>
                        </tr>
                        <%}} %>
                      </tbody>
                    </table>

                    <div class="text-center">
                      <ul class="pagination">
                        <li><a href="?p=0" title="">1</a></li>
                      </ul>
                    </div>
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