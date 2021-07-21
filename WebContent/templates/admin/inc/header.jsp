<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link
      rel="apple-touch-icon"
      sizes="76x76"
      href="assets/img/apple-icon.png"
    />
    <link
      rel="icon"
      type="image/png"
      sizes="96x96"
      href="assets/img/favicon.png"
    />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Admin</title>

    <meta
      content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
      name="viewport"
    />
    <meta name="viewport" content="width=device-width" />

    <!-- Bootstrap core CSS     -->
    <link href="<%=request.getContextPath()%>/templates/admin/assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="<%=request.getContextPath()%>/templates/admin/assets/css/animate.min.css" rel="stylesheet" />

    <!--  Paper Dashboard core CSS    -->
    <link href="<%=request.getContextPath()%>/templates/admin/assets/css/paper-dashboard.css" rel="stylesheet" />

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="<%=request.getContextPath()%>/templates/admin/assets/css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link
      href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Muli:400,300"
      rel="stylesheet"
      type="text/css"
    />
    <link href="<%=request.getContextPath()%>/templates/admin/assets/css/themify-icons.css" rel="stylesheet" />
  </head>
  <body>
    <div class="wrapper">
      <div
        class="sidebar"
        data-background-color="white"
        data-active-color="danger"
      >
        <div class="sidebar-wrapper">
          <div class="logo">
            <a href="http://vinaenter.edu.vn" class="simple-text">Admin</a>
          </div>

          <ul class="nav">
            <li>
              <a href="<%=request.getContextPath()%>/quan-ly-tai-khoan">
                <i class="ti-user"></i>
                <p>Quản lý tài khoản</p>
              </a>
            </li>
            <li class="nav">
              <a href="<%=request.getContextPath()%>/quan-ly-san-pham">
                 <i class="ti-map"></i>
                <p>Quản lý sản phẩm</p>
              </a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/quan-ly-danh-muc">
                <i class="ti-view-list-alt"></i>
                <p>Quản lý danh mục</p>
              </a>
            </li>
            <li>
              <a href="index.html">
                <i class="ti-panel"></i>
                <p>Quản lý nội dung</p>
              </a>
            </li>
          </ul>
        </div>
      </div>

      <div class="main-panel">
        <nav class="navbar navbar-default">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar bar1"></span>
                <span class="icon-bar bar2"></span>
                <span class="icon-bar bar3"></span>
              </button>
              <a class="navbar-brand" href="/admin">Trang quản lý</a>
            </div>
            <div class="collapse navbar-collapse">
              <ul class="nav navbar-nav navbar-right">
                <li>
                  <a href="http://vinenter.edu.vn">
                    <i class="ti-settings"></i>
                    <p>Cài đặt</p>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
        <!--header end-->