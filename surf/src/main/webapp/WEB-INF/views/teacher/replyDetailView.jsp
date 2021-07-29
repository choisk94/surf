<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>수강 후기 조회</title>
	<style>
	    div{
	        border: 0px solid;
	        box-sizing: border-box;
	    }
	    #content2{
	        width: 980px;
	        height: 940px;
	    }
	    #page-title{
	        font-size: 20px;
	        font-weight: 600;
	        width: 300px;
	        margin-top: 40px;
	        margin-left: 40px;
	    }
	    #inquiry-wrap{
	        margin-top: 30px;
	        margin-left: 40px;
	        width: 900px;
	    }
	    .horizontal-line{
	        float: left;
	        border-bottom: 1px solid lightgray;
	        width: 100%;
	        margin: 15px 0px;
	    }
	    #inquiry-class{
	        margin-left: 10px;
	        font-weight: 600;
	        font-size: 17px;
	        width: 97%;
	        overflow: hidden;
	        text-overflow: ellipsis;
	        white-space: nowrap;
	    }
	    #user-img{
	        background-color: lightgray;
	        margin-left: 10px;
	        width: 40px;
	        height: 40px;
	        border-radius: 70%;
	        border: 0px;
	        float: left;
	    }
	    #user-name{
	        float: left;
	        margin-top: 8px;
	        margin-left: 10px;
	        font-weight: 600;
	        font-size: 17px;
	        overflow: hidden;
	        text-overflow: ellipsis;
	        white-space: nowrap;
	    }
	    #star-score{
	        float: left;
	        width: 100px;
	        margin-top: 10px;
	        margin-left: 560px;
	    }
	    #star-score img{
	        float: left;
	        width: 20px;
	        margin: 0px;
	        padding: 0px;
	    }
	    #create-date{
	        float: left;
	        margin-top: 8px;
	        margin-left: 30px;
	        font-weight: 600;
	    }
	    #inquiry-content{
	        float: left;
	        margin-top: 20px;
	        margin-left: 30px;
	        margin-bottom: 23px;
	        width: 840px;
	        height: 530px;
	        overflow-y: scroll;
	    }
	    #inquiry-wrap button{
	        float: right;
	        margin-right: 15px;
	        width: 60px;
	    }
	    
	</style>
</head>
<body>
    <div id="content2">
        <div id="page-title">클래스 관리 > 수강 후기 조회</div>
        
        <div id="inquiry-wrap">
            <div class="horizontal-line"></div>
            <div id="inquiry-class">수강 클래스 : 클래스명</div>
            <div class="horizontal-line"></div>
            <div>
                <div id="user-img"></div>
                <div id="user-name">닉네임</div>
                <div id="star-score">
                    <img src="https://img.icons8.com/color/48/000000/filled-star--v1.png"/>
                    <img src="https://img.icons8.com/color/48/000000/filled-star--v1.png"/>
                    <img src="https://img.icons8.com/color/48/000000/filled-star--v1.png"/>
                    <img src="https://img.icons8.com/color/48/000000/filled-star--v1.png"/>
                    <img src="https://img.icons8.com/color/48/000000/filled-star--v1.png"/>
                </div>
                <div id="create-date">2021-07-12</div>
                <div id="inquiry-content">보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 것은 거친 모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간에 남는 것은 영락과 부패 뿐이다 낙원을 장식하는 천자만홍이 어디 있으며 인생을 풍부하게 하는 온갖 과실이 어디 있으랴? 이상! 우리의 청춘이 가장 많이 품고 있는 이상! 이것이야말로 무한한 가치를 가진 것이다 사람은 크고 작고 간에 이상이 있음으로써 용감하고 굳세게 살 수 있는 것이다 석가는 무엇을 위하여 설산에서 고행을 하였으며 예수는 무엇을 위하여 광야에서 방황하였으며 공자는 무엇을 위하여 천하를 철환하였는가? 밥을 위하여서 옷을 위하여서 미인을 구하기 위하여서 그리하였는가? 아니다 그들은<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>길이테스트</div>
                <div class="horizontal-line"></div>
                <button type="button" class="btn btn-secondary btn-sm">목록</button>
            </div>
        </div>
    </div>
</body>
</html>