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
    <!-- awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
        #header-outer{
            width: 1200px; 
            /*border: 1px solid red;*/ 
            height: 120px;
            margin: auto;
        }

        .nav1{
            width: 100%;
            box-sizing: border-box;
            /*border: green solid 1px;*/
        }

        #nav-part1{
            height: 35%;
            padding-right: 20px;
            padding-top: 5px;
            font-size: 12px;
        }

        #nav-part1>a{
            text-decoration: none;
            color: black;
            font-weight: bold;
        }

        #nav-part1>a:hover {
            color:rgb(32, 155, 212);
        }

        #nav-part2>div, .icons>div{
            float: left;
            /*border: purple solid 1px;*/
            box-sizing: border-box;
            height: 100%;
        }  
  

        .icons{
            text-align: center;
            padding-top: 20px;
        }  

        #cat-detail{
            position: absolute;
            z-index: 999;
            margin: auto;
            left: 0;
            right: 0;
            display: none;
            background-color: whitesmoke;
            opacity: 0.9;
            width: 1000px; 
            height:250px;

        }



        #cat-detail, #cat-detail a{
            text-align: center;
            text-decoration: none; 
            font-size: 15px;
            color: rgb(94, 94, 94);
   
        }

        #cat-detail a:hover{
            color: rgb(32, 155, 212);
            font-weight: bold;
        }


        .loginButtons{
            margin: 3px;  
            font-size: 14px;
        }
        
        .loginInputs{
            font-size: 14px;
        }

        /*간편로그인 글자 중간 선 관련 스타일*/
        .hr-sect {
            display: flex;
            flex-basis: 100%;
            align-items: center;
            color: rgba(0, 0, 0, 0.35);
            font-size: 12px;
            margin: 8px 0px;
        }
        .hr-sect::before,
        .hr-sect::after {
            content: "";
            flex-grow: 1;
            background: rgba(0, 0, 0, 0.35);
            height: 1px;
            font-size: 0px;
            line-height: 0px;
            margin: 0px 16px;
        }


</style>
</head>
<body>

  <div id="header-outer">
        <div class="nav1" id="nav-part1" align="right">
            <a href="" data-toggle="modal" data-target="#loginModal">로그인</a>  &nbsp;&nbsp; | &nbsp;&nbsp;
            <!--
                <a href="">로그아웃</a>  &nbsp;&nbsp; | &nbsp;&nbsp;
            -->
            <a href="">회원가입</a>  &nbsp;&nbsp; | &nbsp;&nbsp;
            <a href="">고객센터</a>
            <!--
                <a href="">강사페이지</a>  &nbsp;&nbsp; | &nbsp;&nbsp;
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
	                  <input type="text" class="form-control loginInputs" placeholder="아이디" id="usr" name="username">
	                </div>
	
	                <div class="input-group mb-3">
	                    <div class="input-group-prepend">
	                      <span class="input-group-text">
	                        <i class="fa fa-lock"></i>
	                      </span>
	                    </div>
	                    <input type="password" class="form-control loginInputs" placeholder="비밀번호" id="pwd" name="username">
	                  </div>
	                  <div>
	                  <div class="hr-sect" style="font-size: 13px; color: rgb(94, 94, 94);">간편로그인</div> 
	                </div>
	
	                  <button type="button" class="btn btn-warning loginButtons" style="width: 45%;">카카오</button>
	                  <button type="button" class="btn btn-success loginButtons" style="width: 45%;">네이버</button>
	
	
	                <button type="submit" class="btn btn-primary loginButtons" style="width: 93%;">로그인</button>
	                <button type="button" class="btn btn-secondary loginButtons" style="width: 93%;">아이디/비밀번호 찾기</button>
	              </form>
	        </div>        
	      </div>
	    </div>
	  </div>
	  <!-- 로그인 modal 끝 -->


        <div class="nav1" id="nav-part2" style="height: 65%;">
            <div style="width: 20%;">
                <div style="width: 60%; float: left;">
                    <span style="font-size: 50px; font-weight:bold; color: rgb(32, 155, 212);">SURF</span>
                </div>
                <div style="width: 40%; height:100%; float:left;">
                    <img src="resources/images/redhair.png" style="height: 100%;">
                </div>
            </div>

            <div id="category" class="icons" style="width: 5%;" >
                <i style="font-size:35px" class="fa">&#xf0c9;</i>

            </div>
            <div style="width: 63%;" align="center">

                <div class="input-group mb-3" style="margin-top: 20px; width: 90%;">
                    <input type="search" class="form-control" placeholder="관심있는 클래스를 찾아보세요!">
                    <div class="input-group-append">
                      <button class="btn btn-success" type="submit" style="background-color: rgb(32, 155, 212);"><i class="fa fa-search"></i></button>
                    </div>
                </div>

            </div>
            <div style="width: 12%;" class="icons">
                <div style="width: 33%;" >
                    <i id="mypage" data-toggle="tooltip" title="마이페이지" class="fa fa-user-circle" style="font-size:30px; color: rgb(94, 94, 94);"></i>
                </div>
                <div style="width: 33%;">
                    <i  id="like" data-toggle="tooltip" title="찜 목록" class="fa fa-heart" style="font-size:30px; color:rgb(94, 94, 94);"></i>
                </div>
                <div style="width: 34%;">
                    <i id="myclass" data-toggle="tooltip" title="내 강의실" class="fa fa-book" style="font-size:30px; color:rgb(94, 94, 94); "></i>
                </div>
            </div>
        </div>
    </div>


    <div id="cat-detail">

        <table style="width: 100%; margin-top: 10px; height: 95%;" borde="1px">
            <thead>
                <tr>
                    <th width="17%">대분류</th>
                    <th width="16%">대분류</th>
                    <th width="17%">대분류</th>
                    <th width="16%">대분류</th>
                    <th width="17%">대분류</th>
                    <th width="17%">커뮤니티</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">스터디게시판</a></td>
                </tr>
                <tr>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href=""></a></td>
                </tr>
                <tr>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href=""></a></td>
                </tr>
                <tr>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href=""></a></td>
                </tr>
                <tr>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href="">소분류</a></td>
                    <td><a href=""></a></td>
                </tr>
                
            </tbody>
        </table>



    </div>



    <script>

        $(function(){
            //카테고리 hover 관련
            
            $("#category").hover(function(){
                $("#cat-detail").show();
            }, function(){
                $("#cat-detail").hide();
            })

            $("#cat-detail").hover(function(){
                $("#cat-detail").show();
            }, function(){
                $("#cat-detail").hide();
            })
            

            // 아이콘들 관련
            $("#mypage").tooltip();
            $("#mypage").hover(function(){
                $(this).css("color", "green");
                $(this).css("cursor", "pointer");

            }, function(){
                $(this).css("color", "rgb(94, 94, 94)");
            });            
            $("#like").tooltip();
            $("#like").hover(function(){
                $(this).css("color", "rgb(226, 37, 37)");
                $(this).css("cursor", "pointer");

            }, function(){
                $(this).css("color", "rgb(94, 94, 94)");
            });

            $("#myclass").tooltip();
            $("#myclass").hover(function(){
                $(this).css("color", "rgb(45, 117, 200)");
                $(this).css("cursor", "pointer");

            }, function(){
                $(this).css("color", "rgb(94, 94, 94)");
            });
        })
    </script>



</body>
</html>