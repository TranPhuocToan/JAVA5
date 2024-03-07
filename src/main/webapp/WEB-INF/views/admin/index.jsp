<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>
</head>
<!-- Main CSS-->
<link rel="stylesheet" type="text/css"
	href="../../../assets/admin/css/main.css" />
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
						<li class="breadcrumb-item"><a href="#"><b>Bảng điều
									khiển</b></a></li>
					</ul>
					<div id="clock"></div>
				</div>
			</div>
		</div>
		<div class="row">
			<!--Left-->
			<div class="row">
				<!-- col-6 -->
				<div class="col-md-6">
					<div class="widget-small primary coloured-icon">
						<i class='icon bx bxs-user-account fa-3x'></i>
						<div class="info">
							<h4>Tổng khách hàng</h4>
							<p>
								<b><c:out value="${totalCustomers}" /> khách hàng</b>
							</p>
							<p class="info-tong">Tổng số khách hàng được quản lý.</p>
						</div>
					</div>
				</div>
				<!-- col-6 -->
				<div class="col-md-6">
					<div class="widget-small info coloured-icon">
						<i class='icon bx bxs-data fa-3x'></i>
						<div class="info">
							<h4>Tổng sản phẩm</h4>
							<p>
								<b><c:out value="${totalProducts}" /> sản phẩm</b>
							</p>
							<p class="info-tong">Tổng số sản phẩm được quản lý.</p>
						</div>
					</div>
				</div>
				<!-- col-6 -->
				<div class="col-md-6">
					<div class="widget-small warning coloured-icon">
						<i class='icon bx bxs-shopping-bags fa-3x'></i>
						<div class="info">
							<h4>Tổng đơn hàng</h4>
							<p>
								<b><c:out value="${totalOrders}" /> đơn hàng</b>
							</p>
							<p class="info-tong">Tổng số hóa đơn bán hàng trong tháng.</p>
						</div>
					</div>
				</div>
				<!-- col-6 -->
				<div class="col-md-6">
					<div class="widget-small danger coloured-icon">
						<i class='icon bx bxs-error-alt fa-3x'></i>
						<div class="info">
							<h4>Sắp hết hàng</h4>
							<p>
								<b><c:out value="${productsRunningLow}" /> sản phẩm</b>
							</p>
							<p class="info-tong">Số sản phẩm cảnh báo hết cần nhập thêm.</p>
						</div>
					</div>
				</div>
				<!-- col-12 -->
				<div class="col-md-12">
					<div class="tile">
						<h3 class="tile-title">Tình trạng đơn hàng</h3>
						<div>
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>ID đơn hàng</th>
										<th>Tên khách hàng</th>
										<th>Ngày đặt hàng</th>
										<th>Nhân Viên</th>
										<th>Tổng tiền</th>
										<th>Trạng thái</th>
										<th>Xem chi tiết đơn hàng</th>
										<th>Chức Năng</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="order1" items="${orders}">
										<tr>
											<td>${order1.orderId}</td>
											<td>${order1.shippingInfo[0].shippingName}</td>
											<td>${order1.orderDate}</td>
											<td>${order1.user.userId}</td>
											<td><fmt:formatNumber type="currency" maxFractionDigits="0"
												value="${order1.totalAmount}" currencyCode="VND" /></td>
											<td>${order1.orderStatus.statusName}</td> 
											<td><a class="" type="button" href="/admin/orderDetail/${order1.orderId}"> <i
												class="fas fa-edit"></i></a></td>
											<td><a href="/admin/orderStatus/${order1.orderId}" class="" type="button"><i class="fas fa-edit"></i></a></td>	
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- / div trống-->
					</div>
				</div>
				<!-- / col-12 -->
				<!-- col-12 -->
			
				<!-- / col-12 -->
			</div>
		</div>

	</main>
	<script src="<c:url value='../assets/admin/js/jquery-3.2.1.min.js'/>" /></script>
	<!--===============================================================================================-->
	<script src="<c:url value='../assets/admin/js/popper.min.js'/>" /></script>
	<script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
	<!--===============================================================================================-->
	<script src="<c:url value='../assets/admin/js/bootstrap.min.js'/>" /></script>
	<!--===============================================================================================-->
	<script src="<c:url value='../assets/admin/js/main.js'/>" /></script>
	<!--===============================================================================================-->
	<script src="<c:url value='../assets/admin/js/plugins/pace.min.js'/>" /></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="<c:url value='../assets/admin/js/plugins/chart.js'/>" /></script>
	<!--===============================================================================================-->
	<script type="text/javascript">
		//Thời Gian
		function time() {
			var today = new Date();
			var weekday = new Array(7);
			weekday[0] = "Chủ Nhật";
			weekday[1] = "Thứ Hai";
			weekday[2] = "Thứ Ba";
			weekday[3] = "Thứ Tư";
			weekday[4] = "Thứ Năm";
			weekday[5] = "Thứ Sáu";
			weekday[6] = "Thứ Bảy";
			var day = weekday[today.getDay()];
			var dd = today.getDate();
			var mm = today.getMonth() + 1;
			var yyyy = today.getFullYear();
			var h = today.getHours();
			var m = today.getMinutes();
			var s = today.getSeconds();
			m = checkTime(m);
			s = checkTime(s);
			nowTime = h + " giờ " + m + " phút " + s + " giây";
			if (dd < 10) {
				dd = '0' + dd
			}
			if (mm < 10) {
				mm = '0' + mm
			}
			today = day + ', ' + dd + '/' + mm + '/' + yyyy;
			tmp = '<span class="date"> ' + today + ' - ' + nowTime + '</span>';
			document.getElementById("clock").innerHTML = tmp;
			clocktime = setTimeout("time()", "1000", "Javascript");

			function checkTime(i) {
				if (i < 10) {
					i = "0" + i;
				}
				return i;
			}
		}
	</script>
</body>
</html>