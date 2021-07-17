<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <style>
        #myPage-menu {
            width: 200px;
            height: 100px;
            text-align: center;
            /*margin-top: 50px;*/
        }

        #myPage-menu a {
            display: block;
            color: black;
            font-size: 20px;
            text-align: left;
            margin-bottom: 15px;
            /*메뉴 간 간격 조정*/
        }

        #myPage-menu a:hover {
            text-decoration: none;
            cursor: pointer;
            color: rgb(32, 155, 212);
            /*hover시 글씨 색 변함*/
        }

        .body-outer>div {
            float: left;
        }
    </style>

</head>

<body>

    <!-- 왼쪽 메뉴바 -->
    <div class="menu">

        <table id="myPage-menu" align="left">

            <tr>
                <th><a href="">프로필</a></th>
            </tr>
            <tr>
                <th><a href="">내 클래스</a></th>
            </tr>
            <tr>
                <th><a href="">찜한 클래스</a></th>
            </tr>
            <tr>
                <th><a href="">주문내역</a></th>
            </tr>
            <tr>
                <th><a href="">강사 신청</a></th>
            </tr>
            <!-- if문 처리 -->
            <tr>
                <th><a href="">강사 페이지</a></th>
            </tr>
        </table>
    </div>




</body>

</html>