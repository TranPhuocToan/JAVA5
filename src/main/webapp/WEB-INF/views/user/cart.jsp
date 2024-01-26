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
                        <!-- SweetAlert2 CSS -->
                        <link rel="stylesheet"
                            href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.css">
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
                                            <span class="breadcrumb-item active">Shopping Cart</span>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <!-- Breadcrumb End -->

                            <!-- Cart Start -->
                            <div class="container-fluid">
                                <div class="row px-xl-5">
                                    <div class="col-lg-8 table-responsive mb-5">
                                        <table class="table table-light table-borderless table-hover text-center mb-0">
                                            <thead class="thead-dark">
                                                <tr>
                                                    <th>Sản phẩm</th>
                                                    <th>Tên sản Phẩm</th>
                                                    <th>Size</th>
                                                    <th>Màu</th>
                                                    <th>Giá</th>
                                                    <th>Số lượng</th>
                                                    <th>Tổng</th>
                                                    <th>Xóa</th>
                                                </tr>
                                            </thead>
                                            <tbody class="align-middle">
                                                <c:forEach items="${cartDetail}" var="cartItem">
                                                    <form action="/user/cartUpdate/${cartItem.cartDetailId}"
                                                        method="post">
                                                        <tr>
                                                            <td class="align-middle "><img "
                                                                    src="
                                                                    /images/products/${cartItem.productDetial.product.productImages}"
                                                                    alt="" style="width: 70px;">
                                                            </td>
                                                            <td class="align-middle text-wrap" style="width: 250px;">
                                                                ${cartItem.productDetial.product.productName}</td>
                                                            <td class="align-middle">
                                                                ${cartItem.productDetial.size.sizeName}</td>
                                                            <td class="align-middle">
                                                                ${cartItem.productDetial.color.colorName}</td>
                                                            <td class="align-middle">
                                                                <fmt:formatNumber type="currency" maxFractionDigits="0"
                                                                    value="${cartItem.productDetial.product.productPrice}"
                                                                    currencyCode="VND" />
                                                            </td>
                                                            <td class="align-middle">
                                                                <div class="input-group quantity mx-auto"
                                                                    style="width: 100px;">
                                                                    <div class="input-group-btn">
                                                                        <button
                                                                            class="btn btn-sm btn-primary btn-minus">
                                                                            <i class="fa fa-minus"></i>
                                                                        </button>
                                                                    </div>
                                                                    <input type="text" name="qty"
                                                                        class="form-control form-control-sm bg-secondary border-0 text-center"
                                                                        value="${cartItem.quantity}"
                                                                        onblur="this.form.submit()">
                                                                    <div class="input-group-btn">
                                                                        <button class="btn btn-sm btn-primary btn-plus">
                                                                            <i class="fa fa-plus"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="align-middle">
                                                                <fmt:formatNumber type="currency" maxFractionDigits="0"
                                                                    value="${cartItem.productDetial.product.productPrice*cartItem.quantity}"
                                                                    currencyCode="VND" />
                                                            </td>
                                                            <!-- <td class="align-middle">
                                                                <a class="btn btn-sm btn-danger"
                                                                    href="/user/cartDelete/${cartItem.cartDetailId}">
                                                                    <i class="fa fa-times"></i>
                                                                </a>
                                                            </td> -->
                                                            <!-- <td class="align-middle">
                                                                <a class="btn btn-sm btn-danger" href="#"
                                                                    onclick="confirmDelete('${cartItem.cartDetailId}')">
                                                                    <i class="fa fa-times"></i>
                                                                </a>
                                                            </td> -->
                                                            <!-- Modify your delete button -->
                                                            <td class="align-middle">
                                                                <!-- <a class="btn btn-sm btn-danger" href="#"
                                                                    data-toggle="modal"
                                                                    data-target="#confirmDeleteModal"
                                                                    data-cart-detail-id="${cartItem.cartDetailId}">
                                                                    <i class="fa fa-times"></i>
                                                                </a> -->
                                                                <a class="btn btn-sm btn-danger" href="#"
                                                                    onclick="confirmDelete('${cartItem.cartDetailId}')">
                                                                    <i class="fa fa-times"></i>
                                                                </a>
                                                            </td>


                                                        </tr>
                                                    </form>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="col-lg-4">
                                        <form class="mb-30" action="">
                                            <div class="input-group">
                                                <input type="text" class="form-control border-0 p-4"
                                                    placeholder="Mã giảm giá">
                                                <div class="input-group-append">
                                                    <button class="btn btn-primary">Áp dụng</button>
                                                </div>
                                            </div>
                                        </form>
                                        <h5 class="section-title position-relative text-uppercase mb-3"><span
                                                class="bg-secondary pr-3">HÓA ĐƠN</span></h5>
                                        <div class="bg-light p-30 mb-5">
                                            <div class="border-bottom pb-2">
                                                <div class="d-flex justify-content-between mb-3">
                                                    <h6>Tạm tính</h6>
                                                    <h6>
                                                        <fmt:formatNumber type="currency" maxFractionDigits="0"
                                                            value="${amount}" currencyCode="VND" />
                                                    </h6>
                                                </div>
                                                <div class="d-flex justify-content-between">
                                                    <h6 class="font-weight-medium">Giảm giá</h6>
                                                    <h6 class="font-weight-medium">0 VND</h6>
                                                </div>
                                            </div>
                                            <div class="pt-2">
                                                <div class="d-flex justify-content-between mt-2">
                                                    <h5>TỔNG CỘNG</h5>
                                                    <h5>
                                                        <fmt:formatNumber type="currency" maxFractionDigits="0"
                                                            value="${amount}" currencyCode="VND" />
                                                    </h5>
                                                </div>
                                                <a href="/user/order"
                                                    class="btn btn-block btn-primary font-weight-bold my-3 py-3">TIẾN
                                                    HÀNH ĐẶT
                                                    HÀNG</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Cart End -->
                            <!-- Add a container for alerts -->
                            <div id="alertContainer" class="position-fixed top-0 end-0 p-3" style="z-index: 1000">
                                <!-- Alert will be dynamically added here -->
                            </div>

                            <!-- Add a hidden modal -->
                            <div class="modal fade" id="confirmDeleteModal" tabindex="-1" role="dialog"
                                aria-labelledby="confirmDeleteModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="confirmDeleteModalLabel">Confirm Deletion</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            Are you sure you want to delete this item from the cart?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-dismiss="modal">Cancel</button>
                                            <button type="button" class="btn btn-danger"
                                                id="confirmDeleteBtn">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Footer Start -->
                            <%@include file="../../views/user/common/_footer.jsp" %>
                                <!-- SweetAlert2 JS -->
                                <script
                                    src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.0/dist/sweetalert2.min.js"></script>

                                <!-- <script>
                                    function confirmDelete(cartDetailId) {
                                        var confirmation = confirm("Are you sure you want to delete this item from the cart?");
                                        if (confirmation) {
                                            window.location.href = "/user/cartDelete/" + cartDetailId;
                                        }
                                    }
                                </script> -->

                                <!-- JavaScript code to handle modal confirmation and redirect -->
                                <!-- <script>
                                    // Store the cartDetailId when modal is shown
                                    $('#confirmDeleteModal').on('show.bs.modal', function (event) {
                                        var button = $(event.relatedTarget);
                                        var cartDetailId = button.data('cart-detail-id');
                                        $('#confirmDeleteBtn').attr('data-cart-detail-id', cartDetailId);
                                    });

                                    // Handle delete confirmation
                                    $('#confirmDeleteBtn').click(function () {
                                        var cartDetailId = $(this).data('cart-detail-id');
                                        window.location.href = "/user/cartDelete/" + cartDetailId;
                                    });
                                </script> -->
                                <script>
                                    function confirmDelete(cartDetailId) {
                                        Swal.fire({
                                            title: 'Bạn có chắc ?',
                                            text: 'Bạn sắp xóa sản phẩm này',
                                            icon: 'warning',
                                            showCancelButton: true,
                                            confirmButtonText: 'Yes, delete it!',
                                            cancelButtonText: 'No, cancel!',
                                            reverseButtons: true
                                        }).then((result) => {
                                            if (result.isConfirmed) {
                                                // Show success message
                                                Swal.fire('Đã xóa!', 'Sản phẩm của bạn đã bị xóa.', 'success');
                                                setTimeout(function () {
                                                    window.location.href = '/user/cartDelete/' + cartDetailId;
                                                }, 1000);
                                            } else if (result.dismiss === Swal.DismissReason.cancel) {
                                                // User clicked "Cancel" or closed the modal
                                                Swal.fire('Đã hủy', 'Sản phẩm của bạn an toàn', 'info');
                                            }
                                        });
                                    }
                                </script>
                </body>

                </html>