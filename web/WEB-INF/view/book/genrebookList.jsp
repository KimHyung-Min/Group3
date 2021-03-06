<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hyeongmin
  Date: 2020-12-23
  Time: 오전 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>도서목록</title>
</head>
<body>
<div class="row"></div>
<h5>${result} 건의 검색 결과</h5>
<h6> 장르: ${genre} </h6>
<c:forEach items="${bookList}" var="book">
    <div class="row">
        <div class="col s4 center-align">
            <a class="loadAjax" href="viewBook.ing?isbn=${book.isbn}"><img src="../../../imgs/book/${book.isbn}.PNG"></a>
        </div>
        <div class="col s8">
            <div class="leftcol left-align"><h4>${book.title}</h4></div>
            <div class="leftcol left-align"><h5>${book.author}</h5></div>
            <div class="leftcol left-align"><a class="loadAjax" href="viewBook.ing?isbn=${book.isbn}">ISBN: ${book.isbn}</a></div>
            <div class="leftcol left-align">장르: ${book.genre}</div>
            <div class="leftcol left-align">출간일: ${book.publicationDate}</div>
            <div class="leftcol left-align">${book.totalPage}페이지 / ${book.publisherVO.publisherName}  / <span class="right-align">${book.price}원</span></div>
            <div class="row"></div>
            <div class="left-align">키워드: ${book.keyword}</div>
            <div class="row"></div>

            <a class="btn right-align" href="">장바구니에 추가</a>
            <a class="btn right-align" href="">바로 구매</a>
        </div>
    </div>
</c:forEach>
</body>
</html>