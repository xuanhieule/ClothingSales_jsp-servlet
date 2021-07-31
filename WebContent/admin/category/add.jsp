<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/admin/inc/header.jsp"%>
 <div class="content">
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-12 col-md-12">
                <div class="card">
                  <div class="header">
                    <h4 class="title">Thêm danh mục</h4>
                    <%
						String error = request.getParameter("error");
						if("1".equals(error)){
							out.print("<h5 style=\"background: red; color: yellow; width:160px;  \"> Thêm thất bại</h5>");
					}%>
                  </div>
                  <div class="content">
                    <form action="<%=request.getContextPath()%>/them-danh-muc" method="post">
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <label>Tên danh mục</label>
                            <input
                              type="text"
                              name="name"
                              class="form-control border-input"
                              placeholder="Nhập tên danh mục"
                              value=""
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
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <footer class="footer">
          <div class="container-fluid">
            <nav class="pull-left">
              <ul>
                <li>
                  <a href="/"
                    >Dự án được phát triển bởi: Trần Nguyễn Gia Huy - Khóa
                    ABC</a
                  >
                </li>
              </ul>
            </nav>
            <div class="copyright pull-right">
              &copy;
              <script>
                document.write(new Date().getFullYear());
              </script>
              , made with <i class="fa fa-heart heart"></i> by
              <a href="http://vinaenter.edu.vn">VinaEnter Edu</a>
            </div>
          </div>
        </footer>
      </div>
    </div>
  </body>
<%@include file="/templates/admin/inc/footer.jsp"%>