<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 등록하기_기본정보</title>
<style>
	.content{width:820px; height:630px;}
    b{font-size:15px;}
    /*공통으로 뺄만한거*/
    .note{
        font-size: 12px;
        color: gray;
    }
    .content>div{
        float: left;
    }

    /*고유 영역*/
    .form-control{
        font-size: 14px;
        height: 40px;
    }
    tr>th{height:50px;}
    .select-form{width:500px; margin-bottom: 10px;}
    .main-content{width:540px; height:100%;}
    .desciption{
        display: inline;
        width:210px;
        height: 95px;
        background: lightgray;
    }
    /*영역 나누기*/
    .main-content{width:760px; height:580px;}
    .main-content>div{
        float: left;
    }
    .right-area{
        width: 210px;
        height: 95px;
        background: rgb(241, 241, 241);
        margin: 135px 0px 0px 40px;
    }

    .right-area{
        padding: 4px 8px;
    }
</style>
</head>
<body>
	<jsp:include page="common/lectureEnrollForm.jsp"/>
    <script>
        $(function(){
            $('.menubar').css('height', '800px');
            $('.outer').css('height', '800px');
        })
    </script>
<div class="content">

    <div class="main-content">
        <div class="left-area">
            <form action="">
                <label class="guide">간단하게 어떤 클래스인지 알려주세요</label>
                <label class="note">
                    언젠가 이런 걸 가르쳐봐야지 생각해본 적이 있으신가요?<br>
                    간단히 강사님이 알려 줄 수 있는 카테고리를 설정해봐요.
                </label>
                <br>
                <br>
                <div>
                    
                </div>
                <label for="mainCat" class="subGuide">카테고리</label>
                <select name="mainCat" id="mainCat" class="form-control select-form">
                    <option>베이킹</option>
                </select>
                <select name="" id="" class="form-control select-form">
                    <option value="">디저트</option>
                    <option value="">쿠키</option>
                    <option value="">케잌</option>
                </select>
                <br>
                <br>
                <label class="guide">강의 정보</label>
                <label class="note">
                    수강생들이 강의에 필요한 준비물 및 강의 시간 등<br>
                    강의에 필요한 기타 정보를 입력해주세요!
                </label>
                <br><br>
                <table>
                    <tr>
                        <th width="100px;">강의기간</th>
                        <td width="400px;"><input type="text" class="form-control" placeholder="강의 기간을 입력해주세요"></td>
                    </tr>
                    <tr>
                        <th>준비물</th>
                        <td><input type="text" class="form-control" placeholder="수강생이 강의에 필요한 필수 준비물을 입력해주세요"></td>
                    </tr>
                    <tr>
                        <th>유의사항</th>
                        <td><input type="text" class="form-control" placeholder="기타 유의 사항을 입력해주세요"></td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="right-area">
            <span class="qus-title">카테고리는 어디에 사용되나요?</span>
            
            <p class="qus-answer">
                카테고리는 학생들이 카테고리 검색을<br>
                통해 노출되는 기준이 될 수 있습니다.
            </p>
        </div>
    </div>
</div>
<jsp:include page="common/lectureEnrollFormFooter.jsp"/>
</div>
</body>
</html>