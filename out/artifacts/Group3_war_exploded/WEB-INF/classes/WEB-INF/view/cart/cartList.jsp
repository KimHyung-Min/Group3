<%--
  Created by IntelliJ IDEA.
  User: Yonggwan
  Date: 2020-12-19
  Time: 오후 6:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
<head>
    <title>장바구니 목록</title>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="../../../js/cart.js"></script>
</head>
<body>
<div id="cart" class="row">
    <table id="cartTable" , class="highlight centered">
        <thead>
        <tr>
            <th>상품명</th>
            <th>정가 (원)</th>
            <th>수량</th>
            <th>합계 (원)</th>
            <th></th>
        </tr>
        </thead>
        <c:forEach var="cart" items="${cart}">
            <form id="cartForm" action="" method="post">
                <tr class="bookList">
                    <input type="hidden" class="isbn" name="isbn" value="${cart.isbn}">
                    <td class="bookTitle">${cart.bookVO.title}</td>
                    <td class="price">${cart.bookVO.price}</td>
                    <td class="count">
                        <button type="button" class="plusCount waves-effect waves-light btn-small white black-text btn-flat"><i
                                class="material-icons">arrow_drop_up</i></button>
                        <br/>
                        <span class="quantity">${cart.quantity}</span><br/>
                        <button type="button" class="minusCount waves-effect waves-light btn-small white black-text btn-flat"><i
                                class="material-icons">arrow_drop_down</i></button>
                    </td>
                    <td class="totalPrice">${cart.bookVO.price * cart.quantity}</td>
                    <td>
                        <button type="button" class="orderBook waves-effect waves-light btn-small white black-text"
                                value="주문"><i class="material-icons left">credit_card</i>주문
                        </button>
                        <br/><br/>
                        <button type="button" class="deleteBook waves-effect waves-light btn-small white black-text"
                                value="삭제">
                            <i class="material-icons left">close</i>삭제
                        </button>
                    </td>
                </tr>
            </form>
        </c:forEach>

    </table>
</div>
</body>
</html>
