<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib uri="jakarta.tags.core" prefix="c"%>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi Tiết Mã Giảm giá</title>
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css'/>"/>
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
          <li class="breadcrumb-item">Quản lý sản phẩm giảm giá</li>
          <li class="breadcrumb-item"><a href="#">Thông tin</a></li>
        </ul>
      </div>
        <div class="row">
			<div class="col-md-12">
				<div class="tile">
					<h3 class="tile-title">Quản lý sản phẩm giảm giá</h3>
					<div class="tile-body">
						<div class="row element-button">
						</div>
					</div>
					<form:form class="row" action="/discount"
						modelAttribute="discount">
						<div class="form-group col-md-4">
							<label class="control-label">Mã giảm giá</label>
							<form:input path="discount_id" class="form-control"
								readonly="True" />
						</div>

						<div class="form-group col-md-4">
							<label for="category_id">Mã sản phẩm</label>
							<form:select path="products.product_id" class="form-control">
								<form:options items="${productIds}" />
							</form:select>
						</div>

						<div class="form-group  col-md-4">
							<label class="control-label">Ngày bắt đầu</label>
							<form:input path="discount_day" class="form-control"
								type="date" />
						</div>
						<div class="form-group  col-md-4">
							<label class="control-label">Ngày kết thúc</label>
							<form:input path="discount_end" class="form-control"
								type="date" />
						</div>
						<div class="form-group col-md-4">
							<label class="control-label">Giảm giá (%)</label>
							<form:input path="discount" class="form-control"
								type="number" />
						</div>

						<div class="form-group col-md-12">
							<button class="btn btn-save" formaction="/discount/create">Lưu lại</button>
							<!-- <button class="btn btn-save" formaction="/discount/update">Cập nhật</button> -->
							<a class="btn btn-cancel" href="/discount">Hủy bỏ</a>
						</div>
					</form:form>

				</div>
			</div>
		</div>
    </main>


  <!--
  MODAL
-->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
data-backdrop="static" data-keyboard="false">
<div class="modal-dialog modal-dialog-centered" role="document">
  <div class="modal-content">

    <div class="modal-body">
      <div class="row">
        <div class="form-group  col-md-12">
          <span class="thong-tin-thanh-toan">
            <h5>Tạo trạng thái mới</h5>
          </span>
        </div>
        <div class="form-group col-md-12">
          <label class="control-label">Nhập tên trạng thái mới</label>
          <input class="form-control" type="text" required>
        </div>
      </div>
      <BR>
      <button class="btn btn-save" type="button">Lưu lại</button>
      <a class="btn btn-cancel" data-dismiss="modal" href="#">Hủy bỏ</a>
      <BR>
    </div>
    <div class="modal-footer">
    </div>
  </div>
</div>
</div>
<!--
MODAL
-->



  <!-- Essential javascripts for application to work-->
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/></script>
  <script src="<c:url value='../assets/admin/js/popper.min.js'/>"/></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="../assets/admin/js/main.js"></script>
  <!-- The javascript plugin to display page loading on top-->
  <script src="../assets/admin/js/plugins/pace.min.js"></script>

</body>
</html>