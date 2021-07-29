<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inquiry</title>
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
        height: 1000px;
        padding: 0px 0px 0px 0px;
    }
    .class-element{width: 100%; height: 300px; display: flex;}
    .class-element img{
        width: 680px;
        height: 100%;
        margin: auto;
    }
    .class-main-info{margin-left: 20px;}
    .class-main-info>div{width: 400px; margin-bottom: 15px;}
    #info-title{font-size: 23px; font-weight: bolder;}
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
    /*.class-full-info{width: 100%;}*/
    .class-chapter *{margin-bottom: 30px; }
    #class-representative{width: 60%; height: 100%; margin-left: 10px;}

    /*수강 후기*/
    .class-inquiry{
        margin-left: 50px;
        margin-top: 40px;
        margin: 40px 40px 20px;
        width: 700px;
    }
    .box{
        font-weight: bolder;
        margin-bottom: 15px;
    }
    .box img{
        width: 50px; 
        height: 50px;
        border-radius: 70%;
        overflow: hidden;
        background: pink;
        margin-right: 10px;
    }
    .review-star{
        margin-bottom: 5px;
    }
    .review-content{
        margin-bottom: 40px;
    }
    .inquiry-btn{padding-left: 5px;}
    .input{
        width: 600px;
        height: 30px;
        border-top: none;
        border-left: none;
        border-right: none;
        border-bottom: 1px solid gray;
    }
</style>
</head>
<body>

	<!-- 수강 후기 -->
	<div class="class-inquiry">
                
		<form action="" method="POST">
			<div class="inquiry-input">
				<img src="../resource/img/star.png" > &nbsp;
				<input type="text" placeholder="문의 내용을 입력해주세요." class="input">
				<button type="submit" class="btn inquiry-btn">➕</button>
			</div>
		</form>
		<br><br>

                <ul class="comments">
                    <li class="comment">
                        <div class="photo">
                            <img src="../resource/img/heart.png" >
                        </div>
                        <div class="meta">김철수</div>
                        <div class="comment-body">
                            안녕하세요
                            그림에 대한 기초가 없던 사람이었는데 이 강의를 듣고 실력이 많이 늘었어요!
                            그런데 원근감에 대해 잘 이해가 안가요 
                            좀 더 상세하게 설명해주시면 좋을거같습니다!
                        </div>
                        <div class="date">
                            2012.07.24 14:58
                        </div>
                    </li>
                    <li class="comment level-2">
                        <div class="photo">
                            <img src="" >
                        </div>
                        <div class="meta">그림쟁이</div>
                        <div class="comment-body">
                            안녕하세요
                            그림에 대한 기초가 없던 사람이었는데 이 강의를 듣고 실력이 많이 늘었어요!
                            그런데 원근감에 대해 잘 이해가 안가요 
                            좀 더 상세하게 설명해주시면 좋을거같습니다!
                        </div>
                        <div class="date">
                            2012.07.24 14:58
                        </div>
                    </li>
                </ul>
            </div>
    
</body>
<style>
    /*
    .comments:after {
        border-color: #fff;
    }
    .comments:before {
        background-color: #fff;
    }*/

    .comments .comment {
        margin-left: 10px;
        background: #fff;
        border-radius: 10px;
        font-size: 13px;
        padding: 10px 15px;
    }
    /*.comments [class*="level-"] .photo:before {
        background-color: #fff;
    }*/
    
    .comments {
        list-style-type: none;
        padding: 5px 0 0 46px;
        position: relative;
        margin: 0 0 0 12px;
    }
    /*.comments:before,*/
    .comments .comment,
    .comments .comment:after,
    .comments .comment:before,
    .comments .photo img,
    .comments [class*="level-"] .photo:before {
        border: 1px solid lightgray;
        /*box-shadow: 0 1px 3px rgba(0, 0, 0, .4);*/
    }
    .comments .comment {
        margin-bottom: 15px;
        position: relative;
    }
    .comments .photo {
        position: absolute;
        left: -60px;
        top: 2px;
    }
    .comments .photo img {
        border: 1px solid #fff;
        width: 50px;
        height: 50px;
        border-radius: 32px;
        overflow: hidden;
    }
    .comment .date{margin-top: 3px; color: darkgray;}
    .comments .meta {
        margin-bottom: 5px; 
        font-weight: 600;
        font-size: 15px;
    }
    .comments .level-2 {margin-left: 50px;}
    /*
    .comments [class*="level-"] .photo:before {
        display: block;
        content: '';
        position: absolute;
        margin-top: -2px;
        height: 4px;
        width: 20px;
        left: -10px;
        top: 50%;
        z-index: -1;
    }*/

    /*
    .comments:after,
    .comments:before {
        display: block;
        content: '';
        position: absolute;
    }*/
    /*
    .comments:before {
        border-radius: 0 0 5px 5px;
        height: 100%;
        width: 8px;
        left: 0;
        top: 0;
    }*/
    /*
    .comments:after {
        box-shadow: 0 1px 3px rgba(0, 0, 0, .4), 0 1px 3px rgba(0, 0, 0, .4) inset;
        border-width: 4px;
        border-style: solid;
        border-radius: 18px;
        height: 10px;
        width: 10px;
        left: -5px;
        top: -16px;
        z-index: -1;
    }*/

    /*
    .comments .comment:after,
    .comments .comment:before {
        border-radius: 10px;
        background-color: #fff;
        position: absolute;
        display: block;
        content: '';
    }
    */
    /*
    .comments .comment:after {
        width: 12px;
        height: 12px;
        left: -14px;
        top: 7px;
    }
    .comments .comment:before {
        width: 5px;
        height: 5px;
        left: -22px;
        top: 16px;
    }*/
</style>
</html>