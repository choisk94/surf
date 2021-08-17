<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SURF</title>
</head>
<!-- JQuery -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
window.jQuery3_4_1 = jQuery.noConflict(true);
</script>
<!-- Slick Slider -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
<!-- XEicon 아이콘 -->
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
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
        height: 1350px;
        margin: auto;
    }
    #banner{
        width: 100%;
        height: auto;
        margin-top: 40px;
        margin-bottom: 20px;
    }

    /* 광고 배너 슬라이드 관련 */
    .slide-wrap { position: relative; width: 1080px; height: 340px; }
    .slide-box { width: 100%; margin: auto; overflow-x: hidden; }
    .img-box > img { display:block; width:100%; }

    /* 메인 부모 */
    .slide-list1 {
        position:relative;
    }
    .slide-list1 .item {
        position:relative;
    }

    /* 버튼 요소 */
    .slide-list1 button {
        position:absolute;
        z-index:1;
        top:47%;
        transform:translateY(-50%);
        width:71px;
        height:71px;
        /* 버튼 속 글씨 지우는 방법 */
        color:transparent;
        font-size:0;
    }
    /* 버튼 속 아이콘 통일 화 */
    .slide-list1 button::before {
        font-family:"xeicon";
        display:block;
        color:rgb(70, 70, 70);
        font-size:50px;
    }

    /* 버튼 요소 - 좌 */
    .slide-list1 button.slick-prev {
        left:10px;
    }
    /* 버튼 요소 - 좌 아이콘 넣기위해서 */
    .slide-list1 button.slick-prev::before {
        content:"\e93d";
    }


    /* 버튼 요소 - 우 */
    .slide-list1 button.slick-next {
        right:10px;
    }
    /* 버튼 요소 - 우 아이콘 넣기위해서 */
    .slide-list1 button.slick-next::before {
        content:"\e940";
    }
    /* 페이지네이션 */
    .slick-dots {bottom: 7px;}

    /* 슬라이더 시작 */
    /* 슬라이더 시작 - 슬라이더 속 텍스트 이동 및 통일화 */
    .slide-list1 .text-box {
        position:absolute;
        top:50%;
        left:50%;
        width:100%;
        transform:translateX(-50%) translateY(-50%);
        z-index:2;
    }
    .slide-list1 .text-box p {
        font-size:30px;
        text-align:center;
        color:#000;
    }

    /* 애니메이션 v1 트렌지션으로 줌 */


    .slide-list1 .item-1 .text-box .text1 {
        opacity:0;
        transform:translateX(-50px);
        /* 앞에 있는 숫자는 애니메이션 동안 뒤에 숫자는 딜레이 */
        transition:all .5s .5s;
    }

    .slide-list1 .slick-active .item-1 .text-box .text1 {
        opacity:1;
        transform:translateX(0);
    }

    .slide-list1 .item-1 .text-box .text2 {
        opacity:0;
        transform:translateX(50px);
        transition:all .5s .5s;
    }

    .slide-list1 .slick-active .item-1 .text-box .text2 {
        opacity:1;
        transform:translateX(0);
    }

    .slide-list1 .item-1 .text-box .text3 {
        opacity:0;
        transform:translateY(-50px);
        transition:all .5s .5s;
    }

    /* full 버전 */
    .slide-list1 > .slick-list > .slick-track > .slick-active > div > .item-1 > .text-box > .text3 {
        opacity:1;
        transform:translateY(0);
    }



    /* 애니메이션 v2 키프레임으로 애니메이션 적용 */
    /* 트렌지션으로 주면 약간의 딜레이가 생겨서 */

    .slide-list1 .item-2 .text-box .text1 {
        opacity:0;
    }

    .slide-list1 .slick-active .item-2 .text-box .text1 {
        animation:ani 1 .5s .5s both;
    }

    .slide-list1 .item-2 .text-box .text2 {
        opacity:0;
        font-size:15px;
    }

    .slide-list1 .slick-active .item-2 .text-box .text2 {
        animation-name:ani;
        animation-delay: .7s;
        animation-duration: .5s;
        /* 몇번 실행할 것인지 */
        animation-iteration-count:1;
        /* 실행하고 마지막 100%를 유지하기 */
        animation-fill-mode: both;
    }

    .slide-list1 .item-2 .text-box .text3 {
        opacity:0;
        font-size:12px;
        /*word-break:keep-all;*/
        
    }
    /* full 버전 */
    .slide-list1 > .slick-list > .slick-track > .slick-active > div > .item-2 > .text-box > .text3 {
        animation-name:ani;
        animation-delay: .9s;
        animation-duration: .5s;
        /* 몇번 실행할 것인지 */
        animation-iteration-count:1;
        /* 실행하고 마지막 100%를 유지하기 */
        animation-fill-mode: both;
    }

    @keyframes ani {
        0% {
            opacity:0;
        }
        100% {
            opacity:1;
        }
    }


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
        margin-top: 4px;
    }
    .condition:hover{
    	cursor:pointer;
    }

    /* 추천 클래스 */
    #recommend{
        width: 100%;
        height: 360px;
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
        border-color: lightgray;
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
    }
    .class-img>img{
    	width: 240px;
    	height: 150px;
    	object-fit:cover;
    }
    .like{
        margin-top: 7px;
        margin-left: 207px;
        width: 24px;
        opacity: 0.5;
    }
    .class-name{
        width: 235px;
        height: 50px;
        overflow: hidden;
        text-overflow: ellipsis;
        font-weight: 600;
        margin: 4px 2px 0px 2px;
    }
    .class-teacher{
        width: 235px;
        margin: 0 2px;
    }
    .class-price{
        font-weight: 600;
        width: 160px;
        float: left;
        margin: 0 2px;
    }
    .score{
        float: right;
        margin-right: 5px;
        height: 27px;
    }
    .score>img{
        float: left;
        width: 20px;
    }
    .score>p{
        float: left;
        margin-top: -2px;
    }
    #recommend hr{
        position: relative;
        top: 345px;
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
        top: 30px;
        left: 455px;
        font-size: 14px;
        font-weight: 600;
    }
    #more:hover{
    	cursor:pointer;
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
        position: relative;
        background-color: rgb(250, 250, 250);
    }
    .post-box:hover{
        cursor: pointer;
    }
    .post-title{
        position: absolute;
        width: 360px;
        height: 27px;
        float: left;
        overflow: hidden;
        text-overflow: ellipsis;
	    white-space: nowrap;
        top: 9px;
        left: 14px;
        font-weight: 600;
    }
    .post-box>img{
        position: absolute;
        top: 10px;
        left: 425px;
    }
    .post-writer{
        position: absolute;
        width: 88px;
        top: 34px;
        left: 380px;
        font-size: 13px;
        text-align: right;
        overflow: hidden;
        text-overflow: ellipsis;
	    white-space: nowrap;
    }
    .post-date{
        position: absolute;
        top: 52px;
        left: 398px;
        font-size: 13px;
        text-align: right;
    }
    .post-content{
        position: absolute;
        width: 360px;
        height: 40px;
        float: left;
        overflow: hidden;
        top: 34px;
        left: 14px;
        font-size: 13px;
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

</style>
<body>
	<div id="outer">
	
		<jsp:include page="common/header.jsp"/>
	
	    <div id="body-wrap">
	        <div id="banner">
	            <div class="slide-wrap">
	                <div class="slide-box">
	                    <section class="slide-list1">
					        
					    </section>
	                </div>
	            </div>
	        </div>
	        <script type="text/javascript">
	        
	        	// 광고 배너 ajax 조회
	        	$(function(){		                    	
		             //ajaxSelectAdList();
		        })
	                    
	            function ajaxSelectAdList() {
	                    		
		            $.ajax({
		    				url:"ajaxSelectAdList.do",
		    				success:function(alist){
			    				console.log(alist);
			    									    								
			    				var value="";
			    								
			    				if(alist == null) {
			    				value += "<div class=\"item item-1\">"
			    						+ "<picture class=\"img-box\">"
			    						+ "<img src=\"resources/images/main/ad_none.jpg\">"
			    						+ "</picture>"
			    						+ "</div>" ;
			    				}else {
				    				for(var a in alist){
				    					value += "<div class=\"item item-" + a + "\">"
				    							 + "<picture class=\"img-box\">"
				    						     + "<img src=\"" + alist[a].changeName 
				    						     + "\" onclick=\"location.href='" + alist[a].adLink + "';\">"
				    						     + "</picture>"
				    						     + "</div>" ;
				    				}
			    				}
			    								
			    				$(".slide-list1").html(value);
			    								
		    				},error:function(){
		    					console.log("광고 배너 조회 ajax 통신 실패");
		    				}
					})
	            }
	        
	            
	            console.clear();
	            jQuery3_4_1('.slide-list1').slick({
	                autoplay: true,
	                autoplaySpeed: 5000,
	                dots:true
	            });
	        
	        </script>
	
	        <div id="main-category">
	            <div class="sort-box">
	                <div class="sort-img"><img src="resources/images/main/develop.jpg"></div>
	                <div class="sort-name">개발</div>
	            </div>
	            <div class="sort-box">
	                <div class="sort-img"><img src="resources/images/main/writing.jpg"></div>
	                <div class="sort-name">글쓰기</div>
	            </div>
	            <div class="sort-box">
	                <div class="sort-img"><img src="resources/images/main/workout.jpg"></div>
	                <div class="sort-name">운동</div>
	            </div>
	            <div class="sort-box">
	                <div class="sort-img"><img src="resources/images/main/crafts.jpg"></div>
	                <div class="sort-name">공예</div>
	            </div>
	            <div class="sort-box">
	                <div class="sort-img"><img src="resources/images/main/drawing.jpg"></div>
	                <div class="sort-name">드로잉</div>
	            </div>
	            <div class="sort-box">
	                <div class="sort-img"><img src="resources/images/main/baking.jpg" alt=""></div>
	                <div class="sort-name">쿠킹</div>
	            </div>
	        </div>
	        <script>
	            $(function(){
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
	            	<input type="hidden" name="condition" value="1">
	                <div class="condition">찜개수 기준
	                	<input type="hidden" value="1">
	                </div>
	                <div class="vertical-line"></div>
	                <div class="condition">별점 기준
	                	<input type="hidden" value="2">
	                </div>
	                <div class="vertical-line"></div>
	                <div class="condition">수강생수 기준
	                	<input type="hidden" value="3">
	                </div>
	            </div>
	            <script>
	            	$(".condition").click(function(){
	            		$("input[name=condition]").val($(this).children("input").val());
	            		ajaxRecomClassList();
	            	});
	            </script>
	            
	            <div id="class-wrap"></div>
	            <hr>
	            <script>
		            $(document).on("mouseenter", ".class-box", function() {
		            	$(this).children(".class-img").css("opacity", "0.8");
		            });
		            $(document).on("mouseleave", ".class-box", function() {
		            	$(this).children(".class-img").css("opacity", "1");
		            });
		            $(document).on("click", ".class-box", function() {
		            	location.href="detail.lec?cno=" + $(this).children("input").val();
		            });

	                /*
	                $(".like").hover(function(){
	                    $(this).attr("src", $(this).attr("src").replace("heart-empty.png", "heart-fill.png"));
	                }, function(){
	                    $(this).attr("src", $(this).attr("src").replace("heart-fill.png", "heart-empty.png"));
	                });
	                */
	                    
	                $(function(){
	                    ajaxRecomClassList();
	                });
	                
	                function ajaxRecomClassList() {
	                	$.ajax({
	                		url:"ajaxRecomClassList.do",
	                		data:{"condition":$("input[name=condition]").val()},
							success:function(clist){
								
								var value="";
								
			    				for(var c in clist){
				    				value += "<div class=\"class-box\">"
				    						 + "<input type=\"hidden\" value=\"" + clist[c].classNo + "\"/>"
				    						 + "<div class=\"class-img\">"
				    					     + "<img src=\"" + clist[c].thumbnail + "\"></div>"
				    					     + "<div class=\"class-name\">" + clist[c].classTitle + "</div>"
				    					     + "<div class=\"class-teacher\">" + clist[c].teacherName + "</div>"
				   						     + "<div class=\"class-price\">" + clist[c].classPrice + "</div>"
				   						     + "<div class=\"score\">"
				   		                     + "<img src=\"https://img.icons8.com/color/48/000000/filled-star--v1.png\"/>"
				   		                     + "<p>&nbsp;("+clist[c].score+")</p>"
				   		                	 + "</div>"
				   						     + "</div>";
				    			}
			    				
			    				$("#class-wrap").html(value);
								
							},error:function(){
								console.log("추천 클래스 조회 ajax 통신 실패");
							}
	                	})
	                }
	            </script>
	        </div>
	
	        <div id="community">
	            <div id="community-title">커뮤니티</div>
	            <div id="more">더보기 ></div>
	            <div id="post-wrap"></div>
	            <script>
		            $(document).on("click", "#more", function() {
		            	location.href="list.sb";
		            });
	            
		            $(document).on("mouseenter", ".post-box", function() {
		            	$(this).css("background-color", "rgb(245, 245, 245)");
		            });
		            $(document).on("mouseleave", ".post-box", function() {
		            	$(this).css("background-color", "rgb(250, 250, 250)");
		            });
		            $(document).on("click", ".post-box", function() {
		            	location.href="detail.sb?sno=" + $(this).children("input").val();
		            });
	            
		            $(function(){
		            	ajaxPostList();
	                });
	                
	                function ajaxPostList() {
	                	$.ajax({
	                		url:"ajaxPostList.do",
							success:function(plist){
								
								var value="";
								
			    				for(var p in plist){
			    					
			    					var originalContent = plist[p].studyContent;
			    					var convertContent = originalContent.replace(/(<([^>]+)>)/ig,"");

			    					value += "<div class=\"post-box\">"
				    						 + "<input type=\"hidden\" value=\"" + plist[p].studyNo + "\"/>"
				    						 + "<div class=\"post-title\">" + plist[p].studyTitle + "</div>"
				    					     + "<img src=\"https://img.shields.io/badge/%EB%AA%A8%EC%A7%91%EC%A4%91-00B388?style=flat-square&&logoColor=white\">"
				    					     + "<div class=\"post-writer\">" + plist[p].writer + "</div>"
				    					     + "<div class=\"post-date\">" + plist[p].createDate + "</div>"
				   						     + "<div class=\"post-content\">" + convertContent + "</div>"
				   						     + "</div>";
				    			}
			    				
			    				$("#post-wrap").html(value);
								
							},error:function(){
								console.log("추천 클래스 조회 ajax 통신 실패");
							}
	                	})
	                }
	            </script>
	        </div>
	
	        <div id="funding">
	            <div id="funding-title">펀딩 중인 클래스</div>
	            <div id="funding-banner">
	                <div class="slide_wrap2">
	                    <div class="slide_box2">
	                        <div class="slide-list2">
	                        	<div class="item item-1">
							        <picture class="img-box">
							            <img src="">
							        </picture>
		                            <div class="text-box">
						            	<p class="text text1">펀딩 제목</p>
						            	<p class="text text2">현재 펀딩수</p>
            							<p class="text text3">펀딩하러가기 유도</p>
						            </div>
					            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <script>
	            
	        </script>
	    </div>
	    
		<jsp:include page="common/footer.jsp"/>
		
	</div>
</body>
</html>