<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
        	<b style="font-size: 17px">${ loginUser.userName }님 환영합니다</b>
            &nbsp;&nbsp; | &nbsp;&nbsp;
            <a href="logout.ad" style="font-size: 17px">로그아웃</a>  
        </div>
        
        <div class="nav1" id="nav-part2" style="height: 65%;">
            <div style="width: 20%;">
                <div style="width: 60%; float: left;">
                    <span style="font-size: 50px; font-weight:bold; color: rgb(32, 155, 212);">SURF</span>
                </div>
                <div style="width: 40%; height:100%; float:left;">
                    <img src="resources/images/redhair.png" style="height: 100%;">
                </div>
            </div>

            
            
        </div>
    </div>
    

</body>
</html>