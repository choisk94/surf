<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>문의 조회 및 답변</title>
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
	    #create-date{
	        float: left;
	        margin-top: 8px;
	        margin-left: 690px;
	        font-weight: 600;
	    }
	    #inquiry-text{
	        float: left;
	        margin-top: 20px;
	        margin-left: 30px;
	        margin-bottom: 10px;
	        width: 840px;
	        height: 330px;
	        overflow-y: scroll;
	    }
	    #comment-wrap>label{
	        float: left;
	    }
	    #teacher-img{
	        background-color: lightgray;
	        margin-left: 10px;
	        width: 40px;
	        height: 40px;
	        border-radius: 70%;
	        border: 0px;
	        float: left;
	    }
	    #teacher-name{
	        float: left;
	        margin-top: 8px;
	        margin-left: 10px;
	        font-weight: 600;
	        font-size: 17px;
	        width: 120px;
	        overflow: hidden;
	        text-overflow: ellipsis;
	        white-space: nowrap;
	    }
	    #comment{
	        float: left;
	        margin-left: 10px;
	        width: 600px;
	        height: 182px;
	        resize: none;
	        overflow-y: auto;
	    }
	    #comment-wrap button{
	        float: right;
	        margin-top: 8px;
	        margin-right: 15px;
	        width: 60px;
	    }
	    #inquiry-content>button{
	        float: right;
	        margin-right: 15px;
	        width: 60px;
	    }
	</style>
</head>
<body>
    <div id="content2">
        <div id="page-title">클래스 관리 > 문의 조회 및 답변</div>
        
        <div id="inquiry-wrap">
            <div class="horizontal-line"></div>
            <div id="inquiry-class">문의 클래스 : 클래스명</div>
            <div class="horizontal-line"></div>
            <div id="inquiry-content">
                <div id="user-img"></div>
                <div id="user-name">닉네임</div>
                <div id="create-date">2021-07-12</div>
                <div id="inquiry-text">보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 것은 거친 모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간에 남는 것은 영락과 부패 뿐이다 낙원을 장식하는 천자만홍이 어디 있으며 인생을 풍부하게 하는 온갖 과실이 어디 있으랴? 이상! 우리의 청춘이 가장 많이 품고 있는 이상! 이것이야말로 무한한 가치를 가진 것이다 사람은 크고 작고 간에 이상이 있음으로써 용감하고 굳세게 살 수 있는 것이다 석가는 무엇을 위하여 설산에서 고행을 하였으며 예수는 무엇을 위하여 광야에서 방황하였으며 공자는 무엇을 위하여 천하를 철환하였는가? 밥을 위하여서 옷을 위하여서 미인을 구하기 위하여서 그리하였는가? 아니다 그들은<br><br><br><br><br><br><br><br><br><br><br><br>길이테스트</div>
                <div class="horizontal-line"></div>

                
                <div id="comment-wrap">
                    <label for="comment">
                        <div id="teacher-img"></div>
                        <div id="teacher-name">강사닉네임</div>
                    </label>
                    <!-- 작성된 답변이 없을 때
                    <textarea class="form-control" rows="7" id="comment" placeholder="답변 내용을 입력해주세요."></textarea>
                    <button type="submit" class="btn btn-primary btn-sm">작성</button>
                     -->
                    <!-- 작성된 답변이 있을 때 -->
                    <div id="comment" style="padding: 2px;">보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 것은 거친 모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간에 남는 것은 영락과 부패 뿐이다 낙원을 장식하는 천자만홍이 어디 있으며 인생을 풍부하게 하는 온갖 과실이 어디 있으랴? 이상! 우리의 청춘이 가장 많이 품고 있는 이상! 이것이야말로 무한한 가치를 가진 것이다 사람은 크고 작고 간에 이상이 있음으로써 용감하고 굳세게 살 수 있는 것이다 석가는 무엇을 위하여 설산에서 고행을 하였으며 예수는 무엇을 위하여 광야에서 방황하였으며 공자는 무엇을 위하여 천하를 철환하였는가? 밥을 위하여서 옷을 위하여서 미인을 구하기 위하여서 그리하였는가? 아니다 그들은</div>
                    <button type="button" class="btn btn-dark btn-sm">수정</button>
                    <button type="button" class="btn btn-dark btn-sm" data-toggle="modal" data-target="#deleteCommentModal">삭제</button>
                    
                </div>

                <!-- 답변 삭제 모달 -->
                <div class="modal fade" id="deleteCommentModal">
                    <div class="modal-dialog modal-dialog-centered">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title">삭제 확인</h5>
                          <button type="button" class="close" data-dismiss="modal">×</button>
                        </div>
                        <div class="modal-body">
                            답변을 삭제하시겠습니까? 해당 문의글은 다시 답변 대기 상태로 변경됩니다.
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                            <button type="button" class="btn btn-primary" onclick="location.href=''">확인</button>
                        </div>
                      </div>
                    </div>
                </div>

                <div class="horizontal-line"></div>
                <button type="button" class="btn btn-secondary btn-sm">목록</button>
            </div>
        </div>
    </div>
</body>
</html>