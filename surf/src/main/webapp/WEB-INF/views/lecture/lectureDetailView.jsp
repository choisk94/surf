<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail</title>
<style>
    .outer{
        width: 1200px;
        margin: auto;
        margin-top: 50px;
    }
    .container{
        /*display: flex; */
        width: 1200px; 
        /*background: gray;*/
        padding: 0px 0px 0px 0px;
    }
    .class-element{width: 100%; height: 300px; display: flex;}
    .class-element img{
        width: 680px;
        height: 100%;
        margin: auto;
    }
    .class-main-info{margin-left: 40px; }
    .class-main-info>div{width: 400px; margin-bottom: 15px;}
    #info-title{
	    height:80px; 
	    font-size: 23px; 
	    font-weight: bolder;
	    line-
    }
    #info-price span{color: darkgray;}
    #info-star{font-size: 15px;}
    #info-btn *{border: 1px solid lightgray; width: 150px;}
    #info-btn button{margin: 0px 10px 0px 40px;}
    #info-btn a{
        background: rgb(32, 155, 212);
        color: white;
    }
    #info-btn *:hover{cursor: pointer; font-weight: bold;}
    .class-tab{
        width: 100%;
        height: 50px;
        border-bottom: 1px solid lightgray;
    }
    .class-tab>div{
        display: inline-block;
        width: 120px;
        height: 50px;
        font-size: 16px;
        margin-top: 5px;
    }
    .tab1{margin: 0px 10px 0px 30px;}
    .class-tab button:hover{font-weight: bold; color: rgb(32, 155, 212);}
    .class-full-info *{margin-bottom: 30px}
    #class-representative{width: 60%; height: 100%; margin-left: 10px;}
    .fa-star{color: rgb(231, 217, 17)}

    /*강의소개*/
    .class-title, .class-content{margin-left: 50px;}
    .class-title{
        padding: 50px 0 20px 0;
        width: 600px;
        font-size: 25px;
    }
    .class-content{
        width: 1000px;
        font-size: 17px;
        padding-bottom: 10px;
    }
    .class-notice{width: 100%; padding-left: 50px;}
    .notice-title{
        font-size: 18px; font-weight: bold;
        margin-bottom: 15px;
    }
    .notice-content{font-size: 15px; margin-bottom: 5px;}
    .notice-content>span{
        display: inline-block; 
        width: 150px;
        margin-bottom: 10px;
    }
    .class-slider{position: relative;}

    /*이미지 슬라이드*/
    .slider-area{
        width: 1140px; 
        text-align: center;
        margin: 0;
    }
    #slider {
        position: relative;
        overflow: hidden;
        margin: 20px auto 20px 160px;
        border-radius: 4px;
    }
    #slider ul {
        position: relative;
        margin: 0;
        padding: 0;
        height: 200px;
        list-style: none;
    }
    #slider ul li {
        position: relative;
        display: block;
        float: left;
        margin: 0;
        padding: 0;
        width: 800px;
        height: 600px;
        background: #ccc;
        text-align: center;
        line-height: 300px;
    }
    #slider img{width: 100%; height: 100%; }
    button.control_prev, button.control_next {
        position: absolute;
        top: 40%;
        z-index: 999;
        display: block;
        padding: 4% 3%;
        width: auto;
        height: auto;
        color: white;
        text-decoration: none;
        font-weight: 600;
        font-size: 18px;
        opacity: 0.8;
        cursor: pointer;
    }
    button.control_prev:hover, button.control_next:hover {
        opacity: 1;
        /*-webkit-transition: all 0.2s ease;*/
    }
    button.control_prev {
        border-radius: 0 2px 2px 0;
    }
    button.control_next {
        right: 0;
        border-radius: 2px 0 0 2px;
    }
    .slider_option {
        position: relative;
        margin: 10px auto;
        width: 160px;
        font-size: 18px;
    }
