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
                        <style>
                            .msg {
                                color: red;
                            }
                        </style>
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
                                            <a class="breadcrumb-item text-dark" href="#">Shop</a>
                                            <span class="breadcrumb-item active">Checkout</span>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <!-- Breadcrumb End -->


                            <!-- Checkout Start -->
                            <div class="container-fluid">
                                <form:form action="/user/order/add" method="post" modelAttribute="shippingInfo">
                                    <div class="row px-xl-5">
                                        <div class="col-lg-8">
                                            <h5 class="section-title position-relative text-uppercase mb-3"><span
                                                    class="bg-secondary pr-3">ĐỊA CHỈ GIAO HÀNG</span></h5>
                                            <div class="bg-light p-30 mb-5">
                                                <div class="row">
                                                    <div class="col-md-6 form-group">
                                                        <label>HỌ VÀ TÊN</label>
                                                        <form:input path="shippingName" class="form-control" type="text"
                                                            placeholder="John" />
                                                        <form:errors path="shippingName" cssClass="msg" />
                                                    </div>
                                                    <div class="col-md-6 form-group">
                                                        <label>SỐ ĐIỆN THOẠI</label>
                                                        <form:input path="shippingSdt" class="form-control" type="text"
                                                            placeholder="+123 456 789" />
                                                        <form:errors path="shippingSdt" cssClass="msg" />
                                                    </div>
                                                    <div class="col-md-6 form-group">
                                                        <label>ĐỊA CHỈ NHẬN HÀNG</label>
                                                        <form:input path="shippingAddress" class="form-control"
                                                            type="text" placeholder="123 Street" />
                                                        <form:errors path="shippingAddress" cssClass="msg" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="collapse mb-5" id="shipping-address">
                                                <h5 class="section-title position-relative text-uppercase mb-3"><span
                                                        class="bg-secondary pr-3">Shipping Address</span></h5>
                                                <div class="bg-light p-30">
                                                    <div class="row">
                                                        <div class="col-md-6 form-group">
                                                            <label>First Name</label>
                                                            <input class="form-control" type="text" placeholder="John">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label>Last Name</label>
                                                            <input class="form-control" type="text" placeholder="Doe">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label>E-mail</label>
                                                            <input class="form-control" type="text"
                                                                placeholder="example@email.com">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label>Mobile No</label>
                                                            <input class="form-control" type="text"
                                                                placeholder="+123 456 789">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label>Address Line 1</label>
                                                            <input class="form-control" type="text"
                                                                placeholder="123 Street">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label>Address Line 2</label>
                                                            <input class="form-control" type="text"
                                                                placeholder="123 Street">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label>Country</label>
                                                            <select class="custom-select">
                                                                <option selected>United States</option>
                                                                <option>Afghanistan</option>
                                                                <option>Albania</option>
                                                                <option>Algeria</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label>City</label>
                                                            <input class="form-control" type="text"
                                                                placeholder="New York">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label>State</label>
                                                            <input class="form-control" type="text"
                                                                placeholder="New York">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label>ZIP Code</label>
                                                            <input class="form-control" type="text" placeholder="123">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <h5 class="section-title position-relative text-uppercase mb-3"><span
                                                    class="bg-secondary pr-3">HÓA ĐƠN CHI TIẾT </span></h5>
                                            <div class="bg-light p-30 mb-5">
                                                <div class="border-bottom">
                                                    <h6 class="mb-3">Sản phẩm</h6>
                                                    <c:forEach items="${cartDetail}" var="cartItem">
                                                        <div class="d-flex justify-content-between">
                                                            <p>${cartItem.productDetial.product.productName}</p>
                                                            <p>
                                                                <fmt:formatNumber type="currency" maxFractionDigits="0"
                                                                    value="${cartItem.productDetial.product.productPrice*cartItem.quantity}"
                                                                    currencyCode="VND" />
                                                            </p>
                                                        </div>
                                                    </c:forEach>

                                                    <!-- <div class="d-flex justify-content-between">
                                                        <p>Product Name 2</p>
                                                        <p>$150</p>
                                                    </div>
                                                    <div class="d-flex justify-content-between">
                                                        <p>Product Name 3</p>
                                                        <p>$150</p>
                                                    </div> -->
                                                </div>
                                                <div class="border-bottom pt-3 pb-2">
                                                    <div class="d-flex justify-content-between mb-3">
                                                        <h6>Tạm tính</h6>
                                                        <h6>
                                                            <fmt:formatNumber type="currency" maxFractionDigits="0"
                                                                value="${amount}" currencyCode="VND" /> VND
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
                                                                value="${amount+20000} " currencyCode="VND" /> VND
                                                        </h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-5">
                                                <h5 class="section-title position-relative text-uppercase mb-3"><span
                                                        class="bg-secondary pr-3">THANH TOÁN</span></h5>
                                                <div class="bg-light p-30">
                                                    <div class="form-group">
                                                        <div class="custom-control custom-radio">
                                                            <input type="radio" class="custom-control-input"
                                                                name="payment" id="paypal">
                                                            <label class="custom-control-label"
                                                                for="paypal">VNPAY</label>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="custom-control custom-radio">
                                                            <input type="radio" class="custom-control-input"
                                                                name="payment" id="directcheck">
                                                            <label class="custom-control-label" for="directcheck">TRỰC
                                                                TIẾP</label>
                                                        </div>
                                                    </div>
                                                    <button type="submit"
                                                        class="btn btn-block btn-primary font-weight-bold py-3">ĐẶT
                                                        HÀNG</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form:form>
                            </div>
                            <!-- Checkout End -->


                            <!-- Footer Start -->
                            <div class="container-fluid bg-dark text-secondary mt-5 pt-5">
                                <div class="row px-xl-5 pt-5">
                                    <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                                        <h5 class="text-secondary text-uppercase mb-4">Get In Touch</h5>
                                        <p class="mb-4">No dolore ipsum accusam no lorem. Invidunt sed clita kasd clita
                                            et et dolor
                                            sed dolor. Rebum tempor no vero est magna amet no</p>
                                        <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123
                                            Street, New York,
                                            USA</p>
                                        <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@example.com
                                        </p>
                                        <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890
                                        </p>
                                    </div>
                                    <div class="col-lg-8 col-md-12">
                                        <div class="row">
                                            <div class="col-md-4 mb-5">
                                                <h5 class="text-secondary text-uppercase mb-4">Quick Shop</h5>
                                                <div class="d-flex flex-column justify-content-start">
                                                    <a class="text-secondary mb-2" href="#"><i
                                                            class="fa fa-angle-right mr-2"></i>Home</a>
                                                    <a class="text-secondary mb-2" href="#"><i
                                                            class="fa fa-angle-right mr-2"></i>Our Shop</a>
                                                    <a class="text-secondary mb-2" href="#"><i
                                                            class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                                                    <a class="text-secondary mb-2" href="#"><i
                                                            class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                                                    <a class="text-secondary mb-2" href="#"><i
                                                            class="fa fa-angle-right mr-2"></i>Checkout</a>
                                                    <a class="text-secondary" href="#"><i
                                                            class="fa fa-angle-right mr-2"></i>Contact
                                                        Us</a>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mb-5">
                                                <h5 class="text-secondary text-uppercase mb-4">My Account</h5>
                                                <div class="d-flex flex-column justify-content-start">
                                                    <a class="text-secondary mb-2" href="#"><i
                                                            class="fa fa-angle-right mr-2"></i>Home</a>
                                                    <a class="text-secondary mb-2" href="#"><i
                                                            class="fa fa-angle-right mr-2"></i>Our Shop</a>
                                                    <a class="text-secondary mb-2" href="#"><i
                                                            class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                                                    <a class="text-secondary mb-2" href="#"><i
                                                            class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                                                    <a class="text-secondary mb-2" href="#"><i
                                                            class="fa fa-angle-right mr-2"></i>Checkout</a>
                                                    <a class="text-secondary" href="#"><i
                                                            class="fa fa-angle-right mr-2"></i>Contact
                                                        Us</a>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mb-5">
                                                <h5 class="text-secondary text-uppercase mb-4">Newsletter</h5>
                                                <p>Duo stet tempor ipsum sit amet magna ipsum tempor est</p>
                                                <form action="">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control"
                                                            placeholder="Your Email Address">
                                                        <div class="input-group-append">
                                                            <button class="btn btn-primary">Sign Up</button>
                                                        </div>
                                                    </div>
                                                </form>
                                                <h6 class="text-secondary text-uppercase mt-4 mb-3">Follow Us</h6>
                                                <div class="d-flex">
                                                    <a class="btn btn-primary btn-square mr-2" href="#"><i
                                                            class="fab fa-twitter"></i></a>
                                                    <a class="btn btn-primary btn-square mr-2" href="#"><i
                                                            class="fab fa-facebook-f"></i></a>
                                                    <a class="btn btn-primary btn-square mr-2" href="#"><i
                                                            class="fab fa-linkedin-in"></i></a>
                                                    <a class="btn btn-primary btn-square" href="#"><i
                                                            class="fab fa-instagram"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row border-top mx-xl-5 py-4"
                                    style="border-color: rgba(256, 256, 256, .1) !important;">
                                    <div class="col-md-6 px-xl-0">
                                        <p class="mb-md-0 text-center text-md-left text-secondary">
                                            &copy; <a class="text-primary" href="#">Domain</a>. All Rights Reserved.
                                            Designed
                                            by
                                            <a class="text-primary" href="https://htmlcodex.com">HTML Codex</a>
                                        </p>
                                    </div>
                                    <div class="col-md-6 px-xl-0 text-center text-md-right">
                                        <img class="img-fluid" src="img/payments.png" alt="">
                                    </div>
                                </div>
                            </div>
                            <!-- Footer End -->


                            <!-- Back to Top -->
                            <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


                            <%@include file="../../views/user/common/_footer.jsp" %>
                </body>

                </html>