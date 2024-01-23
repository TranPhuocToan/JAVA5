<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi Tiết Đơn Hàng</title>
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="<c:url value='../assets/admin/css/main.css'/>"/>
  <!-- Font-icon css-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
  <!-- or -->
  <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
  <link rel="stylesheet" type="text/css"
    href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
  <script src="http://code.jquery.com/jquery.min.js" type="text/javascript"></script>
  </head>
<body onload="time()" class="app sidebar-mini rtl">
	<!-- Navbar-->
		<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
  <!-- Sidebar menu-->
 	  <%@include file="/WEB-INF/views/admin/layout/left-menu.jsp"%>
 	<!-- Sidebar menu-->
 	
    <main class="app-content">
      <div class="app-title">
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item">Danh sách đơn hàng</li>
          <li class="breadcrumb-item"><a href="#">Thêm đơn hàng</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <h3 class="tile-title">Tạo mới đơn hàng</h3>
            <div class="tile-body">
              <form class="row">
                <div class="form-group  col-md-4">
                  <label class="control-label">ID đơn hàng ( Nếu không nhập sẽ tự động phát sinh )</label>
                  <input class="form-control" type="text">
                </div>
                <div class="form-group  col-md-4">
                  <label class="control-label">Tên khách hàng</label>
                  <input class="form-control" type="text" >
                </div>
                <div class="form-group  col-md-4">
                  <label class="control-label">Số điện thoại khách hàng</label>
                  <input class="form-control" type="number" >
                </div>
                <div class="form-group  col-md-4">
                  <label class="control-label">Địa chỉ khách hàng</label>
                  <input class="form-control" type="text" >
                </div>
                <div class="form-group  col-md-4">
                  <label class="control-label">Ngày đặt hàng</label>
                  <input class="form-control" type="date" >
                </div>
                <div class="form-group  col-md-4">
                  <label class="control-label">Tên sản phẩm</label>
                  <input class="form-control" type="text">
                </div>
                <div class="form-group  col-md-4">
                  <label class="control-label">Mã sản phẩm</label>
                  <input class="form-control" type="text">
                </div>
                <div class="form-group  col-md-4">
                  <label class="control-label">Số lượng</label>
                  <input class="form-control" type="number">
                </div>
                <div class="form-group col-md-4">
                  <label for="exampleSelect1" class="control-label">Tình trạng</label>
                  <select class="form-control" id="exampleSelect1">
                    <option>-- Chọn tình trạng --</option>
                    <option>Đã xử lý</option>
                    <option>Đang chờ</option>
                    <option>Đã hủy</option>
                  </select>
                </div>

                <div class="col-md-12 mb-3">
                  <div class="card">
                    <div class="card-body">
                        <b>Tổng tiền: </b>
                    </div>
                  </div>
                </div>
                
          </div>
          <button class="btn btn-save" type="button">Lưu lại</button>
          <a class="btn btn-cancel" href="/doc/table-data-oder.html">Hủy bỏ</a>
        </div>
    </main>
   <!-- Essential javascripts for application to work-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/></script>
  <script src="<c:url value='../assets/admin/js/popper.min.js'/>"/></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="../assets/admin/js/main.js"></script>
  <!-- The javascript plugin to display page loading on top-->
  <script src="../assets/admin/js/plugins/pace.min.js"></script>
  </body>
</html>