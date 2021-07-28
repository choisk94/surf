<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scrap Lecture</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
    .outer{
        width: 1200px;
        margin: auto;
        margin-top: 50px;
    }
    .container{display: flex;}
    .sub-nav{width: 20%; height: 800px;}
    .menu-title{
        font-size: 25px; 
        font-weight: bold; 
        height: 100px;
        line-height: 70px;
        margin-left: 37px;
    }
    .class-area{
        /*width: 80%; */
        background: white;
        margin-left: 30px;
    }
    .class-list{height: 800px;}
    .thumbnail {
        margin: auto;
        border: 1px solid white;
        width: 240px;
        display: inline-block;
        margin: 10px;
        text-align: left;
    }
    .thumbnail:hover {
        cursor: pointer;
        opacity: 0.7;
    }
    /*.thumbnail span{margin-bottom: 5px;}*/
    .thumbnail>p{height: 120px;   }
    .class-thumb{position: relative;}
    .scrap-icon img{position:absolute;top: 20px;}
    #pagingArea{width:fit-content;margin:auto;}

</style>
</head>
<body>

    <div class="outer">
        
        <!-- header-->
        <jsp:include page="../common/header.jsp" />

		<br><br>
        <div class="container">

            <!-- 마이페이지 사이드바 -->
            <div class="sub-nav">
            <br>
                <jsp:include page="memberMenubar.jsp" />
            </div>

            <div class="content">

                <!-- 타이틀 -->
                <div class="menu-title">
                    <p>찜한 클래스</p>
                </div>

                <!-- 클래스 목록 -->
                <div class="class-area">

                    <!-- 클래스 -->
                    <div class="class-list">

                        
                        <div class="thumbnail" align="center">
                            <input type="hidden" value="">
                            <div id="class-thumb">
                                <img src="" width="240" height="150" id="">
                            </div>
        
                            <p style="margin-top: 5px;">
                                <b>아이패드로 여행 드로잉 한번에 끝내기 ㅇㅇㅇㅇㅇㅇㅇ</b><br>
                                <span style="font-size:14px">그림쟁이</span> <br>
                            <span style="font-size:14px"><b>월 30,000원</b></span> <br>
                            <span style="font-size:14px">
                                <img width="25px" src="../resource/img/star.png" alt="">(5.0) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span> 
                            <span style="font-size:14px">
                                <img width="25px" src="../resource/img/heart.png" alt=""> 1,120
                            </span> 
                            </p>
                        </div>
                        <div class="thumbnail" align="center">
                            <input type="hidden" value="">
                            <div id="class-thumb">
                                <img src="" width="240" height="150" id="">
                            </div>
        
                            <p style="margin-top: 5px;">
                                <b>아이패드로 여행 드로잉 한번에 끝내기 ㅇㅇㅇㅇㅇㅇㅇ</b><br>
                                <span style="font-size:14px">그림쟁이</span> <br>
                            <span style="font-size:14px"><b>월 30,000원</b></span> <br>
                            <span style="font-size:14px">
                                <img width="25px" src="../resource/img/star.png" alt="">(5.0) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span> 
                            <span style="font-size:14px">
                                <img width="25px" src="../resource/img/heart.png" alt=""> 1,120
                            </span> 
                            </p>
                        </div>
                        <div class="thumbnail" align="center">
                            <input type="hidden" value="">
                            <div id="class-thumb">
                                <img src="" width="240" height="150" id="">
                            </div>
        
                            <p style="margin-top: 5px;">
                                <b>아이패드로 여행 드로잉 한번에 끝내기 ㅇㅇㅇㅇㅇㅇㅇ</b><br>
                                <span style="font-size:14px">그림쟁이</span> <br>
                            <span style="font-size:14px"><b>월 30,000원</b></span> <br>
                            <span style="font-size:14px">
                                <img width="25px" src="../resource/img/star.png" alt="">(5.0) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span> 
                            <span style="font-size:14px">
                                <img width="25px" src="../resource/img/heart.png" alt=""> 1,120
                            </span> 
                            </p>
                        </div>
                        <div class="thumbnail" align="center">
                            <input type="hidden" value="">
                            <div id="class-thumb">
                                <img src="" width="240" height="150" id="">
                            </div>
        
                            <p style="margin-top: 5px;">
                                <b>아이패드로 여행 드로잉 한번에 끝내기 ㅇㅇㅇㅇㅇㅇㅇ</b><br>
                                <span style="font-size:14px">그림쟁이</span> <br>
                            <span style="font-size:14px"><b>월 30,000원</b></span> <br>
                            <span style="font-size:14px">
                                <img width="25px" src="../resource/img/star.png" alt="">(5.0) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span> 
                            <span style="font-size:14px">
                                <img width="25px" src="../resource/img/heart.png" alt=""> 1,120
                            </span> 
                            </p>
                        </div>
                        
                        
                        
                        

                        <!-- 페이징 -->
                        <br><br><br>
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
                        <br><br>

                    </div>

                </div>
            </div>

        </div>


        <!-- footer -->
        <jsp:include page="../common/footer.jsp" />

    </div>
    
</body>
</html>