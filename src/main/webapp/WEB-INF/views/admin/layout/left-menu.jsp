<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
	<aside class="app-sidebar">
		<div class="app-sidebar__user">
			<img class="app-sidebar__user-avatar"
				src="<c:url value='/img/Admin.png'/>" width="50px">
			<div>
				<p class="app-sidebar__user-name">
					<b>Admin</b>
				</p>
				<p class="app-sidebar__user-designation">Chào mừng bạn trở lại</p>
			</div>
		</div>
		<hr>
		<ul class="app-menu">
			<li><a class="app-menu__item active" href="/admin"><i
					class='app-menu__icon bx bx-tachometer'></i><span
					class="app-menu__label">Bảng điều khiển</span></a></li>
			<li><a class="app-menu__item" href="/customer"><i
					class='app-menu__icon bx bx-id-card'></i><span
					class="app-menu__label">Quản lý khách hàng</span></a></li>
			<li><a class="app-menu__item" href="/account"><i
					class='app-menu__icon bx bx-cog'></i><span class="app-menu__label">Quản
						lý tài khoản</span></a></li>
			<li><a class="app-menu__item" href="/product"><i
					class='app-menu__icon bx bx-purchase-tag-alt'></i><span
					class="app-menu__label">Quản lý sản phẩm</span></a></li>
			<li><a class="app-menu__item" href="/discount"><i
					class='app-menu__icon bx bx-dollar'></i><span
					class="app-menu__label">Quản lý giảm giá</span></a></li>
			<li><a class="app-menu__item" href="/order"><i
					class='app-menu__icon bx bx-task'></i><span class="app-menu__label">Quản
						lý đơn hàng</span></a></li>
			<li><a class="app-menu__item" href="/news"><i
					class='app-menu__icon bx bx-news'></i><span class="app-menu__label">Quản
						lý bản tin</span></a></li>
			<li><a class="app-menu__item" href="/statistical"><i
					class='app-menu__icon bx bx-pie-chart-alt-2'></i><span
					class="app-menu__label">Báo cáo doanh thu</span></a></li>

		</ul>
	</aside>
</body>
</html>