</style>
</head>
<body>

    <div class="outer">
        
        <!-- header -->
		<jsp:include page="../common/header.jsp" />
		
		<br><br>
        <div class="container">
		
			
	            
	            <div class="class-element">
	                
	                <div id="class-representative">
	                    <img src="${ l.introFile }" alt=""> 
	                </div>
	
	                <div class="class-main-info">
	                    <div id="info-title">${ l.classTitle }</div>
	                    <div id="info-price">
	                        <strong><fmt:formatNumber value="${ l.price }"/>원</strong><br>
	                        <span>(${ l.period })</span>
	                    </div>
	                    <div id="info-star">
	                        <i class="fas fa-star"></i> (${ l.star })
	                        &nbsp;&nbsp;&nbsp;
	                        ${ l.surveyCount }개의 수강후기 | 수강생 ${ l.students }명
	                    </div>
	                    <div id="info-teacher">
	                        <img src="" style="width: 45px; height:45px; border-radius: 50px;"> &nbsp;
	                        <strong>${ l.teacherName }</strong> 
	                    </div>
	                    <div id="info-btn">
	                        <button type="button" class="btn">찜하기</button>
	                        <a href="" class="btn">결제하기</a>
	                    </div>
	                </div>
	                
	            </div>
	            
	            <div class="class-tab">
	                <div class="tab1"><button class="btn" onclick="history.go(0);">클래스 소개</button></div>
	                <div class="tab2"><button class="btn" onclick="acyncMovePage('chapter.lec?cno=${ l.classNo }&&cti=${ l.classTitle }');">커리큘럼</button></div>
	                <div class="tab3"><button class="btn" onclick="acyncMovePage('review.lec?cno=${ l.classNo }');">수강 후기</button></div>
	                <div class="tab4"><button class="btn" onclick="acyncMovePage('inquiry.lec?cno=${ l.classNo }');">수강 문의</button></div>
	            </div>
	            
	            <div class="class-full-info">
	                <div class="class-title">
	                    <b>
	                    ${ l.introTitle }
	                    </b> 
	                </div>
	
	                <div class="class-content">
	                    <p>
	                        ${ l.introContent }
	                    </p>
	                </div>
	
					<c:forEach var="c" items="${ cList }">
		                <div class="class-slider">
		                	<div class="slider-area">
			                    <div id="slider">
			                        <button class="btn control_next">&gt;</button>
			                        <button class="btn control_prev">&lt;</button>
			                        <ul>
				                        <li><img src="${ c.introImage }" alt=""></li>
				                        <!-- <li>SLIDE 2</li>
				                        <li>SLIDE 3</li>
				                        <li style="background: #aaa;">SLIDE 4</li> -->
			                        </ul>  
			                    </div> 
			                    <div class="intro-content">
			                        ${ c.introContent }
			                    </div>
			                </div>
		                </div>
	                </c:forEach>
	                
	                <br>
	
	                <div class="class-notice">
	                    <div class="notice-title">
	                        강의 정보
	                    </div>
	                    <div class="notice-content">
	                        <span><strong>수강 가능 기간</strong></span>
	                        ${ l.posTerm }개월 <br>
	                        <span><strong>준비물</strong></span> 
	                        ${ l.need } <br>
	                        <span><strong>유의사항</strong></span>
	                        ${ l.note }
	                    </div>
	                </div>
	                <br>
            	</div>
            	
			
            
            <script>
                // 슬라이드 
                jQuery(document).ready(function ($) {

                $('#checkbox').change(function(){
                    setInterval(function () {
                        moveRight();
                    }, 3000);
                });

                var slideCount = $('#slider ul li').length;
                var slideWidth = $('#slider ul li').width();
                var slideHeight = $('#slider ul li').height();
                var sliderUlWidth = slideCount * slideWidth;
                
                $('#slider').css({ width: slideWidth, height: slideHeight });
                
                $('#slider ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });
                
                $('#slider ul li:last-child').prependTo('#slider ul');

                function moveLeft() {
                    $('#slider ul').animate({
                        left: + slideWidth
                    }, 200, function () {
                        $('#slider ul li:last-child').prependTo('#slider ul');
                        $('#slider ul').css('left', '');
                    });
                };

                function moveRight() {
                    $('#slider ul').animate({
                        left: - slideWidth
                    }, 200, function () {
                        $('#slider ul li:first-child').appendTo('#slider ul');
                        $('#slider ul').css('left', '');
                    });
                    };

                    $('button.control_prev').click(function () {
                        moveLeft();
                    });

                    $('button.control_next').click(function () {
                        moveRight();
                    });

                });    
            </script>

        </div>

        <script>
        
            function acyncMovePage(url){

            	
                // ajax option
                var ajaxOption = {
                	url : url,
                    async : true,
                    type : "POST",
                    dataType : "html",
                    cache : false,
                    success: console.log("성공")
                };
                
                $.ajax(ajaxOption).done(function(data){
                    $('.class-full-info').children().remove();
                    $('.class-full-info').html(data);
                });
            }
         
        </script>


        <!-- footer -->
        <jsp:include page="../common/footer.jsp" />

    </div>
    
</body>
</html>