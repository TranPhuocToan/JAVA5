<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="jakarta.tags.core" prefix="c" %>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title>Chi Tiết Sản Phẩm</title>
				<!-- Main CSS-->
				<link rel="stylesheet" type="text/css" href="<c:url value='/assets/admin/css/main.css'/>" />
				<!-- Font-icon css-->
				<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
				<!-- or -->
				<link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
				<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
				<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
				<link rel="stylesheet"
					href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
				<link rel="stylesheet" type="text/css"
					href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
				<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
				<script src="http://code.jquery.com/jquery.min.js" type="text/javascript"></script>
				<script>
					/* function readURL(input, thumbimage) {
						if (input.files && input.files[0]) { //Sử dụng  cho Firefox - chrome
							var reader = new FileReader();
							reader.onload = function(e) {
								$("#thumbimage").attr('src', e.target.result);
							}
							reader.readAsDataURL(input.files[0]);
						} else { // Sử dụng cho IE
							$("#thumbimage").attr('src', input.value);
				
						}
						$("#thumbimage").show();
						$('.filename').text($("#uploadfile").val());
						$('.Choicefile').css('background', '#14142B');
						$('.Choicefile').css('cursor', 'default');
						$(".removeimg").show();
						$(".Choicefile").unbind('click');
				
					}
					$(document)
							.ready(
									function() {
										$(".Choicefile").bind('click', function() {
											$("#uploadfile").click();
				
										});
										$(".removeimg")
												.click(
														function() {
															$("#thumbimage").attr('src', '')
																	.hide();
															$("#myfileupload")
																	.html(
																			'<input type="file" id="uploadfile"  onchange="readURL(this);" />');
															$(".removeimg").hide();
															$(".Choicefile").bind(
																	'click',
																	function() {
																		$("#uploadfile")
																				.click();
																	});
															$('.Choicefile').css('background',
																	'#14142B');
															$('.Choicefile').css('cursor',
																	'pointer');
															$(".filename").text("");
														});
									}) */
				</script>
			</head>

			<body class="app sidebar-mini rtl">
				<style>
					.Choicefile {
						display: block;
						background: #14142B;
						border: 1px solid #fff;
						color: #fff;
						width: 150px;
						text-align: center;
						text-decoration: none;
						cursor: pointer;
						padding: 5px 0px;
						border-radius: 5px;
						font-weight: 500;
						align-items: center;
						justify-content: center;
					}

					.Choicefile:hover {
						text-decoration: none;
						color: white;
					}

					#uploadfile,
					.removeimg {
						display: none;
					}

					#thumbbox {
						position: relative;
						width: 100%;
						margin-bottom: 20px;
					}

					.removeimg {
						height: 25px;
						position: absolute;
						background-repeat: no-repeat;
						top: 5px;
						left: 5px;
						background-size: 25px;
						width: 25px;
						/* border: 3px solid red; */
						border-radius: 50%;
					}

					.removeimg::before {
						-webkit-box-sizing: border-box;
						box-sizing: border-box;
						content: '';
						border: 1px solid red;
						background: red;
						text-align: center;
						display: block;
						margin-top: 11px;
						transform: rotate(45deg);
					}

					.removeimg::after {
						/* color: #FFF; */
						/* background-color: #DC403B; */
						content: '';
						background: red;
						border: 1px solid red;
						text-align: center;
						display: block;
						transform: rotate(-45deg);
						margin-top: -2px;
					}
				</style>
				<!-- Navbar-->
				<%@include file="/WEB-INF/views/admin/layout/header.jsp" %>
					<!-- Sidebar menu-->
					<%@include file="/WEB-INF/views/admin/layout/left-menu.jsp" %>
						<!-- Sidebar menu-->

						<main class="app-content">
							<div class="app-title">
								<ul class="app-breadcrumb breadcrumb">
									<li class="breadcrumb-item">Danh sách chi tiết sản phẩm</li>
									<li class="breadcrumb-item"><a href="#">Thêm chi tiết sản phẩm</a></li>
								</ul>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="tile">
										<h3 class="tile-title">Tạo mới chi tiết sản phẩm</h3>
										<form:form class="row" action="/productDetail" modelAttribute="productDetail"
											enctype="multipart/form-data">
											<div class="form-group col-md-4">
												<label class="control-label">Mã sản phẩm</label>
												<form:input path="productDetailId" class="form-control" readonly="True" />
												<!-- <input class="form-control"
												readonly="" /> -->
											</div>

											<div class="form-group col-md-4">
												<label class="control-label">Tên sản phẩm</label>
												<form:input path="product.productName" class="form-control" />
												<!-- <input class="form-control"
												readonly="" /> -->
											</div>


											<div class="form-group col-md-4">
												<label class="control-label">Kích cỡ</label>
												<form:select path="size.sizeName" class="form-control">
													<form:options items="${SizeIds}" />
												</form:select>
												<!-- <input class="form-control"
												readonly="" /> -->
											</div>
											<!-- <div class="form-group col-md-4">
												<label for="category_id">Danh mục</label>
												<select path="category.categoryId" class="form-control">
													<options items="${categoryIds}" />
												</select>
												<select>
													<option items="">
												</select>
											</div> -->
											<div class="form-group col-md-4">
												<label class="control-label">Số Lượng</label>
												<form:input path="quantity" class="form-control" type="number" />
												<!-- <input class="form-control"
												type="number" /> -->
											</div>
											<div class="form-group col-md-4">
												<label class="control-label">Màu Sắc</label>
												<form:select path="color.colorName" class="form-control">
													<form:options items="${ColorIds}"/>
												</form:select>
												<!-- <input class="form-control"
												type="number" /> -->
											</div>
											<div class="form-group col-md-12">
												<button class="btn btn-save" formaction="/productDetail/create">Lưu
													lại</button>
												<a class="btn btn-cancel" href="/productDetail">Hủy bỏ</a>
											</div>
											<h1>${message}</h1>
										</form:form>
									</div>
								</div>
							</div>
						</main>


						<!-- Essential javascripts for application to work-->
						<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" />
						</script>
						<script src="<c:url value='/assets/admin/js/popper.min.js'/>" />
						</script>
						<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
							integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
							crossorigin="anonymous"></script>
						<script src="<c:url value='/assets/admin/js/main.js'/>"></script>
						<!-- The javascript plugin to display page loading on top-->
						<script src="<c:url value='/assets/admin/js/plugins/pace.min.js'/>" />
						</script>
						<script>
							const inpFile = document.getElementById("inpFile");
							const loadFile = document.getElementById("loadFile");
							const previewContainer = document.getElementById("imagePreview");
							const previewImage = previewContainer
								.querySelector(".image-preview__image");
							const previewDefaultText = previewContainer
								.querySelector(".image-preview__default-text");
							inpFile.addEventListener("change", function () {
								const file = this.files[0];
								if (file) {
									const reader = new FileReader();
									previewDefaultText.style.display = "none";
									previewImage.style.display = "block";
									reader.addEventListener("load", function () {
										previewImage.setAttribute("src", this.result);
									});
									reader.readAsDataURL(file);
								}
							});
						</script>
			</body>

			</html>