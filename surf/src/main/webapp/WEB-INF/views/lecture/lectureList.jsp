<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<style>
    .outer{
        width: 1200px;
        margin: auto;
        margin-top: 50px;
    }
    .container{display: flex;}
    .category{width: 20%; height: 900px;}
    .class-area{
        width: 75%; 
        background: white;
        margin-left: 30px;
    }
    .cate-item button{
        text-align: left;
        font-size: 20px;
        padding-top: 10px;
        padding-left: 10px;
        font-weight: bold;
    }
    #sub-cate{
        margin-top: 3px;
        width: 130px;
        border-radius: 5px;
        text-align: left;
        padding: 0px 0px 3px 20px;
        display: none;
    }
    #sub-cate a{
        font-size: 13px;
        color: black;
        text-decoration: none;
        display: inline-block;
    }
    #sub-cate a:hover{font-weight: bold;}
    .select-list{
        margin-top: 15px; 
        margin-left: 15px;
        height: 50px; 
    }
    .class-list{height: 800px;}
    .thumbnail {
        margin: auto;
        border: 1px solid white;
        width: 240px;
        display: inline-block;
        margin: 14px;
        text-align: left; 
    }
    .thumbnail:hover {
        cursor: pointer;
        opacity: 0.7;
        /*border: 1px solid rgb(0, 120, 51);*/
        /*background: rgba(0, 120, 52, 0.1);*/
    }
    /*.thumbnail span{margin-bottom: 5px;}*/
    .thumbnail>p{height: 120px;}
    .class-thumb{position: relative; width: 100%; height: 100%;}
    .class-thumb img{display: block;}
    .class-thumb .text{
        position:absolute;
        top: 5px;
        left: 210px;
    }
    .fa-heart{color: red; margin-right: 2px;}
    .scrap-comple{display: none;}
    .fa-star{color: rgb(231, 217, 17); margin-right: 2px;}
    .scrap-icon:hover{color: darkred;}
    .scrap-icon:active{
        box-shadow: 1px 1px 0 rgb(0,0,0,0.5); position: relative; top:2px;
    }
    #pagingArea{width:fit-content;margin:auto;}
</style>
</head>
<body>

    <div class="outer">
        
        <!-- header-->
		<jsp:include page="../common/header.jsp" />
		
		<br><br>
        <div class="container">

            <!-- 카테고리 -->
            <div class="category">

                <div class="cate-item">
                    <button type="button" data-toggle="collapse1" data-target="#side-sub" class="btn main-cate">
                        베이킹 · 디저트
                    </button>
                    <div id="sub-cate" class="collapse1">
                        <a href="">쿠키류</a><br>
                        <a href="">케이크</a>
                    </div>
                </div>
                <div class="cate-item">
                    <button type="button" data-toggle="collapse1" data-target="#side-sub" class="btn main-cate">
                        베이킹
                    </button>
                    <div id="sub-cate" class="collapse1">
                        <a href="">쿠키류</a><br>
                        <a href="">케이크</a>
                    </div>
                </div>

            </div>

            <!-- 클래스 목록 -->
            <div class="class-area">

                <!-- select option-->
                <div class="select-list">
                    <select name="" class="selectpicker">
                        <option value="">인기순</option>
                        <option value="">별점순</option>
                        <option value="">수강생순</option>
                    </select>
                </div>

                <!-- 클래스 -->
                <div class="class-list">

                    <div class="thumbnail" align="center">
                        <input type="hidden" name="classNo" value="">
                        <div class="class-thumb">
                            <img src="../resource/img/dog.jpeg" width="240" height="150" id="">
                            <div class="text">
                                <i class="far fa-heart scrap-icon" onclick="scrapCompleted();"></i>
                                <i class="fas fa-heart scrap-comple"></i>
                            </div>
                        </div>
    
                        <p style="margin-top: 5px;">
                            <b>아이패드로 여행 드로잉 한번에 끝내기 ㅇㅇㅇㅇㅇㅇㅇ</b><br>
                            <span style="font-size:14px">그림쟁이</span> <br>
                            <span style="font-size:14px"><b>월 30,000원</b></span> <br>
                            <span style="font-size:14px">
                                <i class="fas fa-star"></i> (5.0) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span> 
                            <span style="font-size:14px">
                                <i class="fas fa-heart"></i> 1,120
                            </span> 
                        </p>
                    </div>
                    <div class="thumbnail" align="center">
                        <input type="hidden" value="">
                        <div id="class-thumb">
                            <img src="" width="240" height="150">
                        </div>
    
                        <p style="margin-top: 5px;">
                            <b>아이패드로 여행 드로잉 한번에 끝내기 ㅇㅇㅇㅇㅇㅇㅇ</b><br>
                            <span style="font-size:14px">그림쟁이</span> <br>
                            <span style="font-size:14px"><b>월 30,000원</b></span> <br>
                            <span style="font-size:14px">
                                <img width="25px" src="../resource/img/star.png" alt=""> (5.0) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span> 
                            <span style="font-size:14px">
                                <img width="25px" src="../resource/img/heart.png" alt=""> 1,120
                            </span> 
                        </p>
                    </div>
                    <div class="thumbnail" align="center">
                        <input type="hidden" value="">
                        <div id="class-thumb">
                            <img src="" width="240" height="150">
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
                            <img src="" width="240" height="150">
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

        <script>
        
            $(function(){
                category();
            })

            // 카테고리 효과
            function category(){
                $(".main-cate").click(function(){
    
                var $side = $(this).next();

                if($side.css("display") == "none"){
                    $(this).siblings("div").show(200);
                    $(this).css("color", "rgb(32, 155, 212)");
                }else{
                    $side.hide(200);
                    $(this).css("color", "black");
                }
                })
            }
            
            // 스크랩 아이콘 클릭
            function scrapCompleted(){
                if($(".scrap-comple").css("display") == "none") {
                    $(".scrap-icon").hide();
                    $(".scrap-comple").show();
                } 
            }
    
        </script>

        <!-- footer -->
        <jsp:include page="../common/footer.jsp" />

    </div>
    
</body>
</html>