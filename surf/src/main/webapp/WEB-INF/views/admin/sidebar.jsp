<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#nav ul.sub").hide();
            $("#nav ul.menu li").click(function(){
                $("ul",this).slideToggle("fast");
            });
        });
    </script>
    
<style>
  .table{text-align: center;}
  .outer{width: 1200px; margin:auto;}
   #nav { font-family:'arial'; width:230px;}
    #nav ul{ width:100%; margin:0; padding:0; }
    #nav ul.menu li{ position:relative; float:left; width:100%; list-style-type:none; font-size:40px; background-color: rgb(52, 152, 219);}
    #nav ul.menu li a{ display:block; width:100%; height:100%; line-height:80px; text-align: center; color:white; font-size: 20px; font-weight:bold; text-decoration:none; }
    #nav ul.menu li a:hover{ background:rgb(41, 128, 185); }
    #nav ul.menu li .sub a{ position:relative; float:left; display:block; width:100%; z-index:999; background:rgb(52, 152, 219); font-size: 15px; line-height:50px}
    #nav ul.menu li .sub a:hover{ background:rgb(41, 128, 185); color:#fff; }
  
</style>
<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<jsp:include page="header.jsp"/>
	<br>
	<hr style="background-color: #E0E0E0; height: 2px;">
	<br>
	<div class="outer">
    <div class="row">
      <!--??????????????? ?????? ?????????-->
          <div id="nav">
            <ul class="menu">
              <li><a href="list.bo">??????????????????</a>
              </li>
              <li><a href="#">??????????????????</a>
                <ul class="sub">
                  <li><a href="settleList.ad"> > ??????????????????</a></li>
                  <li><a href="pmList.ad"> > ??????????????????</a></li>
                </ul>
              </li>
              <li><a href="memList.ad">????????????</a>
              </li>
              <li><a href="#">???????????????</a>
              	<ul class="sub">
                  <li><a href="lectureList.ad"> > ????????? ????????????</a></li>
                  <li><a href="fundingList.ad"> > ????????? ????????????</a></li>
                </ul>
              </li>
              <li><a href="teacherList.ad">????????????</a>
              </li>
              <li><a href="#">??????????????????</a>
                <ul class="sub">
                  <li><a href="faqList.ad"> > FAQ</a></li>
                  <li><a href="noticeList.ad"> > ????????????</a></li>
                </ul>
              </li>
              <li><a href="#">??????????????????</a>
              </li>
              <li><a href="reportList.ad">????????????</a>
              </li>
            </ul>
          </div>

</body>
</html>