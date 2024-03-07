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
                                            <a class="breadcrumb-item text-dark" href="#">Shop</a>
                                            <span class="breadcrumb-item active">Shop List</span>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <!-- Breadcrumb End -->


                            <!-- Shop Start -->
                            <div class="container-fluid">
                                <div class="row px-xl-5">
                                    <!-- Shop Sidebar Start -->
                                    <div class="col-lg-3 col-md-4">
                                        <!-- Price Start -->
                                        <h5 class="section-title position-relative text-uppercase mb-3"><span
                                                class="bg-secondary pr-3">Filter by price</span></h5>
                                        <div class="bg-light p-4 mb-30">
                                            <form id="filterForm" action="/user/shop" method="post">
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                                    <input type="checkbox" class="custom-control-input" checked
                                                        id="price-all" name="priceRange" onclick="handleCheckbox(this)">
                                                    <label class="custom-control-label" for="price-all">All
                                                        Price</label>
                                                    <span class="badge border font-weight-normal">1000</span>
                                                </div>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                                    <input type="checkbox" class="custom-control-input" id="price-1"
                                                        name="priceRange" value="4000000-6000000"
                                                        onclick="handleCheckbox(this)">
                                                    <label class="custom-control-label"
                                                        for="price-1">4.000.000-6.000.000</label>
                                                    <span class="badge border font-weight-normal">150</span>
                                                </div>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                                    <input type="checkbox" class="custom-control-input" id="price-2"
                                                        name="priceRange" value="6000000-7000000"
                                                        onclick="handleCheckbox(this)">
                                                    <label class="custom-control-label" for="price-2">6.000.000-
                                                        7.000.000</label>
                                                    <span class="badge border font-weight-normal">295</span>
                                                </div>
                                                <!-- Thêm các checkbox khác tương tự cho các khoảng giá khác -->

                                                <!-- Thêm thẻ input để lưu giá trị category được chọn -->
                                                <input type="hidden" id="selectedCategory" name="selectedCategory"
                                                    value="${categoryParam}" />

                                                <!-- Thêm thẻ input để lưu giá trị min và max -->
                                                <input type="hidden" id="minPrice" name="minPrice" value="" />
                                                <input type="hidden" id="maxPrice" name="maxPrice" value="" />

                                                <!-- Thay đổi type của button sang button để tránh submit form ngay khi click -->
                                                <button type="button" class="btn btn-primary"
                                                    onclick="submitForm()">Filter</button>
                                            </form>
                                        </div>
                                        <!-- Price End -->

                                        <!-- Color Start -->
                                        <h5 class="section-title position-relative text-uppercase mb-3"><span
                                                class="bg-secondary pr-3">Filter by color</span></h5>
                                        <div class="bg-light p-4 mb-30">
                                            <form>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                                    <input type="checkbox" class="custom-control-input" checked
                                                        id="color-all">
                                                    <label class="custom-control-label" for="color-all">All
                                                        Color</label>
                                                    <span class="badge border font-weight-normal">1000</span>
                                                </div>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                                    <input type="checkbox" class="custom-control-input" id="color-1">
                                                    <label class="custom-control-label" for="color-1">Black</label>
                                                    <span class="badge border font-weight-normal">150</span>
                                                </div>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                                    <input type="checkbox" class="custom-control-input" id="color-2">
                                                    <label class="custom-control-label" for="color-2">White</label>
                                                    <span class="badge border font-weight-normal">295</span>
                                                </div>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                                    <input type="checkbox" class="custom-control-input" id="color-3">
                                                    <label class="custom-control-label" for="color-3">Red</label>
                                                    <span class="badge border font-weight-normal">246</span>
                                                </div>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                                    <input type="checkbox" class="custom-control-input" id="color-4">
                                                    <label class="custom-control-label" for="color-4">Blue</label>
                                                    <span class="badge border font-weight-normal">145</span>
                                                </div>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                                                    <input type="checkbox" class="custom-control-input" id="color-5">
                                                    <label class="custom-control-label" for="color-5">Green</label>
                                                    <span class="badge border font-weight-normal">168</span>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- Color End -->

                                        <!-- Size Start -->
                                        <h5 class="section-title position-relative text-uppercase mb-3"><span
                                                class="bg-secondary pr-3">Filter by size</span></h5>
                                        <div class="bg-light p-4 mb-30">
                                            <form>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                                    <input type="checkbox" class="custom-control-input" checked
                                                        id="size-all">
                                                    <label class="custom-control-label" for="size-all">All Size</label>
                                                    <span class="badge border font-weight-normal">1000</span>
                                                </div>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                                    <input type="checkbox" class="custom-control-input" id="size-1">
                                                    <label class="custom-control-label" for="size-1">XS</label>
                                                    <span class="badge border font-weight-normal">150</span>
                                                </div>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                                    <input type="checkbox" class="custom-control-input" id="size-2">
                                                    <label class="custom-control-label" for="size-2">S</label>
                                                    <span class="badge border font-weight-normal">295</span>
                                                </div>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                                    <input type="checkbox" class="custom-control-input" id="size-3">
                                                    <label class="custom-control-label" for="size-3">M</label>
                                                    <span class="badge border font-weight-normal">246</span>
                                                </div>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                                    <input type="checkbox" class="custom-control-input" id="size-4">
                                                    <label class="custom-control-label" for="size-4">L</label>
                                                    <span class="badge border font-weight-normal">145</span>
                                                </div>
                                                <div
                                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                                                    <input type="checkbox" class="custom-control-input" id="size-5">
                                                    <label class="custom-control-label" for="size-5">XL</label>
                                                    <span class="badge border font-weight-normal">168</span>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- Size End -->
                                    </div>
                                    <!-- Shop Sidebar End -->


                                    <!-- Shop Product Start -->
                                    <div class="col-lg-9 col-md-8">
                                        <div class="row pb-3">
                                            <div class="col-12 pb-1">
                                                <div class="d-flex align-items-center justify-content-between mb-4">
                                                    <div>
                                                        <button class="btn btn-sm btn-light"><i
                                                                class="fa fa-th-large"></i></button>
                                                        <button class="btn btn-sm btn-light ml-2"><i
                                                                class="fa fa-bars"></i></button>
                                                    </div>
                                                    <div class="ml-2">
                                                        <div class="btn-group">
                                                            <button type="button"
                                                                class="btn btn-sm btn-light dropdown-toggle"
                                                                data-toggle="dropdown">Sorting</button>
                                                            <div class="dropdown-menu dropdown-menu-right">
                                                                <a class="dropdown-item" href="#">Latest</a>
                                                                <a class="dropdown-item" href="#">Popularity</a>
                                                                <a class="dropdown-item" href="#">Best Rating</a>
                                                            </div>
                                                        </div>
                                                        <div class="btn-group ml-2">
                                                            <button type="button"
                                                                class="btn btn-sm btn-light dropdown-toggle"
                                                                data-toggle="dropdown">Showing</button>
                                                            <div class="dropdown-menu dropdown-menu-right">
                                                                <a class="dropdown-item" href="#">10</a>
                                                                <a class="dropdown-item" href="#">20</a>
                                                                <a class="dropdown-item" href="#">30</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <c:forEach items="${page.content}" var="product">
                                                <div class="col-lg-4 col-md-6 col-sm-6 pb-1">
                                                    <div class="product-item bg-light mb-4">
                                                        <div class="product-img position-relative overflow-hidden">
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
                                                            <div
                                                                class="d-flex align-items-center justify-content-center mt-2">
                                                                <h5>
                                                                    <fmt:formatNumber type="currency"
                                                                        maxFractionDigits="0"
                                                                        value="${product.productPrice}"
                                                                        currencyCode="VND" />
                                                                </h5>
                                                                <h6 class="text-muted ml-2">
                                                                    <del>
                                                                        <fmt:formatNumber maxFractionDigits="0"
                                                                            value="${product.productPrice + 100000}"
                                                                            type="currency" currencyCode="VND" />
                                                                    </del>
                                                                </h6>
                                                            </div>
                                                            <div
                                                                class="d-flex align-items-center justify-content-center mb-1">
                                                                <small class="fa fa-star text-primary mr-1"></small>
                                                                <small class="fa fa-star text-primary mr-1"></small>
                                                                <small class="fa fa-star text-primary mr-1"></small>
                                                                <small class="fa fa-star text-primary mr-1"></small>
                                                                <small class="fa fa-star text-primary mr-1"></small>
                                                                <small>(99)</small>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                            <div class="col-12">
                                                <nav>
                                                    <ul class="pagination justify-content-center">
                                                        <c:choose>
                                                            <c:when test="${page.number == 0}">
                                                                <li class="page-item disabled">
                                                                    <a class="page-link" href="#">Previous</a>
                                                                </li>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <!-- <li class="page-item">
                                                                    <a class="page-link"
                                                                        href="/user/shop?p=${page.number - 1}">Previous</a>
                                                                </li> -->
                                                                <c:choose>
                                                                    <c:when test="${empty categoryParam}">
                                                                        <!-- <li class="page-item">
                                                                            <a class="page-link"
                                                                                href="/user/shop?p=${page.number - 1}">Previous</a>
                                                                        </li> -->
                                                                        <c:choose>
                                                                            <c:when test="${empty keywords}">
                                                                                <li class="page-item">
                                                                                    <a class="page-link"
                                                                                        href="/user/shop?p=${page.number - 1}">Previous</a>
                                                                                </li>
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                <li class="page-item">
                                                                                    <a class="page-link"
                                                                                        href="/user/shop/search?p=${page.number - 1}">Previous</a>
                                                                                </li>
                                                                            </c:otherwise>
                                                                        </c:choose>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <li class="page-item">
                                                                            <a class="page-link"
                                                                                href="/user/shop?category=${categoryParam}&p=${page.number - 1}">Previous</a>
                                                                        </li>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:otherwise>
                                                        </c:choose>

                                                        <c:forEach var="pageNumber" begin="0"
                                                            end="${page.totalPages - 1}">
                                                            <!-- <li
                                                                class="page-item ${page.number == pageNumber ? ' active' : '' }">
                                                                <a class="page-link"
                                                                    href="/user/shop?p=${pageNumber}">${pageNumber
                                                                    + 1}</a>
                                                            </li> -->
                                                            <c:choose>
                                                                <c:when test="${empty categoryParam}">
                                                                    <!-- <li
                                                                        class="page-item ${page.number == pageNumber ? ' active' : '' }">
                                                                        <a class="page-link"
                                                                            href="/user/shop?p=${pageNumber}">${pageNumber
                                                                            + 1}</a>
                                                                    </li> -->
                                                                    <c:choose>
                                                                        <c:when test="${empty keywords}">
                                                                            <li
                                                                                class="page-item ${page.number == pageNumber ? ' active' : '' }">
                                                                                <a class="page-link"
                                                                                    href="/user/shop?p=${pageNumber}">${pageNumber
                                                                                    + 1}</a>
                                                                            </li>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <li
                                                                                class="page-item ${page.number == pageNumber ? ' active' : '' }">
                                                                                <a class="page-link"
                                                                                    href="/user/shop/search?p=${pageNumber}">${pageNumber
                                                                                    + 1}</a>
                                                                            </li>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <li
                                                                        class="page-item ${page.number == pageNumber ? ' active' : '' }">
                                                                        <a class="page-link"
                                                                            href="/user/shop?category=${categoryParam}&p=${pageNumber}">${pageNumber
                                                                            + 1}</a>
                                                                    </li>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </c:forEach>

                                                        <c:choose>
                                                            <c:when test="${page.number + 1 == page.totalPages}">
                                                                <li class="page-item disabled">
                                                                    <a class="page-link" href="#">Next</a>
                                                                </li>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <c:choose>
                                                                    <c:when test="${empty categoryParam}">
                                                                        <!-- <li class="page-item">
                                                                            <a class="page-link"
                                                                                href="/user/shop?p=${page.number + 1}">Next</a>
                                                                        </li> -->
                                                                        <c:choose>
                                                                            <c:when test="${empty keywords}">
                                                                                <li class="page-item">
                                                                                    <a class="page-link"
                                                                                        href="/user/shop?p=${page.number + 1}">Next</a>
                                                                                </li>
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                <li class="page-item">
                                                                                    <a class="page-link"
                                                                                        href="/user/shop/search?p=${page.number + 1}">Next</a>
                                                                                </li>
                                                                            </c:otherwise>
                                                                        </c:choose>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <li class="page-item">
                                                                            <a class="page-link"
                                                                                href="/user/shop?category=${categoryParam}&p=${page.number + 1}">Next</a>
                                                                        </li>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                                <!-- <li class="page-item">
                                                                    <a class="page-link"
                                                                        href="/user/shop?p=${page.number + 1}">Next</a>                                                                  
                                                                </li> -->
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </ul>
                                                </nav>
                                            </div>
                                            <!-- <div class="col-12">
                                            <nav>
                                                <ul class="pagination justify-content-center">
                                                    <li class="page-item disabled">
                                                        <a class="page-link" href="/user/shop?p=0">First</span></a>
                                                    </li>
                                                    <li class="page-item disabled">
                                                        <a class="page-link"
                                                            href="/user/shop?p=${page.number-1}">Previous</span></a>
                                                    </li>
                                                    <li class="page-item disabled">
                                                        <a class="page-link"
                                                            href="/user/shop?p=${page.number+1}">Next</span></a>
                                                    </li>
                                                    <li class="page-item disabled">
                                                        <a class="page-link"
                                                            href="/user/shop?p=${page.totalPages-1}">Last</span></a>
                                                    </li>
                                                </ul>
                                            </nav>
                                        </div> -->
                                        </div>
                                    </div>
                                    <!-- Shop Product End -->
                                </div>
                            </div>
                            <!-- Shop End -->


                            <%@include file="../../views/user/common/_footer.jsp" %>
                                <script>
                                    function handleCheckbox(checkbox) {
                                        // Nếu checkbox được chọn, bỏ chọn tất cả các checkbox khác
                                        if (checkbox.checked) {
                                            document.querySelectorAll('input[name="' + checkbox.name + '"]').forEach(function (otherCheckbox) {
                                                if (otherCheckbox !== checkbox) {
                                                    otherCheckbox.checked = false;
                                                }
                                            });
                                        }

                                        // Lấy giá trị category được chọn
                                        var selectedCategory = Array.from(document.querySelectorAll('input[name="category"]:checked'))
                                            .map(function (checkbox) {
                                                return checkbox.value;
                                            })
                                            .join(',');

                                        // Lấy giá trị min và max từ giá trị của checkbox khi nó được chọn
                                        var checkboxValue = checkbox.value;
                                        var [minPrice, maxPrice] = checkboxValue.split('-');

                                        // Gán giá trị cho input ẩn
                                        document.getElementById('selectedCategory').value = selectedCategory;
                                        document.getElementById('minPrice').value = minPrice;
                                        document.getElementById('maxPrice').value = maxPrice;


                                    }

                                    function submitForm() {
                                        // // Lấy giá trị category được chọn
                                        // var selectedCategory = Array.from(document.querySelectorAll('input[name="category"]:checked'))
                                        //     .map(function (checkbox) {
                                        //         return checkbox.value;
                                        //     })
                                        //     .join(',');

                                        // // Lấy giá trị min và max
                                        // var minPrice = document.querySelector('input[name="minPrice"]').value;
                                        // var maxPrice = document.querySelector('input[name="maxPrice"]').value;

                                        // // Gán giá trị cho input ẩn
                                        // document.getElementById('selectedCategory').value = selectedCategory;
                                        // document.getElementById('minPrice').value = 4000000;
                                        // document.getElementById('maxPrice').value = 6000000;

                                        // Submit form
                                        document.getElementById('filterForm').submit();
                                    }
                                </script>
                </body>

                </html>