<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản Lý Sản Phẩm</title>
<!-- Main CSS-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/admin/css/main.css'/>" />
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
		<div class="app-title">
			<ul class="app-breadcrumb breadcrumb side">
				<li class="breadcrumb-item active"><a href="#"><b>Danh
							sách chi tiết sản phẩm</b></a></li>
			</ul>
			<div id="clock"></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<div class="tile-body">
						<div class="row element-button">
							<div class="col-sm-2">

								<a class="btn btn-add btn-sm" href="/productDetail/form-productDetail"
									title="Thêm"><i class="fas fa-plus"></i> Tạo mới sản phẩm</a>
							</div>
							<div class="col-sm-2">
								<a class="btn btn-delete btn-sm print-file" type="button"
									title="In" onclick="myApp.printTable()"><i
									class="fas fa-print"></i> In dữ liệu</a>
							</div>
							<div class="col-sm-2">
								<a class="btn btn-delete btn-sm print-file js-textareacopybtn"
									type="button" title="Sao chép"><i class="fas fa-copy"></i>
									Sao chép</a>
							</div>

							<div class="col-sm-2">
								<a class="btn btn-excel btn-sm" href="" title="In"><i
									class="fas fa-file-excel"></i> Xuất Excel</a>
							</div>
							<div class="col-sm-2">
								<a class="btn btn-delete btn-sm pdf-file" type="button"
									title="In" onclick="myFunction(this)"><i
									class="fas fa-file-pdf"></i> Xuất PDF</a>
							</div>
						</div>
						<table class="table table-hover table-bordered" id="sampleTable">
							<thead>
								<tr>
									<th>Mã sản phẩm</th>
									<th>Tên sản phẩm</th>
									<th>Số lượng</th>
									<th>Kích cỡ</th>
									<th>Màu sắc</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="productDetail" items="${productDetail1}">
									<tr>
										<td>${productDetail.productDetailId}</td>
										<td>${productDetail.product.productName}</td>
										<td>${productDetail.quantity}</td>
										<td>${productDetail.size.sizeName}</td>
										<td>${productDetail.color.colorName}</td>
										<td><a class="btn btn-primary btn-sm trash" type="button"
											title="Xóa"
											onclick="confirmDelete('${productDetail.productDetailId}')"> <i
												class="fas fa-trash-alt"></i>
										</a> <a class="btn btn-primary btn-sm edit" type="button"
											href="/productDetail/edit/${productDetail.productDetailId}"> <i
												class="fas fa-edit"></i>
										</a>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</main>

-->

	<!-- Essential javascripts for application to work-->
	<script src="<c:url value='/assets/admin/js/jquery-3.2.1.min.js'/>"></script>
	<script src="<c:url value='/assets/admin/js/popper.min.js'/>"></script>
	<script src="<c:url value='/assets/admin/js/bootstrap.min.js'/>"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
	<script src="<c:url value='/assets/admin/js/main.js'/>"></script>
	<!-- The javascript plugin to display page loading on top-->
	<script src="<c:url value='/assets/admin/js/plugins/pace.min.js'/>" /></script>
	<!-- Page specific javascripts-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
	<!-- Data table plugin-->
	<script type="text/javascript"
		src="<c:url value='/assets/admin/js/plugins/jquery.dataTables.min.js'/>" /></script>
	<script type="text/javascript"
		src="<c:url value='/assets/admin/js/plugins/dataTables.bootstrap.min.js'/>" /></script>
	<script type="text/javascript">
        $('#sampleTable').DataTable();
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
      tmp = '<span class="date"> ' + today + ' - ' + nowTime +
        '</span>';
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
	<script>
	function confirmDelete(productDetailId) {
	    var result = confirm("Bạn có chắc chắn muốn xóa không?");
	    if (result) {
	        // Sử dụng AJAX để gửi yêu cầu xóa
	        var xhr = new XMLHttpRequest();
	        xhr.open("GET", "/productDetail/delete/" + productDetailId, true);
	        xhr.onreadystatechange = function () {
	            if (xhr.readyState == 4 && xhr.status == 200) {
	                // Xóa thành công, có thể cập nhật giao diện hoặc thông báo thành công tại đây
	                // Ví dụ: reload trang
	                window.location.reload();
	            }
	        };
	        xhr.send();
	    }
	}
    </script>
</body>
</html>