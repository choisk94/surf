<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <!-- 아이콘, w3schools 템플릿 관련 -->
    <!-- awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/69851f8880.js" crossorigin="anonymous"></script>
    <!-- w3 schools style sheet -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
    <!-- 공통 스타일 CSS -->
    <link rel="stylesheet" href="resources/css/commonStyle.css">
    
    <style>
        #header-outer {
            width: 1200px;
            /*border: 1px solid red;*/
            height: 120px;
            margin: auto;
        }
    
    
        .nav1 {
            width: 100%;
            box-sizing: border-box;
            /*border: green solid 1px;*/
        }
    
        #nav-part1 {
            height: 35%;
            padding-right: 20px;
            padding-top: 5px;
            font-size: 12px;
        }
    
        #nav-part1>a {
            text-decoration: none;
            color: black;
            font-weight: bold;
        }
    
        #nav-part1>a:hover {
            color: rgb(32, 155, 212);
        }
        
        #nav-part1>a::after{
            content: "|";
            color: #ccc;
            padding-left: 10px;
            padding-right: 10px;
        }

        #nav-part1>a:last-child::after{
            content : none;
        }
    
        #nav-part2>div,
        .icons>div {
            float: left;
            /*border: purple solid 1px;*/
            box-sizing: border-box;
            height: 100%;
        }
    
    
        .icons {
            text-align: center;
            padding-top: 20px;
        }
    
        #cat-detail {
            position: absolute;
            z-index: 999;
            margin: auto;
            left: 0;
            right: 0;
            display: none;
            background-color: whitesmoke;
            opacity: 0.9;
            width: 1000px;
            height: 250px;
    
        }
    
 		#cat-detail ul {
            float: left;
            height: 250px;
            width: calc(100%/7);
            padding: 0;
            text-align: center;
        }

        #cat-detail ul li {
            width: 100%;
            height: 40px;
            line-height: 40px;
            list-style-type: none;
        }
    
    
        .loginButtons {
            margin: 3px;
            font-size: 14px;
        }
    
        .loginInputs {
            font-size: 14px;
        }
        
        .easyLogin{
            height: 35px; 
            width: 45%; 
            padding: 0; 
            margin: 0;
            border: none;
        }
    </style>
    </head>
    
    <body>
        <!-- 메뉴바 상단 -->
        <div id="header-outer">
            <div class="nav1" id="nav-part1" align="right">
                <a href="" data-toggle="modal" data-target="#loginModal">로그인</a>
                <!--
                    <a href="">로그아웃</a>
                -->
                <a href="">회원가입</a>
                <a href="">고객센터</a>
                <!--
                    <a href="">강사페이지</a>
                -->
            </div>
    
    
            <!-- 로그인 modal -->
            <!-- The Modal -->
            <div class="modal fade" id="loginModal" align="center">
                <div class="modal-dialog modal-dialog-centered modal-sm">
                    <div class="modal-content">
    
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h6 class="modal-title">로그인</h6>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
    
                        <!-- Modal body -->
                        <div class="modal-body">
                            <form action="">
                                <div class="input-group mb-3 mp-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fa fa-user"></i>
                                        </span>
                                    </div>
                                    <input type="text" class="form-control loginInputs" placeholder="아이디" id="usr"
                                        name="username">
                                </div>
    
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fa fa-lock"></i>
                                        </span>
                                    </div>
                                    <input type="password" class="form-control loginInputs" placeholder="비밀번호" id="pwd"
                                        name="username">
                                </div>
                                <div>
                                    <div class="hr-sect" style="font-size: 13px; color: rgb(94, 94, 94);">간편로그인</div>
                                </div>

	                            <button type="button" class="btn loginButtons easyLogin">
	                                <img src="resources/images/kakao_login_medium_narrow.png" style="width: 100%;">
	                            </button>
	                            <button type="button" class="btn loginButtons easyLogin">
	                                <img src="resources/images/btnNaver.png" style="width: 100%;">
	                            </button>
	                            
                                <button type="submit" class="btn btn-primary loginButtons" style="width: 93%;">로그인</button>
                                <button type="button" class="btn btn-secondary loginButtons" style="width: 93%;">아이디/비밀번호
                                    찾기</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 로그인 modal 끝 -->
    
            <!-- 메뉴바 하부 -->
            <div class="nav1" id="nav-part2" style="height: 65%;">
                <!-- 로고 -->
                <div style="width: 20%;">
                    <div style="width: 60%; float: left;">
                        <span style="font-size: 50px; font-weight:bold; color: rgb(32, 155, 212);">SURF</span>
                    </div>
                    <div style="width: 40%; height:100%; float:left;">
                        <img src="resources/images/redhair.png" style="height: 100%;">
                    </div>
                </div>
    
                <!-- 카테고리(햄버거아이콘) -->
                <div id="category" class="icons" style="width: 5%;">
                    <i style="font-size:35px" class="fa">&#xf0c9;</i>
    
                </div>
    
                <!-- 검색창 -->
                <div style="width: 63%;" align="center">
                    <div class="input-group mb-3" style="margin-top: 20px; width: 90%;">
                        <input type="search" class="form-control" placeholder="관심있는 클래스를 찾아보세요!">
                        <div class="input-group-append">
                            <button class="btn btn-success" type="submit" style="background-color: rgb(32, 155, 212);"><i
                                    class="fa fa-search"></i></button>
                        </div>
                    </div>
                </div>
    
                <!-- 우측 아이콘(마이페이지|찜|내클래스) -->
                <div style="width: 12%;" class="icons">
                    <div style="width: 33%;">
                        <i id="mypage" data-toggle="tooltip" title="마이페이지" class="fa fa-user-circle"
                            style="font-size:30px; color: rgb(94, 94, 94);"></i>
                    </div>
                    <div style="width: 33%;">
                        <i id="like" data-toggle="tooltip" title="찜 목록" class="fa fa-heart"
                            style="font-size:30px; color:rgb(94, 94, 94);"></i>
                    </div>
                    <div style="width: 34%;">
                        <i id="myclass" data-toggle="tooltip" title="내 강의실" class="fa fa-book"
                            style="font-size:30px; color:rgb(94, 94, 94); "></i>
                    </div>
                </div>
            </div>
        </div>
    
        <!-- 카테고리(햄버거아이콘 hover하면 보여짐) -->
        <div id="cat-detail">
    
             <ul>
	            <li>대분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	        </ul>
	        <ul>
	            <li>대분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	        </ul>
	        <ul>
	            <li>대분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	        </ul>
	        <ul>
	            <li>대분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	        </ul>
	        <ul>
	            <li>대분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	        </ul>
	        <ul>
	            <li>대분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	            <li>소분류</li>
	        </ul>
	        <ul>
	            <li>커뮤니티</li>
	            <li>스터디 게시판</li>
	            <li style="visibility: hidden;">소분류</li>
	            <li style="visibility: hidden;">소분류</li>
	            <li style="visibility: hidden;">소분류</li>
	            <li style="visibility: hidden;">소분류</li>
	        </ul>
        </div>
    
    
    
        <script>

            $(function () {
                //카테고리 hover 관련

                $("#category").hover(function () {
                    $("#cat-detail").show();
                }, function () {
                    $("#cat-detail").hide();
                })

                $("#cat-detail").hover(function () {
                    $("#cat-detail").show();
                }, function () {
                    $("#cat-detail").hide();
                })


                // 마이페이지 등 아이콘들 관련
                $("#mypage").tooltip();
                $("#mypage").hover(function () {
                    $(this).css("color", "green");
                    $(this).css("cursor", "pointer");

                }, function () {
                    $(this).css("color", "rgb(94, 94, 94)");
                });
                $("#like").tooltip();
                $("#like").hover(function () {
                    $(this).css("color", "rgb(226, 37, 37)");
                    $(this).css("cursor", "pointer");

                }, function () {
                    $(this).css("color", "rgb(94, 94, 94)");
                });

                $("#myclass").tooltip();
                $("#myclass").hover(function () {
                    $(this).css("color", "rgb(45, 117, 200)");
                    $(this).css("cursor", "pointer");

                }, function () {
                    $(this).css("color", "rgb(94, 94, 94)");
                });
            })
        </script>
    
    
    
    </body>
    
    </html>