<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <%@taglib uri="http://www.springframework.org/tags" prefix="s" %>

                <!-- Navbar Start -->
                <div class="container-fluid bg-dark mb-30">
                    <div class="row px-xl-5">
                        <div class="col-lg-3 d-none d-lg-block">
                            <a class="btn d-flex align-items-center justify-content-between bg-primary w-100"
                                data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                                <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>DANH MỤC SẢN PHẨM</h6>
                                <i class="fa fa-angle-down text-dark"></i>
                            </a>
                            <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light"
                                id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                                <div class="navbar-nav w-100">
                                    <c:forEach items="${categories}" var="category">
                                        <a href="/user/shop?category=${category.categoryId}"
                                            class="nav-item nav-link">${category.categoryName}</a>
                                    </c:forEach>
                                    <!-- <div class="nav-item dropdown dropright">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Dresses <i
                                            class="fa fa-angle-right float-right mt-1"></i></a>
                                    <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                        <a href="" class="dropdown-item">Men's Dresses</a>
                                        <a href="" class="dropdown-item">Women's Dresses</a>
                                        <a href="" class="dropdown-item">Baby's Dresses</a>
                                    </div>
                                </div>
                                <a href="" class="nav-item nav-link">Giày sneaker nam</a>
                                <a href="" class="nav-item nav-link">Giày Sandal nam</a>
                                <a href="" class="nav-item nav-link">Swimwear</a>
                                <a href="" class="nav-item nav-link">Sleepwear</a>
                                <a href="" class="nav-item nav-link">Sportswear</a>
                                <a href="" class="nav-item nav-link">Jumpsuits</a>
                                <a href="" class="nav-item nav-link">Blazers</a>
                                <a href="" class="nav-item nav-link">Jackets</a>
                                <a href="" class="nav-item nav-link">Shoes</a> -->
                                </div>
                            </nav>
                        </div>
                        <div class="col-lg-9">
                            <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                                <a href="" class="text-decoration-none d-block d-lg-none">
                                    <span class="h1 text-uppercase text-dark bg-light px-2">Multi</span>
                                    <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span>
                                </a>
                                <button type="button" class="navbar-toggler" data-toggle="collapse"
                                    data-target="#navbarCollapse">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                                    <div id="navbarMenu" class="navbar-nav mr-auto py-0">
                                        <c:choose>
                                            <c:when test="${userSession==null}">
                                                <a href="/user/index" class="nav-item nav-link ">
                                                    <s:message code="lo.home" />
                                                </a>
                                                <a href="/user/shop" class="nav-item nav-link">
                                                    <s:message code="lo.product" />
                                                </a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="/user/index" class="nav-item nav-link ">
                                                    <s:message code="lo.home" />
                                                </a>
                                                <a href="/user/shop" class="nav-item nav-link">
                                                    <s:message code="lo.product" />
                                                </a>
                                                <a href="/user/accountOrder" class="nav-item nav-link">
                                                    <s:message code="lo.accountInfo" />
                                                </a>
                                            </c:otherwise>
                                        </c:choose>

                                        <!-- <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down mt-1"></i></a>
                            <div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
                                <a href="cart.html" class="dropdown-item">Shopping Cart</a>
                                <a href="checkout.html" class="dropdown-item">Checkout</a>
                            </div>
                        </div>
                        <a href="contact.html" class="nav-item nav-link">Contact</a> -->
                                    </div>
                                    <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                                        <c:choose>
                                            <c:when test="${userSession!=null}">
                                                <a href="" class="btn px-0">
                                                    <i class="fas fa-heart text-primary"></i>
                                                    <span
                                                        class="badge text-secondary border border-secondary rounded-circle"
                                                        style="padding-bottom: 2px;">0</span>
                                                </a>
                                                <a href="/user/cart" class="btn px-0 ml-3">
                                                    <i class="fas fa-shopping-cart text-primary"></i>
                                                    <span
                                                        class="badge text-secondary border border-secondary rounded-circle"
                                                        style="padding-bottom: 2px;">${cartCount}</span>
                                                </a>
                                            </c:when>
                                        </c:choose>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>

                <script>
                    const activePage = window.location.href;
                    const navLink = document.querySelectorAll("nav #navbarMenu a").
                        forEach((link) => {
                            if (link.href === activePage) {
                                link.classList.add("active")
                            }
                        });

                </script>
                <!-- Navbar End -->