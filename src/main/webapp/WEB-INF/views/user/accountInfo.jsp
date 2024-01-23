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
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label>First Name</label>
                                    <input class="form-control" type="text" placeholder="John">
                                </div>

                                <div class="col-md-6 form-group">
                                    <label>E-mail</label>
                                    <input class="form-control" type="text" placeholder="example@email.com">
                                </div>
                                <button style="
                                border: none; 
                                margin: 18px;
                                border-radius: 10px;
                                padding: 10px;
                                background-color: #ffd333;
                                ">Cập nhật</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Contact End -->




                <!-- Footer Start -->
                <%@include file="../../views/user/common/_footer.jsp" %>
                    <!-- Back to Top -->
                    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>
    </body>

    </html>