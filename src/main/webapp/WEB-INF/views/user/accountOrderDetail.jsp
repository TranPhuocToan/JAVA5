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
                                            <span class="breadcrumb-item active">Contact</span>
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
                                        <div class="bg-light p-30 mb-5" style="margin: 0 142px;">
                                            <div class="border-bottom">
                                                <h6 class="mb-3">Sản phẩm</h6>
                                                <c:forEach items="${orderDetail}" var="item">
                                                    <div class="d-flex justify-content-between">
                                                        <p>${item.productDetial.product.productName} (SL
                                                            ${item.quantity})</p>
                                                        <p>
                                                            <fmt:formatNumber type="currency" maxFractionDigits="0"
                                                                value="${item.price}" currencyCode="VND" />
                                                            VND
                                                        </p>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                            <div class="border-bottom pt-3 pb-2">
                                                <div class="d-flex justify-content-between mb-3">
                                                    <h6>Tạm tính</h6>
                                                    <h6>
                                                        <fmt:formatNumber type="currency" maxFractionDigits="0"
                                                            value="${totalPrice}" currencyCode="VND" />
                                                        VND
                                                    </h6>
                                                </div>
                                                <div class="d-flex justify-content-between mb-3">
                                                    <h6>Khuyến mãi</h6>
                                                    <h6>0 VND</h6>
                                                </div>
                                                <div class="d-flex justify-content-between mb-3">
                                                    <h6>Phí giao hàng</h6>
                                                    <h6>20.000 VND</h6>
                                                </div>
                                                <!-- <div class="d-flex justify-content-between">
                                    <h6 class="font-weight-medium">Shipping</h6>
                                    <h6 class="font-weight-medium">$10</h6>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                        <h6 class="font-weight-medium">Shipping</h6>
                                        <h6 class="font-weight-medium">$10</h6>
                                    </div> -->
                                            </div>
                                            <div class="pt-2">
                                                <div class="d-flex justify-content-between mt-2">
                                                    <h5>Tổng</h5>
                                                    <h5>
                                                        <fmt:formatNumber type="currency" maxFractionDigits="0"
                                                            value="${totalPrice+20000}" currencyCode="VND" />
                                                        VND
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>
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