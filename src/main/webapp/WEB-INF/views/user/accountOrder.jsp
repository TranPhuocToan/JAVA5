<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                                    <tr>
                                        <td class="align-middle">1</td>
                                        <td class="align-middle">12312</td>
                                        <td class="align-middle">01/01/2003</td>
                                        <td class="align-middle">500.000 VNĐ</td>
                                        <td class="align-middle"><span style="
                            padding: 10px 20px;
                            background-color: rgb(217, 205, 30);
                            color: white;
                            border-radius: 20px;
                            ">Đang chờ</span></td>
                                        <td class="align-middle">
                                            <a href="" type="button" class="btn btn-outline-warning">HÓA ĐƠN</a>
                                            <a href="" type="button" class="btn btn-outline-warning">HỦY</a>
                                        </td>
                                    </tr>
                                    <tr>
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
                                            <a href="" type="button" class="btn btn-outline-warning">HÓA ĐƠN</a>
                                            <a href="" type="button" class="btn btn-outline-warning">HỦY</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- Contact End -->


                <!-- Footer Start -->
                <div class="container-fluid bg-dark text-secondary mt-5 pt-5">
                    <div class="row px-xl-5 pt-5">
                        <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                            <h5 class="text-secondary text-uppercase mb-4">Get In Touch</h5>
                            <p class="mb-4">No dolore ipsum accusam no lorem. Invidunt sed clita kasd clita et et dolor
                                sed dolor. Rebum tempor no vero est magna amet no</p>
                            <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street, New York,
                                USA</p>
                            <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@example.com</p>
                            <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
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
                                        <a class="text-secondary" href="#"><i class="fa fa-angle-right mr-2"></i>Contact
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
                                        <a class="text-secondary" href="#"><i class="fa fa-angle-right mr-2"></i>Contact
                                            Us</a>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-5">
                                    <h5 class="text-secondary text-uppercase mb-4">Newsletter</h5>
                                    <p>Duo stet tempor ipsum sit amet magna ipsum tempor est</p>
                                    <form action="">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Your Email Address">
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
                    <div class="row border-top mx-xl-5 py-4" style="border-color: rgba(256, 256, 256, .1) !important;">
                        <div class="col-md-6 px-xl-0">
                            <p class="mb-md-0 text-center text-md-left text-secondary">
                                &copy; <a class="text-primary" href="#">Domain</a>. All Rights Reserved. Designed
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


                <!-- Footer Start -->
                <%@include file="../../views/user/common/_footer.jsp" %>
    </body>

    </html>