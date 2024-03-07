<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <div class="contact-form bg-light p-30">
                <div id="success"></div>
                <ul class="list-group">
                    <li class="list-group-item" aria-current="true"><a href="/user/accountOrder"
                            class="btn text-dark">Đơn
                            hàng</a></li>
                    <li class="list-group-item" aria-current="true"><a href="/user/accountInfo"
                            class="btn text-dark">Cập nhật
                            thông tin</a></li>
                    <li class="list-group-item" aria-current="true"><a href="/user/accountChPassword"
                            class="btn text-dark">Đổi
                            mật khẩu</a></li>
                </ul>
            </div>
            <script>
                const activelist = window.location.href;
                const listLink = document.querySelectorAll(".list-group li a").
                    forEach((link) => {
                        if (link.href === activePage) {
                            link.parentElement.classList.add("active")
                        }
                    });
            </script>