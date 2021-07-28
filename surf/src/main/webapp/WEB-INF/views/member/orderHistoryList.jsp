<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order History</title>
<style>
    .outer{
        width: 1200px;
        margin: auto;
        margin-top: 50px;
    }
    .container{display: flex; flex-wrap: wrap;}
    .sub-nav{
        width: 20%;
        height: 800px;
    }
    .content{width: 80%; font-weight: bold;}
    .menu-title{
        font-size: 25px; 
        font-weight: bold; 
        height: 100px;
        line-height: 70px;
        margin-left: 15px;
    }
    #orderList{
        text-align: center; 
        font-size: 15px;
        margin-left: 15px;
    }
    #orderList>thead{background: rgba(32, 155, 212, 0.1)}
    #orderList>tbody>tr:hover{cursor:pointer;}
    /* #orderList>tbody>td{font-weight:100;} */
    #pagingArea{width:fit-content;margin:auto;}
</style>
</head>
<body>

    <div class="outer">
        
        <!-- header-->
		<jsp:include page="../common/header.jsp" />
		
		<br><br>
        <div class="container">

            <!-- 왼쪽 세부메뉴 -->
            <div class="sub-nav">
            <br>
                <jsp:include page="memberMenubar.jsp" />
            </div>

            <div class="content">
                <!-- 타이틀 -->
                <div class="menu-title">
                    <p>주문내역</p>
                </div>

                <!-- 주문내역 -->
                <div class="order-area">
                    <table id="orderList" class="table table-hover" align="center">
                        <thead>
                            <tr>
                                <th>주문번호</th>
                                <th>주문일</th>
                                <th>상태</th>
                                <th>강의명</th>
                                <th>금액</th>
                            </tr>
                        </thead>
                        <tbody style="font-weight:400;">
                            <tr>
                                <td>321654</td>
                                <td>2021-05-01 18:00:40</td>
                                <td>결제 완료</td>
                                <td>아이패드로 끝내는 여행 드로잉</td>
                                <td>117,800원</td>
                            </tr>
                            <tr>
                                <td>16452313</td>
                                <td>2021-05-01 18:00:40</td>
                                <td>주문 취소</td>
                                <td>아이패드로 끝내는 여행 드로잉</td>
                                <td>117,800원</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <!-- 페이징 -->
                <br><br>
                <div id="pagingArea">
                    <ul class="pagination">
                        <li class="page-item disabled"><a class="page-link" href="#">&lt;</a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
                    </ul>
                </div>


            </div>

        </div>


        <!-- footer -->
        <jsp:include page="../common/footer.jsp" />

    </div>
    
</body>
</html>