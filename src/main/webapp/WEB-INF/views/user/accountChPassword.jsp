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
                                <span class="breadcrumb-item active">AccountInfo</span>
                            </nav>
                        </div>
                    </div>
                </div>
                <!-- Breadcrumb End -->



                <!-- Contact Start -->
                <div class="container-fluid">
                    <c:if test="${not empty errorMessage}">
                        <div class="alert alert-danger" role="alert">${errorMessage}</div>
                    </c:if>
                    <c:if test="${not empty successMessage}">
                        <div class="alert alert-success" role="alert">${successMessage}</div>
                    </c:if>
                    <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span
                            class="bg-secondary pr-3">TÀI KHOẢN</span></h2>
                    <div class="row px-xl-5">
                        <div class="col-lg-3 mb-5">
                            <%@include file="../../views/user/common/_accountList.jsp" %>
                        </div>
                        <div class="col-lg-9 mb-5">
                            <form action="/account/changePassword" method="post">
                                <div class="row">

                                    <div class="col-md-6 form-group">
                                        <label>Mật khẩu cũ</label>
                                        <input class="form-control" value="${oldPass}" name="oldPass" type="password"
                                            placeholder="Nhập mật khẩu cũ !">
                                    </div>

                                    <div class="col-md-6 form-group">
                                        <label>Mật khẩu mới</label>
                                        <input class="form-control" value="${newPass}" name="newPass" type="password"
                                            placeholder="Nhập mật khẩu mới !"><br>
                                        <label>Xác nhận lại mật khẩu</label>
                                        <input class="form-control" value="${confirm}" name="confirm" type="password"
                                            placeholder="Nhập xác nhận lại mật khẩu !">
                                    </div>
                                    <button type="submit" style="
                                    border: none; 
                                    margin: 18px;
                                    border-radius: 10px;
                                    padding: 10px;
                                    background-color: #ffd333;
                                    ">Cập nhật</button>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Contact End -->

                <!-- Back to Top -->
                <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


                <!-- Footer Start -->
                <%@include file="../../views/user/common/_footer.jsp" %>
    </body>

    </html>