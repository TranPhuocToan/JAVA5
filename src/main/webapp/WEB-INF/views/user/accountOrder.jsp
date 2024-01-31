<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <title>MultiShop - Online Shop Website Template</title>
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">
                    <meta content="Free HTML Templates" name="keywords">
                    <meta content="Free HTML Templates" name="description">

                    <%@include file="../../views/user/common/_head.jsp" %>
                </head>

                <body>
                    <!-- Topbar Start -->
                    <%@include file="../../views/user/common/_topbar.jsp" %>
                        <!-- Topbar End -->


                        <!-- Navbar Start -->
                        <%@include file="../../views/user/common/_navbar.jsp" %>
                            <!-- Navbar End -->


                            <!-- Breadcrumb Start -->
                            <div class="container-fluid">
                                <div class="row px-xl-5">
                                    <div class="col-12">
                                        <nav class="breadcrumb bg-light mb-30">
                                            <a class="breadcrumb-item text-dark" href="#">Home</a>
                                            <span class="breadcrumb-item active">AccountInfo</span>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <!-- Breadcrumb End -->


                            <!-- Contact Start -->
                            <div class="container-fluid">
                                <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span
                                        class="bg-secondary pr-3">TÀI KHOẢN</span></h2>
                                <div class="row px-xl-5">
                                    <div class="col-lg-3 mb-5">
                                        <%@include file="../../views/user/common/_accountList.jsp" %>
                                    </div>
                                    <div class="col-lg-9 mb-5">
                                        <table class="table table-light table-borderless table-hover text-center mb-0">
                                            <thead class="thead-dark">
                                                <tr>
                                                    <th>STT</th>
                                                    <th>Mã hàng</th>
                                                    <th>Ngày đặt</th>
                                                    <th>Giá</th>
                                                    <th>Trạng thái</th>
                                                    <th>Hoạt động</th>
                                                </tr>
                                            </thead>
                                            <tbody class="align-middle">
                                                <c:forEach items="${acOrders}" var="acOrder" varStatus="status">
                                                    <tr>
                                                        <td class="align-middle">${status.count}</td>
                                                        <td class="align-middle">${acOrder.orderId}</td>
                                                        <td class="align-middle">
                                                            <fmt:formatDate value="${acOrder.orderDate}"
                                                                pattern="dd-MM-yyyy HH:mm:ss" />
                                                        </td>
                                                        <td class="align-middle">
                                                            <fmt:formatNumber type="currency" maxFractionDigits="0"
                                                                value="${acOrder.totalAmount}" currencyCode="VND" />
                                                        </td>
                                                        <td class="align-middle">
                                                            <c:choose>
                                                                <c:when test="${acOrder.orderStatus.statusId == 1}">
                                                                    <span style="padding: 10px 20px;
                                                                            background-color: rgb(217, 205, 30);
                                                                            color: white;
                                                                            border-radius: 20px;
                                                                            ">${acOrder.orderStatus.statusName}</span>
                                                                </c:when>
                                                                <c:when test="${acOrder.orderStatus.statusId == 2}">
                                                                    <span style="
                                                                        padding: 10px 20px;
                                                                        background-color: rgb(30, 217, 70);
                                                                        color: white;
                                                                        border-radius: 20px;
                                                                        ">${acOrder.orderStatus.statusName}</span>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <!-- Handle other status values if needed -->
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td class="align-middle">
                                                            <c:choose>
                                                                <c:when test="${acOrder.orderStatus.statusId == 1}">
                                                                    <a type="button"
                                                                        href="/user/accountOrderDetails/${acOrder.orderId}"
                                                                        class="btn btn-outline-warning">HÓA ĐƠN</a>
                                                                    <a href="" type="button"
                                                                        class="btn btn-outline-warning">HỦY</a>
                                                                </c:when>
                                                                <c:when test="${acOrder.orderStatus.statusId == 2}">
                                                                    <a type="button"
                                                                        href="/user/accountOrderDetails/${acOrder.orderId}"
                                                                        class="btn btn-outline-warning">HÓA ĐƠN</a>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <!-- Handle other status values if needed -->
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <!-- <a type="button"
                                                                href="/user/accountOrderDetails/${acOrder.orderId}"
                                                                class="btn btn-outline-warning">HÓA ĐƠN</a>
                                                            <a href="" type="button"
                                                                class="btn btn-outline-warning">HỦY</a> -->
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                <!-- <tr>
                                                    <td class="align-middle">2</td>
                                                    <td class="align-middle">12312</td>
                                                    <td class="align-middle">01/01/2003</td>
                                                    <td class="align-middle">500.000 VNĐ</td>
                                                    <td class="align-middle"><span style="
                                                        padding: 10px 20px;
                                                        background-color: rgb(30, 217, 70);
                                                        color: white;
                                                        border-radius: 20px;
                                                        ">ĐÃ XÁC NHẬN</span></td>
                                                    <td class="align-middle">
                                                        <a href="" type="button" class="btn btn-outline-warning">HÓA
                                                            ĐƠN</a>
                                                        <a href="" type="button" class="btn btn-outline-warning">HỦY</a>
                                                    </td>
                                                </tr> -->
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Contact End -->


                            <!-- Footer Start -->
                            <%@include file="../../views/user/common/_footer.jsp" %>


                                <!-- Back to Top -->
                                <a href="#" class="btn btn-primary back-to-top"><i
                                        class="fa fa-angle-double-up"></i></a>
                </body>

                </html>