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
                <%@include file="../../views/user/common/_footer.jsp" %>


                    <!-- Back to Top -->
                    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    </body>

    </html>