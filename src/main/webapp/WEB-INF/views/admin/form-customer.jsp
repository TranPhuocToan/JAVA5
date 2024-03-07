<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi Tiết Khách Hàng</title>
<!-- Main CSS-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='../assets/admin/css/main.css'/>" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<!-- or -->
<link rel="stylesheet"
	href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
<!-- Font-icon css-->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
</head>
<body class="app sidebar-mini rtl">
	<!-- Navbar-->
		<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<!-- Sidebar menu-->
	<%@include file="/WEB-INF/views/admin/layout/left-menu.jsp"%>
	<!-- Sidebar menu-->

	<main class="app-content">
		<div class="app-title">
			<ul class="app-breadcrumb breadcrumb">
				<li class="breadcrumb-item">Danh sách khách hàng</li>
				<li class="breadcrumb-item"><a href="#">Cập nhật thông tin
						khách hàng</a></li>
			</ul>
		</div>
		<div class="row">
			<div class="col-md-12">
				<form:form action="/customer" modelAttribute=""
					class="row g-3">
					<div class="form-group col-md-4">
						<label class="control-label">Mã Khách hàng</label>
						<form:input path="customer_id" class="form-control"
							readonly="True" />
					</div>
					<div class="form-group col-md-4">
						<label class="control-label">Email</label>
						<form:input path="accounts.email" class="form-control"
							readonly="True" />
					</div>
					<div class="form-group col-md-4">
						<label class="control-label">Họ và tên</label>
						<form:input class="form-control" path="name" />
					</div>
					<div class="form-group col-md-4">
						<label class="control-label">Địa chỉ</label>
						<form:input class="form-control" path="address" />
					</div>
					<div class="form-group  col-md-4">
						<label class="control-label">Số điện thoại</label>
						<form:input class="form-control" path="phone" />
					</div>
					<div class="form-group col-md-4">
						<label class="control-label">Ngày sinh</label>
						<form:input class="form-control" path="birthday" />
					</div>
					<div class="form-group  col-md-4">
						<label for="exampleSelect1" class="control-label">Giới
							tính</label>
						<div class="form-check">
							<form:radiobutton path="gender" class="form-check-input"
								id="flexRadioDefault1" value="True" />
							<label class="form-check-label" for="flexRadioDefault1">
								Nam </label>
						</div>
						<div class="form-check">
							<form:radiobutton path="gender" class="form-check-input"
								id="flexRadioDefault2" value="False" />
							<label class="form-check-label" for="flexRadioDefault2">
								Nữ </label>
						</div>
					</div>
					<div class="form-group  col-md-12">
						<button class="btn btn-save" formaction="/customer/update">Lưu
							lại</button>
						<a class="btn btn-cancel" href="/customer">Hủy bỏ</a>
					</div>
				</form:form>
			</div>
		</div>

	</main>


	<!-- Essential javascripts for application to work-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" /></script>
	<script src="<c:url value='js/popper.min.js'/>" /></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="<c:url value='../assets/admin/js/main.js'/>"></script>
	<!-- The javascript plugin to display page loading on top-->
	<script src="<c:url value='../assets/admin/js/plugins/pace.min.js'/>" /></script>
	<!-- Page specific javascripts-->

</body>
</html>