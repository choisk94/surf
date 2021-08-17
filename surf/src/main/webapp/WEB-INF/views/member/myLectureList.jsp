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
    .thumbnail>p{height: 120px;   }
    .class-thumb{position: relative;}
    .scrap-icon img{position:absolute;top: 20px;}
    #pagingArea{width:fit-content;margin:auto;}

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
    .pop-btn.confirm {border-right: 1px solid lightgray;}
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

                        
                        <div class="thumbnail" align="center">
                            <input type="hidden" value="">
                            <div id="class-thumb">
                                <img src="" width="240" height="150" id="">
                            </div>
        
                            <p style="margin-top: 5px;">
                                <b>아이패드로 여행 드로잉 한번에 끝내기 ㅇㅇㅇㅇㅇㅇㅇ</b><br>
                                <progress value="20" max="100"></progress>
                                <span style="font-size:14px">진행률 65%</span> <br>
                                <span style="font-size:14px"><b>월 30,000원</b>  (30일)</span> <br>

                                
                            </p>
                            <!-- 진행률 100%시 설문조사 버튼 if문 처리 -->
                            <button type="button" class="btn" id="modal-open">설문조사</button>
                        </div>
                        

                        <!-- 페이징 -->
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
                        </div>
                        <br><br>

                    </div>

                </div>
            </div>

        </div>
        
        <!-- 설문조사 클릭시 모달창 -->
        <!-- modal area -->
        <form action="" method="POST">

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
                                        <button type="button" class="btn" title="Give 5 stars">★</button>
                                        <button type="button" class="btn" title="Give 4 stars">★</button>
                                        <button type="button" class="btn" title="Give 3 stars">★</button>
                                        <button type="button" class="btn" title="Give 2 stars">★</button>
                                        <button type="button" class="btn" title="Give 1 star">★</button>
                                    </div>

                                    <strong>만족도</strong>
                                    <div class="class-sati rating rating2">
                                        <button type="button" class="btn" title="Give 5 stars">★</button>
                                        <button type="button" class="btn" title="Give 4 stars">★</button>
                                        <button type="button" class="btn" title="Give 3 stars">★</button>
                                        <button type="button" class="btn" title="Give 2 stars">★</button>
                                        <button type="button" class="btn" title="Give 1 star">★</button>
                                    </div>

                                    <strong>가격</strong>
                                    <div class="class-price rating rating2">
                                        <button type="button" class="btn" title="Give 5 stars">★</button>
                                        <button type="button" class="btn" title="Give 4 stars">★</button>
                                        <button type="button" class="btn" title="Give 3 stars">★</button>
                                        <button type="button" class="btn" title="Give 2 stars">★</button>
                                        <button type="button" class="btn" title="Give 1 star">★</button>
                                    </div>

                                    <strong>평점</strong>
                                    <div class="class-star rating rating2" >
                                        <button type="button" class="btn" title="Give 5 stars">★</button>
                                        <button type="button" class="btn" title="Give 4 stars">★</button>
                                        <button type="button" class="btn" title="Give 3 stars">★</button>
                                        <button type="button" class="btn" title="Give 2 stars">★</button>
                                        <button type="button" class="btn" title="Give 1 star">★</button>
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
        
            // 모달 관련 스크립트
            $(function(){
                $("#confirm").click(function(){
                    modalClose(); 
                    //컨펌 이벤트 처리 어케해

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