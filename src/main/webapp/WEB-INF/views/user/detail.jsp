<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                        <a class="breadcrumb-item text-dark" href="#">Shop</a>
                                        <span class="breadcrumb-item active">Shop Detail</span>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <!-- Breadcrumb End -->

                        <!-- Shop Detail Start -->
                        <div class="container-fluid pb-5">
                            <div class="row px-xl-5">
                                <div class="col-lg-5 mb-30">
                                    <div id="product-carousel" class="carousel slide" data-ride="carousel">
                                        <div class="carousel-inner bg-light">
                                            <div class="carousel-item active">
                                                <img class="w-100 h-100" src="/images/products/${detail_image}"
                                                    alt="Image">
                                            </div>

                                            <div class="carousel-item">
                                                <img class="w-100 h-100" src="/images/products/${detail_image}"
                                                    alt="Image">
                                            </div>
                                            <div class="carousel-item">
                                                <img class="w-100 h-100" src="/images/products/${detail_image}"
                                                    alt="Image">
                                            </div>
                                            <div class="carousel-item">
                                                <img class="w-100 h-100" src="/images/products/${detail_image}"
                                                    alt="Image">
                                            </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#product-carousel" data-slide="prev">
                                            <i class="fa fa-2x fa-angle-left text-dark"></i>
                                        </a>
                                        <a class="carousel-control-next" href="#product-carousel" data-slide="next">
                                            <i class="fa fa-2x fa-angle-right text-dark"></i>
                                        </a>
                                    </div>
                                </div>

                                <div class="col-lg-7 h-auto mb-30">
                                    <div class="h-100 bg-light p-30">
                                        <h3>${detail_name}</h3>
                                        <div class="d-flex mb-3">
                                            <div class="text-primary mr-2">
                                                <small class="fas fa-star"></small>
                                                <small class="fas fa-star"></small>
                                                <small class="fas fa-star"></small>
                                                <small class="fas fa-star-half-alt"></small>
                                                <small class="far fa-star"></small>
                                            </div>
                                            <small class="pt-1">(99 Reviews)</small>
                                        </div>
                                        <h3 class="font-weight-semi-bold mb-4">${detail_price}</h3>
                                        <p class="mb-4">Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr
                                            erat diam
                                            stet sit
                                            clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea
                                            Nonumy</p>

                                        <form id="addToCartForm" action="/user/detailAdd" method="post">
                                            <div class="d-flex mb-3">
                                                <input style="display: none;" type="text" name="productId"
                                                    value="${detail_id}">
                                                <strong class="text-dark mr-3">Size:</strong>
                                                <c:forEach items="${sizes}" var="size">
                                                    <div class="custom-control custom-radio custom-control-inline">
                                                        <input type="radio" class="custom-control-input"
                                                            id="S+${size.sizeId}" name="size" value="${size.sizeId}">
                                                        <label class="custom-control-label"
                                                            for="S+${size.sizeId}">${size.sizeName}</label>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                            <div class="d-flex mb-4">
                                                <strong class="text-dark mr-3">Colors:</strong>
                                                <c:forEach items="${colors}" var="color">
                                                    <div class="custom-control custom-radio custom-control-inline">
                                                        <input type="radio" class="custom-control-input"
                                                            id="C+${color.colorId}" name="color"
                                                            value="${color.colorId}">
                                                        <label class="custom-control-label"
                                                            for="C+${color.colorId}">${color.colorName}</label>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                            <div class="d-flex align-items-center mb-4 pt-2">
                                                <div class="input-group quantity mr-3" style="width: 130px;">
                                                    <div class="input-group-btn">
                                                        <button type="button" class="btn btn-primary btn-minus">
                                                            <i class="fa fa-minus"></i>
                                                        </button>
                                                    </div>
                                                    <input type="text" name="qty"
                                                        class="form-control bg-secondary border-0 text-center"
                                                        value="1">
                                                    <div class="input-group-btn">
                                                        <button type="button" class="btn btn-primary btn-plus">
                                                            <i class="fa fa-plus"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                                <!-- <button formaction="/user/detailAdd" formmethod="post"
                                                    onclick="addToCart()" class="btn btn-primary px-3"><i
                                                        class="fa fa-shopping-cart mr-1"></i> Add To
                                                    Cart</button> -->
                                                <c:choose>
                                                    <c:when test="${userSession==null}">
                                                        <a href="/account/login" type="button"
                                                            class="btn btn-primary px-3">
                                                            <i class="fa fa-shopping-cart mr-1"></i> Add To Cart
                                                        </a>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <button type="button" class="btn btn-primary px-3"
                                                            onclick="addToCart()">
                                                            <i class="fa fa-shopping-cart mr-1"></i> Add To Cart
                                                        </button>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                        </form>
                                        <div class="d-flex pt-2">
                                            <strong class="text-dark mr-2">Share on:</strong>
                                            <div class="d-inline-flex">
                                                <a class="text-dark px-2" href="">
                                                    <i class="fab fa-facebook-f"></i>
                                                </a>
                                                <a class="text-dark px-2" href="">
                                                    <i class="fab fa-twitter"></i>
                                                </a>
                                                <a class="text-dark px-2" href="">
                                                    <i class="fab fa-linkedin-in"></i>
                                                </a>
                                                <a class="text-dark px-2" href="">
                                                    <i class="fab fa-pinterest"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row px-xl-5">
                                <div class="col">
                                    <div class="bg-light p-30">
                                        <div class="nav nav-tabs mb-4">
                                            <a class="nav-item nav-link text-dark active" data-toggle="tab"
                                                href="#tab-pane-1">Description</a>
                                            <a class="nav-item nav-link text-dark" data-toggle="tab"
                                                href="#tab-pane-2">Information</a>
                                            <a class="nav-item nav-link text-dark" data-toggle="tab"
                                                href="#tab-pane-3">Reviews
                                                (0)</a>
                                        </div>
                                        <div class="tab-content">
                                            <div class="tab-pane fade show active" id="tab-pane-1">
                                                <h4 class="mb-3">Product Description</h4>
                                                <p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea.
                                                    Consetetur
                                                    vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et
                                                    dolore
                                                    rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo
                                                    et eos
                                                    elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed
                                                    tempor
                                                    kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit
                                                    no ut
                                                    diam consetetur duo justo est, sit sanctus diam tempor aliquyam
                                                    eirmod
                                                    nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum,
                                                    diam
                                                    kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod
                                                    takimata dolor
                                                    ea invidunt.</p>
                                                <p>Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum.
                                                    Amet
                                                    dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren
                                                    amet
                                                    amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum
                                                    lorem
                                                    elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam
                                                    takimata
                                                    sed justo. Magna takimata justo et amet magna et.</p>
                                            </div>
                                            <div class="tab-pane fade" id="tab-pane-2">
                                                <h4 class="mb-3">Additional Information</h4>
                                                <p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea.
                                                    Consetetur
                                                    vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et
                                                    dolore
                                                    rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo
                                                    et eos
                                                    elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed
                                                    tempor
                                                    kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit
                                                    no ut
                                                    diam consetetur duo justo est, sit sanctus diam tempor aliquyam
                                                    eirmod
                                                    nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum,
                                                    diam
                                                    kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod
                                                    takimata dolor
                                                    ea invidunt.</p>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <ul class="list-group list-group-flush">
                                                            <li class="list-group-item px-0">
                                                                Sit erat duo lorem duo ea consetetur, et eirmod
                                                                takimata.
                                                            </li>
                                                            <li class="list-group-item px-0">
                                                                Amet kasd gubergren sit sanctus et lorem eos sadipscing
                                                                at.
                                                            </li>
                                                            <li class="list-group-item px-0">
                                                                Duo amet accusam eirmod nonumy stet et et stet eirmod.
                                                            </li>
                                                            <li class="list-group-item px-0">
                                                                Takimata ea clita labore amet ipsum erat justo voluptua.
                                                                Nonumy.
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <ul class="list-group list-group-flush">
                                                            <li class="list-group-item px-0">
                                                                Sit erat duo lorem duo ea consetetur, et eirmod
                                                                takimata.
                                                            </li>
                                                            <li class="list-group-item px-0">
                                                                Amet kasd gubergren sit sanctus et lorem eos sadipscing
                                                                at.
                                                            </li>
                                                            <li class="list-group-item px-0">
                                                                Duo amet accusam eirmod nonumy stet et et stet eirmod.
                                                            </li>
                                                            <li class="list-group-item px-0">
                                                                Takimata ea clita labore amet ipsum erat justo voluptua.
                                                                Nonumy.
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab-pane-3">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <h4 class="mb-4">1 review for "Product Name"</h4>
                                                        <div class="media mb-4">
                                                            <img src="../assets/user/img/user.jpg" alt="Image"
                                                                class="img-fluid mr-3 mt-1" style="width: 45px;">
                                                            <div class="media-body">
                                                                <h6>John Doe<small> - <i>01 Jan 2045</i></small></h6>
                                                                <div class="text-primary mb-2">
                                                                    <i class="fas fa-star"></i>
                                                                    <i class="fas fa-star"></i>
                                                                    <i class="fas fa-star"></i>
                                                                    <i class="fas fa-star-half-alt"></i>
                                                                    <i class="far fa-star"></i>
                                                                </div>
                                                                <p>Diam amet duo labore stet elitr ea clita ipsum,
                                                                    tempor labore
                                                                    accusam ipsum et no at. Kasd diam tempor rebum magna
                                                                    dolores
                                                                    sed sed eirmod ipsum.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <h4 class="mb-4">Leave a review</h4>
                                                        <small>Your email address will not be published. Required fields
                                                            are
                                                            marked *</small>
                                                        <div class="d-flex my-3">
                                                            <p class="mb-0 mr-2">Your Rating * :</p>
                                                            <div class="text-primary">
                                                                <i class="far fa-star"></i>
                                                                <i class="far fa-star"></i>
                                                                <i class="far fa-star"></i>
                                                                <i class="far fa-star"></i>
                                                                <i class="far fa-star"></i>
                                                            </div>
                                                        </div>
                                                        <form>
                                                            <div class="form-group">
                                                                <label for="message">Your Review *</label>
                                                                <textarea id="message" cols="30" rows="5"
                                                                    class="form-control"></textarea>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="name">Your Name *</label>
                                                                <input type="text" class="form-control" id="name">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="email">Your Email *</label>
                                                                <input type="email" class="form-control" id="email">
                                                            </div>
                                                            <div class="form-group mb-0">
                                                                <input type="submit" value="Leave Your Review"
                                                                    class="btn btn-primary px-3">
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Shop Detail End -->


                        <!-- Products Start -->
                        <div class="container-fluid py-5">
                            <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span
                                    class="bg-secondary pr-3">You May Also Like</span></h2>
                            <div class="row px-xl-5">
                                <div class="col">
                                    <div class="owl-carousel related-carousel">
                                        <c:forEach items="${proBrand}" var="product">
                                            <div class="product-item bg-light">
                                                <div class="product-img position-relative overflow-hidden">
                                                    <h1></h1>
                                                    <img class="img-fluid w-100"
                                                        src="/images/products/${product.productImages}" alt="">
                                                    <div class="product-action">
                                                        <!-- <a class="btn btn-outline-dark btn-square" href=""><i
                                                                class="fa fa-shopping-cart"></i></a> -->
                                                        <a class="btn btn-outline-dark btn-square" href=""><i
                                                                class="far fa-heart"></i></a>
                                                        <a class="btn btn-outline-dark btn-square" href=""><i
                                                                class="fa fa-sync-alt"></i></a>
                                                        <a class="btn btn-outline-dark btn-square"
                                                            href="/user/detail/${product.productId}"><i
                                                                class="fa fa-search"></i></a>
                                                    </div>
                                                </div>
                                                <div class="text-center py-4">
                                                    <a class="h6 text-decoration-none text-truncate text-wrap"
                                                        href="">${product.productName}</a>
                                                    <!-- <div
                                                        class="d-flex align-items-center justify-content-center mt-2">
                                                        <h5>${product.productPrice}</h5>
                                                        <h6 class="text-muted ml-2">
                                                            <del>${product.productPrice+100}</del>
                                                        </h6>
                                                    </div> -->
                                                    <div class="d-flex align-items-center justify-content-center mt-2">
                                                        <h5>
                                                            <fmt:formatNumber type="currency" maxFractionDigits="0"
                                                                value="${product.productPrice}" currencyCode="VND" />
                                                        </h5>
                                                        <h6 class="text-muted ml-2">
                                                            <del>
                                                                <fmt:formatNumber maxFractionDigits="0"
                                                                    value="${product.productPrice + 100000}"
                                                                    type="currency" currencyCode="VND" />
                                                            </del>
                                                        </h6>
                                                    </div>
                                                    <div class="d-flex align-items-center justify-content-center mb-1">
                                                        <small class="fa fa-star text-primary mr-1"></small>
                                                        <small class="fa fa-star text-primary mr-1"></small>
                                                        <small class="fa fa-star text-primary mr-1"></small>
                                                        <small class="fa fa-star text-primary mr-1"></small>
                                                        <small class="fa fa-star text-primary mr-1"></small>
                                                        <small>(99)</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Products End -->



                        <!-- Footer Start -->
                        <%@include file="../../views/user/common/_footer.jsp" %>
                            <script>
                                // JavaScript to handle quantity change without form submission
                                // function decreaseQuantity() {
                                //     var quantityInput = document.querySelector('.quantity input');
                                //     var currentValue = parseInt(quantityInput.value, 10);
                                //     if (currentValue > 1) {
                                //         quantityInput.value = currentValue - 1;
                                //     }
                                // }

                                // function increaseQuantity() {
                                //     var quantityInput = document.querySelector('.quantity input');
                                //     var currentValue = parseInt(quantityInput.value, 10);
                                //     quantityInput.value = currentValue + 1;
                                // }

                                function addToCart() {
                                    var sizeSelected = $("input[name='size']:checked").val();
                                    var colorSelected = $("input[name='color']:checked").val();
                                    var qty = $("input[name='qty']").val();

                                    if (sizeSelected && colorSelected) {
                                        // Form is valid, submit the form or perform AJAX request
                                        // Assuming you're submitting the form

                                        var success = sizeSelected !== undefined && colorSelected !== undefined;

                                        if (success) {
                                            // Show success message
                                            Swal.fire('Thêm Thành Công!', 'Sản phẩm được thêm vào giỏ hàng thành công.', 'success');
                                            setTimeout(function () {
                                                $('#addToCartForm').submit();
                                            }, 1000);

                                        }
                                    } else {
                                        // Show error message for missing size or color
                                        Swal.fire('Thêm Thất bại!', 'Vui lòng chọn cả kích thước và màu sắc.', 'error');
                                    }
                                }
                            </script>


            </body>

            </html>