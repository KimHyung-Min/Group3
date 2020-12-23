<%--
  Created by IntelliJ IDEA.
  User: Yonggwan
  Date: 2020-12-22
  Time: 오후 2:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상품 결제</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<h6>결제 내역 확인</h6>
<form>
    <div class="row">
        <table class="col s4">
            <tr>
                <th>주문상품 금액</th>
                <td colspan="2">00000원</td>
            </tr>
            <tr>
                <th>쿠폰 할인금액</th>
                <td>00000원</td>
                <td>
                    <button class="returnCart cols s2 waves-effect waves-light btn-small white black-text"
                            value="장바구니">쿠폰 사용
                    </button>
                </td>
            </tr>
            <tr>
                <th>적립금 사용금액</th>
                <td>00000원</td>
                <td>
                    <button class="returnCart cols s2 waves-effect waves-light btn-small white black-text"
                            value="장바구니">적립금 사용
                    </button>
                </td>
            </tr>
            <tr>
                <th>총 결제금액</th>
                <td colspan="2">00000원</td>
            </tr>
        </table>
    </div>
    <br/>

    <div class="row">
        <h6>결제 수단선택</h6>
        <table class="col s4">
            <tr>
                <td><label><input type="checkbox" value=""><span>신용카드</span></label></td>
                <td><label><input type="checkbox" value=""><span>계좌이체</span></label></td>
                <td><label><input type="checkbox" value=""><span>무통장 입금</span></label></td>
            </tr>
            <tr>
                <td><label><input type="checkbox" value=""><span>toss</span></label></td>
                <td><label><input type="checkbox" value=""><span>kakao pay</span></label></td>
                <td><label><input type="checkbox" value=""><span>payco</span></label></td>
            </tr>
            <tr>
                <td><label><input type="checkbox" value=""><span>핸드폰 결제</span></label></td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
