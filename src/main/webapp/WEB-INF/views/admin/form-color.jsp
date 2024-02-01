<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <title>Chi Tiết Màu Sắc</title>
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
                                    <li class="breadcrumb-item">Danh sách màu</li>
                                    <li class="breadcrumb-item"><a href="#">Thêm Màu</a></li>
                                </ul>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="tile">
                                        <h3 class="tile-title">Tạo Màu</h3>
                                        <div class="tile-body">
                                            <form:form action="/color/create" modelAttribute="color"
                                                enctype="multipart/form-data">
                                                <div class="row">
                                                    <div class="form-group  col-md-4">
                                                        <label class="control-label">ID Màu</label>
                                                        <form:input path="colorId" class="form-control"
                                                        readonly="True" />
                                                    </div>
                                                    <div class="form-group  col-md-4">
                                                        <label class="control-label">Tên Màu</label>
                                                        <form:input path="colorName" class="form-control" />
                                                    </div>
                                                </div>
                                                <button class="btn btn-save">Lưu lại</button>
                                                <a class="btn btn-cancel" href="/color">Hủy bỏ</a>
                                            </form:form>
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
                        <script src="/assets/admin/js/main.js"></script>
                        <!-- The javascript plugin to display page loading on top-->
                        <script src="/assets/admin/js/plugins/pace.min.js"></script>

            </body>

            </html>