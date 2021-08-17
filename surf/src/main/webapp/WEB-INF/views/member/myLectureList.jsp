<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Lecture</title>
<style>
    .outer{
        width: 1200px;
        margin: auto;
        margin-top: 50px;
        font-family: 'Noto Sans KR', sans-serif;
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
    .thumbnail>p{height: 65px;   }
    .class-thumb{position: relative;}
    .scrap-icon img{position:absolute;top: 20px;}
    #pagingArea{width:fit-content;margin:auto;}
    #modal-open{
    	background-color: rgb(32, 155, 212);
    	width: 240px;
    	color: white;
    }

    /*진행바*/
    progress {
        -webkit-appearance: none;
        margin-top: 10px;
        width: 240px;
        height: 10px;
    }

    ::-webkit-progress-bar {
        background-color: lightgray; 
        border-radius: 10px;
    }

    ::-webkit-progress-value {
        background-color: rgb(32, 155, 212);
        border-radius: 10px;
    }
    /*별점*/
    /*
    em {
        display: block;
        margin: .5em auto 2em;
        color: #bbb;
    }
    p,
    p a {
        color: #aaa;
        text-decoration: none;
    }
    p a:hover,
    p a:focus {
        text-decoration: underline;
    }
    p+p {
        color: #bbb;
        margin-top: 2em;
    }
    */
    .detail {
        position: absolute;
        text-align: right;
        right: 5px;
        bottom: 5px;
        width: 50%;
    }
    button[href*="intent"] {
        display: inline-block;
        margin-top: 0.4em;
    }
     /* 별점 스타일 */
    .rating {
        width: 200px;
        /*margin: 0 auto 1em;*/
        font-size: 20px;
        overflow: hidden;
    }
    .rating input {
        float: right;
        opacity: 0;
        position: absolute;
    }
    .rating button,
    .rating label {
        float: right;
        color: #aaa;
        text-decoration: none;
        -webkit-transition: color .4s;
        -moz-transition: color .4s;
        -o-transition: color .4s;
        transition: color .4s;
        padding: 0px;
    }
    .rating label:hover~label,
    .rating input:focus~label,
    .rating label:hover,
    .rating button:hover,
    .rating button:hover~button,
    .rating button:focus,
    .rating button:focus~button {
        color: orange;
        cursor: pointer;
    }
    .rating2 {direction: rtl;}
    .rating2 button {float: none}
    /*모달*/
    .popup-wrap {
        background-color: rgba(0, 0, 0, .3);
        justify-content: center;
        align-items: center;
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        display: none;
        padding: 15px;
    }
    .popup {
        width: 100%;
        max-width: 500px;
        border-radius: 10px;
        overflow: hidden;
        background-color: rgb(32, 155, 212);
        box-shadow: 5px 10px 10px 1px rgba(0, 0, 0, .3);
    }
    .popup-head {
        width: 100%;
        height: 30px;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .popup-body {width: 100%; background-color: #ffffff;}
    .body-content {width: 100%; padding: 30px;}
    .body-titlebox {
        text-align: center;
        width: 100%;
        height: 30px;
        margin-bottom: 10px;
    }
    .body-titlebox>h3{font-weight: bold;}
    .body-contentbox {
        word-break: break-word;
        overflow-y: auto;
        min-height: 100px;
        max-height: 450px;
    }
    .body-contentbox>strong{font-size: 15px;}
    .body-contentbox>p {font-size: 13px; color: gray;}
    .popup-foot {width: 100%; height: 50px;}
    .pop-btn {
        display: inline-flex;
        width: 50%;
        height: 100%;
        justify-content: center;
        align-items: center;
        float: left;
        color: #ffffff;
        cursor: pointer;
        background-color: rgb(32, 155, 212);
    }
    .pop-btn.confirm {
    	border-right: 1px solid lightgray;
    	background-color: rgb(32, 155, 212);
    	color: white;
    }
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
                    <p>수강중인 클래스</p>
                </div>

                <!-- 클래스 목록 -->
                <div class="class-area">

                    <!-- 클래스 -->
                    <div class="class-list">

                        <c:forEach var="m" items="${ mList }">
	                        <div class="thumbnail" align="center">
	                            <input type="hidden" name="classNo" value="${ m.classNo }">
	                            <input type="hidden" name="teacherNo" value="">
	                            <div id="class-thumb">
	                                <img src="${ m.thumbnail }" width="240" height="150" id="">
	                            </div>
	        
	                            <p style="margin-top: 5px;">
	                                <b>${ m.classTitle }</b><br>
	                                <progress id="pro_value" value="20" max="100"></progress>
	                                <span id="progress" style="font-size:14px">진행률 65%</span> 
	                            </p>
	                            <!-- 진행률 100%시 설문조사 버튼 if문 처리 -->
	                            <button type="button" class="btn" id="modal-open">설문조사</button>
	                        </div>
                        </c:forEach>
                        

                        <!-- 페이징 
                        <br><br><br><br>
                        <div id="pagingArea ">
                            <ul class="pagination">
                                <li class="page-item disabled"><a class="page-link" href="#">&lt;</a></li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
                            </ul>
                        </div>-->
                        <br><br>

                    </div>

                </div>
            </div>

        </div>
        
        <!-- 설문조사 클릭시 모달창 -->
        <!-- modal area -->
        <form action="survey.lec" method="POST">

            <div id="survey">
                <div class="popup-wrap" id="popup"> <!--모달을 감싸는 박스-->
                    <div class="popup">	<!--모달팝업-->
                        <div class="popup-head">
                            <span class="head-title"></span>
                            </div>
                            <div class="popup-body">	<!--컨텐츠 영역-->
                            <div class="body-content">
                                <div class="body-titlebox">
                                    <h3>설문조사</h3>
                                </div>
                                <div class="body-contentbox">
                                    <p align="center">수강하신 클래스에 대한 후기를 남겨주세요!</p><br>

                                    <strong>퀄리티</strong>
                                    <div class="class-quality rating rating2">
                                        <button type="button" class="btn qual" title="Give 5 stars" id="clickQual5">★</button>
                                        <button type="button" class="btn qual" title="Give 4 stars" id="clickQual4">★</button>
                                        <button type="button" class="btn qual" title="Give 3 stars" id="clickQual3">★</button>
                                        <button type="button" class="btn qual" title="Give 2 stars" id="clickQual2">★</button>
                                        <button type="button" class="btn qual" title="Give 1 star" id="clickQual1">★</button>
                                    </div>

                                    <strong>만족도</strong>
                                    <div class="class-sati rating rating2">
                                        <button type="button" class="btn sati" title="Give 5 stars" id="clickSati5">★</button>
                                        <button type="button" class="btn sati" title="Give 4 stars" id="clickSati4">★</button>
                                        <button type="button" class="btn sati" title="Give 3 stars" id="clickSati3">★</button>
                                        <button type="button" class="btn sati" title="Give 2 stars" id="clickSati2">★</button>
                                        <button type="button" class="btn sati" title="Give 1 star" id="clickSati1">★</button>
                                    </div>
                                    
                                    <strong>난이도</strong>
                                    <div class="class-price rating rating2">
                                        <button type="button" class="btn diffi" title="Give 5 stars" id="clickDiffi5">★</button>
                                        <button type="button" class="btn diffi" title="Give 4 stars" id="clickDiffi4">★</button>
                                        <button type="button" class="btn diffi" title="Give 3 stars" id="clickDiffi3">★</button>
                                        <button type="button" class="btn diffi" title="Give 2 stars" id="clickDiffi2">★</button>
                                        <button type="button" class="btn diffi" title="Give 1 star" id="clickDiffi1">★</button>
                                    </div>

                                    <strong>가격</strong>
                                    <div class="class-price rating rating2">
                                        <button type="button" class="btn pri" title="Give 5 stars" id="clickPri5">★</button>
                                        <button type="button" class="btn pri" title="Give 4 stars" id="clickPri4">★</button>
                                        <button type="button" class="btn pri" title="Give 3 stars" id="clickPri3">★</button>
                                        <button type="button" class="btn pri" title="Give 2 stars" id="clickPri2">★</button>
                                        <button type="button" class="btn pri" title="Give 1 star" id="clickPri1">★</button>
                                    </div>

                                    <strong>평점</strong>
                                    <div class="class-star rating rating2" >
                                        <button type="button" class="btn sco" title="Give 5 stars" id="clickSco5">★</button>
                                        <button type="button" class="btn sco" title="Give 4 stars" id="clickSco4">★</button>
                                        <button type="button" class="btn sco" title="Give 3 stars" id="clickSco3">★</button>
                                        <button type="button" class="btn sco" title="Give 2 stars" id="clickSco2">★</button>
                                        <button type="button" class="btn sco" title="Give 1 star" id="clickSco1">★</button>
                                    </div>

                                    <strong>후기</strong> 
                                    <input type="text" name="review" id="" style="width: 300px;">
                                </div>
                            </div>
                            <div class="popup-foot">
                            <button type="submit" class="pop-btn btn confirm" id="confirm">제출하기</button>
                            <span class="pop-btn modalClose" id="close">취소</span>
                        	</div>
                    	</div>
                    </div>
                </div>
            </div>
            
        </form>

        <script>
        
        	var uno = '${loginUser.userNo}';
        	var cno = $('input[name=classNo]').val();
        	var tno = $('input[name=teacherNo]').val();
        	
        	$(".qual").click(function(){
        		var qual = $(this).attr("id");
        	});
        	$(".sati").click(function(){
        		var sati = $(this).attr("id");
        	});
        	$(".diffi").click(function(){
        		var diffi = $(this).attr("id");
        	});
        	$(".pri").click(function(){
        		var pri = $(this).attr("id");
        	});
        	$(".sco").click(function(){
        		var sco = $(this).attr("id");
        	});
        	
        	// 진행률 
        	$(document).ready(function(){
        		console.log(cno);
        		console.log(uno);
        		
        		$.ajax({
        			url: "progress.lec",
        			data: {
        				classNo : cno,
        				userNo : uno
        			}, success:function(result){
        				
        				$("#pro_value").val(result);
        				$("#progress").html("진행률 " + result + "%");
        				
        			}, error:function(){
        				console.log("진행률 실패");
        			}
        		})
        		
        	}) // End of ready
        	
        	// 설문조사
        	$(".confirm").click(function(){
        		$.ajax({
        			url: "survey.lec",
        			data: {
        				userNo : uno,
        				quality : qual,
        				satisfaction : sati,
        				difficulty: diffi,
        				price : pri,
        				score : sco,
        				classNo : cno,
        				teacherNo : tno
        			}, success:function(result){
        				if(result > 0){
	        				alert("설문 조사에 제출되었습니다!");
        				}else{
        					console.log("설문조사 디비 실패");
        				}
        			}, error:function(){
        				console.log("설문조사 통신 실패");
        			}
        		});
        	})
        
            // 모달
            $(function(){
                $("#confirm").click(function(){
                    modalClose(); 
                });
                $("#modal-open").click(function(){        
                    $("#popup").css('display','flex').hide().fadeIn();
                });
                $("#close").click(function(){
                    modalClose(); 
                });
                function modalClose(){
                    $("#popup").fadeOut(); 
                }
            });
            
        </script>


        <!-- footer -->
        <jsp:include page="../common/footer.jsp" />

    </div>
    
</body>
</html>