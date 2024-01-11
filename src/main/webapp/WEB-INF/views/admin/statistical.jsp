<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<body onload="time()" class="app sidebar-mini rtl">
	<!-- Navbar-->
		<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
	<!-- Sidebar menu-->
	<%@include file="/WEB-INF/views/admin/layout/left-menu.jsp"%>
	<!-- Sidebar menu-->

	<main class="app-content">
		<div class="row">
			<div class="col-md-12">
				<div class="app-title">
					<ul class="app-breadcrumb breadcrumb">
						<li class="breadcrumb-item"><a href="#"><b>Báo cáo
									doanh thu</b></a></li>
					</ul>
					<div id="clock"></div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-lg-4">
				<div class="widget-small primary coloured-icon">
					<i class='icon  bx bxs-user fa-3x'></i>
					<div class="info">
						<h4>Tổng Nhân viên</h4>
						<p>
							<b>${totalEmployeesWithTrueRole} nhân viên</b>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4">
				<div class="widget-small info coloured-icon">
					<i class='icon bx bxs-purchase-tag-alt fa-3x'></i>
					<div class="info">
						<h4>Tổng sản phẩm</h4>
						<p>
							<b>${totalProducts} sản phẩm</b>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4">
				<div class="widget-small warning coloured-icon">
					<i class='icon fa-3x bx bxs-shopping-bag-alt'></i>
					<div class="info">
						<h4>Tổng đơn hàng</h4>
						<p>
							<b>${totalOrders} đơn hàng</b>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-lg-4">
				<div class="widget-small primary coloured-icon">
					<i class='icon fa-3x bx bxs-chart'></i>
					<div class="info">
						<h4>Tổng thu nhập</h4>
						<p>
							<b><fmt:formatNumber value="${totalIncome*1000}" pattern="#,##0"></fmt:formatNumber> đ</b>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4">
				<div class="widget-small warning coloured-icon">
					<i class='icon fa-3x bx bxs-tag-x'></i>
					<div class="info">
						<h4>Hết hàng</h4>
						<p>
							<b>${productsRunningLow} sản phẩm</b>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4">
				<div class="widget-small danger coloured-icon">
					<i class='icon fa-3x bx bxs-receipt'></i>
					<div class="info">
						<h4>Đơn hàng hủy</h4>
						<p>
							<b>${totalCancelledOrders} đơn hàng</b>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<div>
						<h3 class="tile-title">SẢN PHẨM BÁN CHẠY</h3>
					</div>
					<div class="tile-body">
						<table class="table table-hover table-bordered" id="sampleTable">
							<thead>
								<tr>
									<th>Mã sản phẩm</th>
									<th>Tên sản phẩm</th>
									<th>Giá tiền</th>
									<th>Danh mục</th>
									<th>Số lượng đã bán</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${topSellingProducts}" var="product">
									<tr>
										<td>${product[0].product_id}</td>
										<td>${product[0].product_name}</td>
										<td>${product[0].product_price}đ</td>
										<td>${product[0].categories.category_name}</td>
										<td>${product[1]}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<div>
						<h3 class="tile-title">KHÁCH HÀNG MUA NHIỀU NHẤT</h3>
					</div>
					<div class="tile-body">
						<table class="table table-hover table-bordered" id="sampleTable">
							<thead>
								<tr>
									<th>ID khách hàng</th>
									<th>Tên khách hàng</th>
									<th>Số lượng sản phẩm</th>
									<th>Tổng tiền</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${topSpendingCustomers}" var="customer">
									<tr>
										<td>${customer[0].customer_id}</td>
										<td>${customer[0].name}</td>
										<td>${customer[0].orders.size()}</td>
										<td><fmt:formatNumber value="${customer[1]*1000}" pattern="#,##0"></fmt:formatNumber> đ</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<div>
						<h3 class="tile-title">SẢN PHẨM ĐÃ HẾT</h3>
					</div>
					<div class="tile-body">
						<table class="table table-hover table-bordered" id="sampleTable">
							<thead>
								<tr>
									<th>Mã sản phẩm</th>
									<th>Tên sản phẩm</th>
									<th>Ảnh</th>
									<th>Số lượng</th>
									<th>Tình trạng</th>
									<th>Giá tiền</th>
									<th>Danh mục</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${outOfStockProducts}" var="product">
									<tr>
										<td>${product.product_id}</td>
										<td>${product.product_name}</td>
										<td><img src="${product.picture}" alt="" width="100px;"></td>
										<td>${product.quantity_in_stock}</td>
										<td><span class="badge bg-danger">Hết hàng</span></td>
										<td>${product.product_price}đ</td>
										<td>${product.categories.category_name}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<div class="text-right" style="font-size: 12px">
			<p>
				<b>MedShop</b>
			</p>
		</div>
	</main>
	<!-- Essential javascripts for application to work-->
	<script src="<c:url value='../assets/admin/js/jquery-3.2.1.min.js'/>"></script>
	<script src="<c:url value='../assets/admin/js/popper.min.js'/>"></script>
	<script src="<c:url value='../assets/admin/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='../assets/admin/js/main.js'/>"></script>

</body>
</html>