<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>SURF</title>
<style>
    div{
        border: 0px solid black;
        box-sizing: border-box;
    }
    #outer{
        width: 1200px;
        height: auto;
        margin: auto;
    }
    #body-wrap{
        width: 1080px;
        height: auto;
        margin: auto;
    }
    #banner{
        width: 100%;
        height: auto;
        margin: 20px 0px;
    }

    /* 광고 배너 슬라이드 관련 */
    .slide_wrap { position: relative; width: 1080px; height: 340px; }
    .slide_box { width: 100%; margin: auto; overflow-x: hidden; }
    .slide_content { display: table; float: left; width: 1080px; height: 340px; }
    .slide_content > p { display: table-cell; vertical-align: middle; text-align: center; font-size: 100px; font-weight: bold; color: #555; }
    .slide_content > img { width: 100%;}
    .slide_content.slide01 { background: #ddbdff; }
    .slide_content.slide02 { background: #9fd6c2; }
    .slide_content.slide03 { background: #abe2f7; }
    .slide_content.slide04 { background: #f08c78; }
    .slide_content.slide05 { background: #fbdb65; }
    .slide_btn_box > button { position: absolute; top: 50%; margin-top: -55px; width: 100px; height: 100px; background: none; border: 0px; cursor: pointer; }
    .slide_btn_box > .slide_btn_prev { left: -10px; }
    .slide_btn_box > .slide_btn_next { right: -10px; }
    .slide_btn_box > button:focus { border: none; outline: none;}
    .slide_pagination { position: absolute; left: 50%; bottom: 10px; list-style: none; margin: 0; padding: 0; transform: translateX(-50%); }
    .slide_pagination .dot { display: inline-block; width: 15px; height: 15px; margin: 0 5px; overflow: hidden; background: #ddd; border-radius: 50%; transition: 0.3s; }
    .slide_pagination .dot.dot_active { background: steelblue; }
    .slide_pagination .dot a { display: block; width: 100%; height: 100%; }

    /* 카테고리 */
    #main-category{
        width: 100%;
        height: 120px;
    }
    .sort-box{
        margin-top: 15px;
        margin-left: 90px;
        width: 70px;
        float: left;
    }
    .sort-box:hover{
        cursor: pointer;
    }
    .sort-img{
        background-color: lightgray;
        width: 70px;
        height: 70px;
        border-radius: 70%;
        overflow: hidden;
        border: 0px;
    }
    .sort-img>img{
        width: 70px;
        height: 70px;
        object-fit:cover;
    }
    .sort-name{
        width: 70px;
        text-align: center;
        font-size: 14px;
    }

    /* 추천 클래스 */
    #recommend{
        width: 100%;
        height: 350px;
        position: relative;
    }
    #recommend-title{
        font-size: 20px;
        font-weight: 600;
        margin-top: 13px;
        margin-left: 23px;
        width: 110px;
        position: absolute;
    }
    #class-sort{
        margin-top: 20px;
        margin-left: 810px;
        position: absolute;
        font-size: 14px;
    }
    #class-sort div{
        float: left;
    }
    .vertical-line {
        float: left;
        border-color: gray;
        border-style: solid;
        border-width: 0 0 0 1px;
        margin: 4px 5px;
        width: 0px;
        height: 15px;
        vertical-align: middle;
    }
    .class-box{
        float: left;
        width: 240px;
        height: 270px;
        margin-top: 60px;
        margin-left: 24px;
    }
    .class-box:hover{
        cursor: pointer;
    }
    .class-img{
        width: 240px;
        height: 150px;
        background-color: lightsteelblue;
    }
    .like{
        margin-top: 7px;
        margin-left: 207px;
        width: 24px;
        opacity: 0.5;
    }
    /* height값 오토로 둬야? 클래스명이 길경우와 짧을 경우.. */
    .class-name{
        width: 240px;
        height: 50px;
        overflow: hidden;
        font-weight: 600;
    }
    .class-price{
        font-weight: 600;
    }
    #recommend hr{
        position: relative;
        top: 340px;
    }

    /* 커뮤니티 */
    #community{
        width: 50%;
        height: 420px;
        float: left;
        position: relative;
    }
    #community-title{
        font-size: 20px;
        font-weight: 600;
        top: 13px;
        left: 23px;
        position: absolute;
    }
    #more{
        position: absolute;
        width: 60px;
        top: 35px;
        left: 455px;
        font-size: 14px;
    }
    #post-wrap{
        position: absolute;
        top: 60px;
        left: 35px;
    }
    .post-box{
        width: 480px;
        height: 80px;
        margin-bottom: 7px;
    }
    .post-box:hover{
        cursor: pointer;
    }
    .post-img{
        width: 110px;
        height: 80px;
        float: left;
        background-color: lightslategrey;
    }
    .post-title{
        width: 350px;
        height: 27px;
        float: left;
        overflow: hidden;
        margin-top: 3px;
        margin-left: 10px;
        font-weight: 600;
    }
    .post-content{
        width: 350px;
        height: 46px;
        float: left;
        overflow: hidden;
        margin-top: 2px;
        margin-left: 10px;
        font-size: 14px;
    }

    /* 클래스 펀딩 */
    #funding{
        width: 50%;
        height: 420px;
        float: left;
        position: relative;
    }
    #funding-title{
        font-size: 20px;
        font-weight: 600;
        top: 13px;
        left: 23px;
        position: absolute;
    }
    #funding-banner{
        position: absolute;
        width: 480px;
        height: 340px;
        top: 60px;
        left: 35px;
    }

    /* 펀딩 배너 슬라이드 관련 */
    .slide_wrap2 { position: relative; width: 480px; height: 340px; }
    .slide_box2 { width: 100%; margin: auto; overflow-x: hidden; }
    .slide_content2 { display: table; float: left; width: 480px; height: 340px; }
    .slide_content2 > p { display: table-cell; vertical-align: middle; text-align: center; font-size: 100px; font-weight: bold; color: #555; }
    .slide_content2 > img { width: 100%;}
    .slide_content2.slide01 { background: #ddbdff; }
    .slide_content2.slide02 { background: #9fd6c2; }
    .slide_content2.slide03 { background: #abe2f7; }
    .slide_content2.slide04 { background: #f08c78; }
    .slide_content2.slide05 { background: #fbdb65; }
    .slide_btn_box2 > button { position: absolute; top: 50%; margin-top: -55px; width: 100px; height: 100px; background: none; border: 0px; cursor: pointer; }
    .slide_btn_box2 > .slide_btn_prev2 { left: -10px; }
    .slide_btn_box2 > .slide_btn_next2 { right: -10px; }
    .slide_btn_box2 > button:focus { border: none; outline: none;}
    .slide_pagination2 { position: absolute; left: 50%; bottom: 10px; list-style: none; margin: 0; padding: 0; transform: translateX(-50%); }
    .slide_pagination2 .dot2 { display: inline-block; width: 15px; height: 15px; margin: 0 5px; overflow: hidden; background: #ddd; border-radius: 50%; transition: 0.3s; }
    .slide_pagination2 .dot2.dot_active2 { background: steelblue; }
    .slide_pagination2 .dot2 a { display: block; width: 100%; height: 100%; }
</style>
</head>
<body>
	<div id="outer">
	
		<jsp:include page="common/header.jsp"/>
	
	    <div id="body-wrap">
	        <div id="banner">
	            <div class="slide_wrap">
	                <div class="slide_box">
	                    <div class="slide_list clearfix">
	                        <div class="slide_content slide01">
	                            <img src="resources/images/main/ad1.jpg">
	                        </div>
	                        <div class="slide_content slide02">
	                            <img src="resources/images/main/ad2.jpg">
	                        </div>
	                        <div class="slide_content slide03">
	                            <img src="resources/images/main/ad3.jpg">
	                        </div>
	                        <div class="slide_content slide04">
	                            <img src="resources/images/main/ad4.jpg">
	                        </div>
	                        <div class="slide_content slide05">
	                            <img src="resources/images/main/ad5.jpg">
	                        </div>
	                        <div class="slide_content slide06">
	                            <img src="resources/images/main/ad_none.jpg">
	                        </div>
	                    </div>
	                </div>
	                <div class="slide_btn_box">
	                    <button type="button" class="slide_btn_prev"><img src="resources/images/main/chevron-left.svg" alt=""></button>
	                    <button type="button" class="slide_btn_next"><img src="resources/images/main/chevron-right.svg" alt=""></button>
	                </div>
	                <ul class="slide_pagination"></ul>
	            </div>
	        </div>
	        <script>
	            // 광고 배너 슬라이드 관련
	            (function () {
	              const slideList = document.querySelector('.slide_list');  // Slide parent dom
	              const slideContents = document.querySelectorAll('.slide_content');  // each slide dom
	              const slideBtnNext = document.querySelector('.slide_btn_next'); // next button
	              const slideBtnPrev = document.querySelector('.slide_btn_prev'); // prev button
	              const pagination = document.querySelector('.slide_pagination');
	              const slideLen = slideContents.length;  // slide length
	              const slideWidth = 1080; // slide width
	              const slideSpeed = 300; // slide speed
	              const startNum = 0; // initial slide index (0 ~ 4)
	              
	              slideList.style.width = slideWidth * (slideLen + 2) + "px";
	              
	              // Copy first and last slide
	              let firstChild = slideList.firstElementChild;
	              let lastChild = slideList.lastElementChild;
	              let clonedFirst = firstChild.cloneNode(true);
	              let clonedLast = lastChild.cloneNode(true);
	        
	              // Add copied Slides
	              slideList.appendChild(clonedFirst);
	              slideList.insertBefore(clonedLast, slideList.firstElementChild);
	        
	              // Add pagination dynamically
	              let pageChild = '';
	              for (var i = 0; i < slideLen; i++) {
	                pageChild += '<li class="dot';
	                pageChild += (i === startNum) ? ' dot_active' : '';
	                pageChild += '" data-index="' + i + '"><a href="#"></a></li>';
	              }
	              pagination.innerHTML = pageChild;
	              const pageDots = document.querySelectorAll('.dot'); // each dot from pagination
	        
	              slideList.style.transform = "translate3d(-" + (slideWidth * (startNum + 1)) + "px, 0px, 0px)";
	        
	              let curIndex = startNum; // current slide index (except copied slide)
	              let curSlide = slideContents[curIndex]; // current slide dom
	              curSlide.classList.add('slide_active');
	        
	              // 자동 슬라이드 배너
	              window.addEventListener('load', function() {
	                setTimeout(showSlides, 5000);
	                function showSlides() {
	                    for(var i=0;i<slideLen;i++){
	                        slideList.style.transition = slideSpeed + "ms";
	                        slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 2)) + "px, 0px, 0px)";    
	                    }
	                    if (curIndex === slideLen - 1) {
	                        setTimeout(function() {
	                            slideList.style.transition = "0ms";
	                            slideList.style.transform = "translate3d(-" + slideWidth + "px, 0px, 0px)";
	                        }, slideSpeed);
	                        curIndex = -1;
	                    }
	                    curSlide.classList.remove('slide_active');
	                    pageDots[(curIndex === -1) ? slideLen - 1 : curIndex].classList.remove('dot_active');
	                    curSlide = slideContents[++curIndex];
	                    curSlide.classList.add('slide_active');
	                    pageDots[curIndex].classList.add('dot_active');
	                    setTimeout(showSlides, 5000);
	                }
	              });
	
	              /** Next Button Event */
	              slideBtnNext.addEventListener('click', function() {
	                if (curIndex <= slideLen - 1) {
	                  slideList.style.transition = slideSpeed + "ms";
	                  slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 2)) + "px, 0px, 0px)";
	                }
	                if (curIndex === slideLen - 1) {
	                  setTimeout(function() {
	                    slideList.style.transition = "0ms";
	                    slideList.style.transform = "translate3d(-" + slideWidth + "px, 0px, 0px)";
	                  }, slideSpeed);
	                  curIndex = -1;
	                }
	                curSlide.classList.remove('slide_active');
	                pageDots[(curIndex === -1) ? slideLen - 1 : curIndex].classList.remove('dot_active');
	                curSlide = slideContents[++curIndex];
	                curSlide.classList.add('slide_active');
	                pageDots[curIndex].classList.add('dot_active');
	              });
	        
	              /** Prev Button Event */
	              slideBtnPrev.addEventListener('click', function() {
	                if (curIndex >= 0) {
	                  slideList.style.transition = slideSpeed + "ms";
	                  slideList.style.transform = "translate3d(-" + (slideWidth * curIndex) + "px, 0px, 0px)";
	                }
	                if (curIndex === 0) {
	                  setTimeout(function() {
	                    slideList.style.transition = "0ms";
	                    slideList.style.transform = "translate3d(-" + (slideWidth * slideLen) + "px, 0px, 0px)";
	                  }, slideSpeed);
	                  curIndex = slideLen;
	                }
	                curSlide.classList.remove('slide_active');
	                pageDots[(curIndex === slideLen) ? 0 : curIndex].classList.remove('dot_active');
	                curSlide = slideContents[--curIndex];
	                curSlide.classList.add('slide_active');
	                pageDots[curIndex].classList.add('dot_active');
	              });
	        
	              /** Pagination Button Event */
	              let curDot;
	              Array.prototype.forEach.call(pageDots, function (dot, i) {
	                dot.addEventListener('click', function (e) {
	                  e.preventDefault();
	                  curDot = document.querySelector('.dot_active');
	                  curDot.classList.remove('dot_active');
	                  
	                  curDot = this;
	                  this.classList.add('dot_active');
	        
	                  curSlide.classList.remove('slide_active');
	                  curIndex = Number(this.getAttribute('data-index'));
	                  curSlide = slideContents[curIndex];
	                  curSlide.classList.add('slide_active');
	                  slideList.style.transition = slideSpeed + "ms";
	                  slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 1)) + "px, 0px, 0px)";
	                });
	              });
	            })();
	        </script>
	
	        <div id="main-category">
	            <div class="sort-box">
	                <div class="sort-img"><img src="resources/images/main/develop.jpg" alt=""></div>
	                <div class="sort-name">개발</div>
	            </div>
	            <div class="sort-box">
	                <div class="sort-img"><img src="resources/images/main/writing.jpg" alt=""></div>
	                <div class="sort-name">글쓰기</div>
	            </div>
	            <div class="sort-box">
	                <div class="sort-img"><img src="resources/images/main/workout.jpg" alt=""></div>
	                <div class="sort-name">운동</div>
	            </div>
	            <div class="sort-box">
	                <div class="sort-img"><img src="resources/images/main/crafts.jpg"></div>
	                <div class="sort-name">공예</div>
	            </div>
	            <div class="sort-box">
	                <div class="sort-img"><img src="resources/images/main/drawing.jpg" alt=""></div>
	                <div class="sort-name">드로잉</div>
	            </div>
	            <div class="sort-box">
	                <div class="sort-img"><img src="resources/images/main/baking.jpg" alt=""></div>
	                <div class="sort-name">쿠킹</div>
	            </div>
	
	        </div>
	        <script>
	            $(document).ready(function(){
	                $(".sort-box").hover(function(){
	                    $(this).children(".sort-img").css("opacity", "0.8");
	                }, function(){
	                    $(this).children(".sort-img").css("opacity", "1");
	                })
	            });
	        </script>
	
	        <div id="recommend">
	            <div id="recommend-title">추천 클래스</div>
	            <div id="class-sort">
	                <div>찜개수 기준</div>
	                <div class="vertical-line"></div>
	                <div>별점 기준</div>
	                <div class="vertical-line"></div>
	                <div>수강생수 기준</div>
	            </div>
	            <div class="class-box">
	                <div class="class-img"><img class="like" src="resources/images/main/heart-empty.png" alt=""></div>
	                <div class="class-name">클래스명(길이가 길 경우 이정도까지 길수 있습니다)</div>
	                <div class="class-teacher">강사명</div>
	                <div class="class-price">110,000원</div>
	            </div>
	            <div class="class-box">
	                <div class="class-img"><img class="like" src="resources/images/main/heart-empty.png" alt=""></div>
	                <div class="class-name">클래스명(길이가 길 경우 이정도까지 길수 있습니다)</div>
	                <div class="class-teacher">강사명</div>
	                <div class="class-price">110,000원</div>
	            </div>
	            <div class="class-box">
	                <div class="class-img"><img class="like" src="resources/images/main/heart-empty.png" alt=""></div>
	                <div class="class-name">클래스명(길이가 길 경우 이정도까지 길수 있습니다)</div>
	                <div class="class-teacher">강사명</div>
	                <div class="class-price">110,000원</div>
	            </div>
	            <div class="class-box">
	                <div class="class-img"><img class="like" src="resources/images/main/heart-empty.png" alt=""></div>
	                <div class="class-name">클래스명(길이가 길 경우 이정도까지 길수 있습니다)</div>
	                <div class="class-teacher">강사명</div>
	                <div class="class-price">110,000원</div>
	            </div>
	            <hr>
	            <script>
	                $(document).ready(function(){
	                    // 클래스이미지만 투명도 주도록 변경(하트제외)
	                    $(".class-box").hover(function(){
	                        $(this).children(".class-img").css("opacity", "0.8");
	                    }, function(){
	                        $(this).children(".class-img").css("opacity", "1");
	                    })
	                    $(".like").hover(function(){
	                        $(this).attr("src", $(this).attr("src").replace("heart-empty.png", "heart-fill.png"));
	                    }, function(){
	                        $(this).attr("src", $(this).attr("src").replace("heart-fill.png", "heart-empty.png"));
	                    })
	                });
	            </script>
	        </div>
	
	        <div id="community">
	            <div id="community-title">커뮤니티</div>
	            <div id="more">더보기 ></div>
	            <div id="post-wrap">
	                <div class="post-box">
	                    <div class="post-img"></div>
	                    <div class="post-title">커뮤니티 포스트 제목</div>
	                    <div class="post-content">커뮤니티 포스트 내용 아마 어느 정도 길이가 있을듯합니다 내용으로 채워보기</div>
	                </div>
	                <div class="post-box">
	                    <div class="post-img"></div>
	                    <div class="post-title">커뮤니티 포스트 제목</div>
	                    <div class="post-content">커뮤니티 포스트 내용 아마 어느 정도 길이가 있을듯~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</div>
	                </div>
	                <div class="post-box">
	                    <div class="post-img"></div>
	                    <div class="post-title">커뮤니티 포스트 제목</div>
	                    <div class="post-content">커뮤니티 포스트 내용 아마 어느 정도 길이가 있을듯~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</div>
	                </div>
	                <div class="post-box">
	                    <div class="post-img"></div>
	                    <div class="post-title">커뮤니티 포스트 제목</div>
	                    <div class="post-content">커뮤니티 포스트 내용 아마 어느 정도 길이가 있을듯~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</div>
	                </div>
	            </div>
	            <script>
	                $(document).ready(function(){
	                    $(".post-box").hover(function(){
	                        $(this).children(".post-img").css("opacity", "0.8");
	                    }, function(){
	                        $(this).children(".post-img").css("opacity", "1");
	                    })
	                });
	            </script>
	        </div>
	
	        <div id="funding">
	            <div id="funding-title">펀딩 중인 클래스</div>
	            <div id="funding-banner">
	                <div class="slide_wrap2">
	                    <div class="slide_box2">
	                        <div class="slide_list2 clearfix">
	                            <div class="slide_content2 slide01">
	                                <p>1</p>
	                            </div>
	                            <div class="slide_content2 slide02">
	                                <p>2</p>
	                            </div>
	                            <div class="slide_content2 slide03">
	                                <p>3</p>
	                            </div>
	                            <div class="slide_content2 slide04">
	                                <p>4</p>
	                            </div>
	                            <div class="slide_content2 slide05">
	                                <p>5</p>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="slide_btn_box2">
	                        <button type="button" class="slide_btn_prev2"><img src="resources/images/main/chevron-left.svg" alt=""></button>
	                        <button type="button" class="slide_btn_next2"><img src="resources/images/main/chevron-right.svg" alt=""></button>
	                    </div>
	                    <ul class="slide_pagination2"></ul>
	                </div>
	            </div>
	        </div>
	        <script>
	            // 펀딩 배너 슬라이드 관련
	            (function () {
	              const slideList = document.querySelector('.slide_list2');  // Slide parent dom
	              const slideContents = document.querySelectorAll('.slide_content2');  // each slide dom
	              const slideBtnNext = document.querySelector('.slide_btn_next2'); // next button
	              const slideBtnPrev = document.querySelector('.slide_btn_prev2'); // prev button
	              const pagination = document.querySelector('.slide_pagination2');
	              const slideLen = slideContents.length;  // slide length
	              const slideWidth = 480; // slide width
	              const slideSpeed = 300; // slide speed
	              const startNum = 0; // initial slide index (0 ~ 4)
	              
	              slideList.style.width = slideWidth * (slideLen + 2) + "px";
	              
	              // Copy first and last slide
	              let firstChild = slideList.firstElementChild;
	              let lastChild = slideList.lastElementChild;
	              let clonedFirst = firstChild.cloneNode(true);
	              let clonedLast = lastChild.cloneNode(true);
	        
	              // Add copied Slides
	              slideList.appendChild(clonedFirst);
	              slideList.insertBefore(clonedLast, slideList.firstElementChild);
	        
	              // Add pagination dynamically
	              let pageChild = '';
	              for (var i = 0; i < slideLen; i++) {
	                pageChild += '<li class="dot2';
	                pageChild += (i === startNum) ? ' dot_active2' : '';
	                pageChild += '" data-index="' + i + '"><a href="#"></a></li>';
	              }
	              pagination.innerHTML = pageChild;
	              const pageDots = document.querySelectorAll('.dot2'); // each dot from pagination
	        
	              slideList.style.transform = "translate3d(-" + (slideWidth * (startNum + 1)) + "px, 0px, 0px)";
	        
	              let curIndex = startNum; // current slide index (except copied slide)
	              let curSlide = slideContents[curIndex]; // current slide dom
	              curSlide.classList.add('slide_active2');
	        
	              // 자동 슬라이드 배너
	              window.addEventListener('load', function() {
	                setTimeout(showSlides, 5000);
	                function showSlides() {
	                    for(var i=0;i<slideLen;i++){
	                        slideList.style.transition = slideSpeed + "ms";
	                        slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 2)) + "px, 0px, 0px)";    
	                    }
	                    if (curIndex === slideLen - 1) {
	                        setTimeout(function() {
	                            slideList.style.transition = "0ms";
	                            slideList.style.transform = "translate3d(-" + slideWidth + "px, 0px, 0px)";
	                        }, slideSpeed);
	                        curIndex = -1;
	                    }
	                    curSlide.classList.remove('slide_active2');
	                    pageDots[(curIndex === -1) ? slideLen - 1 : curIndex].classList.remove('dot_active2');
	                    curSlide = slideContents[++curIndex];
	                    curSlide.classList.add('slide_active2');
	                    pageDots[curIndex].classList.add('dot_active2');
	                    setTimeout(showSlides, 5000);
	                }
	              });
	
	              /** Next Button Event */
	              slideBtnNext.addEventListener('click', function() {
	                if (curIndex <= slideLen - 1) {
	                  slideList.style.transition = slideSpeed + "ms";
	                  slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 2)) + "px, 0px, 0px)";
	                }
	                if (curIndex === slideLen - 1) {
	                  setTimeout(function() {
	                    slideList.style.transition = "0ms";
	                    slideList.style.transform = "translate3d(-" + slideWidth + "px, 0px, 0px)";
	                  }, slideSpeed);
	                  curIndex = -1;
	                }
	                curSlide.classList.remove('slide_active2');
	                pageDots[(curIndex === -1) ? slideLen - 1 : curIndex].classList.remove('dot_active2');
	                curSlide = slideContents[++curIndex];
	                curSlide.classList.add('slide_active2');
	                pageDots[curIndex].classList.add('dot_active2');
	              });
	        
	              /** Prev Button Event */
	              slideBtnPrev.addEventListener('click', function() {
	                if (curIndex >= 0) {
	                  slideList.style.transition = slideSpeed + "ms";
	                  slideList.style.transform = "translate3d(-" + (slideWidth * curIndex) + "px, 0px, 0px)";
	                }
	                if (curIndex === 0) {
	                  setTimeout(function() {
	                    slideList.style.transition = "0ms";
	                    slideList.style.transform = "translate3d(-" + (slideWidth * slideLen) + "px, 0px, 0px)";
	                  }, slideSpeed);
	                  curIndex = slideLen;
	                }
	                curSlide.classList.remove('slide_active2');
	                pageDots[(curIndex === slideLen) ? 0 : curIndex].classList.remove('dot_active2');
	                curSlide = slideContents[--curIndex];
	                curSlide.classList.add('slide_active2');
	                pageDots[curIndex].classList.add('dot_active2');
	              });
	        
	              /** Pagination Button Event */
	              let curDot;
	              Array.prototype.forEach.call(pageDots, function (dot, i) {
	                dot.addEventListener('click', function (e) {
	                  e.preventDefault();
	                  curDot = document.querySelector('.dot_active2');
	                  curDot.classList.remove('dot_active2');
	                  
	                  curDot = this;
	                  this.classList.add('dot_active2');
	        
	                  curSlide.classList.remove('slide_active2');
	                  curIndex = Number(this.getAttribute('data-index2'));
	                  curSlide = slideContents[curIndex];
	                  curSlide.classList.add('slide_active2');
	                  slideList.style.transition = slideSpeed + "ms";
	                  slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 1)) + "px, 0px, 0px)";
	                });
	              });
	                
	            })();
	        </script>
	    </div>
	    
		<jsp:include page="common/footer.jsp"/>
		
	</div>
</body>
</html>