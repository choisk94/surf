<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 묻는 질문(FAQ)</title>

<style>
    .faqTitle,
    .introLine {
        height: 55px;
        font-size: 17px;
        font-weight: 700;
        border-bottom: dotted lightgray 2px;
        font-family: 'Nanum Gothic', sans-serif;

    }

    .faqTitle div,
    .introLine div {
        float: left;
    }

    .faqTitle:hover{
        cursor: pointer;
    }

    .introLine {
        font-size: 20px;
    }

    .faqContent {
        width: 100%;
        height: 200px;
        overflow: auto;
        background-color: lavender;
        border-bottom: dotted lightgray 2px;
        vertical-align: top;
        font-family: 'Nanum Gothic', sans-serif;
        display: none;
    }
    .faqContent>td{
        padding: 13px;
        font-size: 13px;
        line-height: 30px;
        font-weight: 500;
    }
    
    #adminBoardMenu>a {
		font-size: 18px;
		font-weight: 600;
		margin-right: 30px;
		text-decoration: none;
		color: black;
		height: 35px;
		display: inline-block;
	}
		
	#adminBoardMenu>a:hover {
	   color: rgb(94, 94, 94);
	   border-bottom: rgb(32, 155, 212) 4px solid;
	   transition: all .2s ease;
	}
</style>


</head>
<body>
	
	<jsp:include page="../common/header.jsp"/>
	
    <div class="body-outer">
        <br><br>

        <!--고객센터 세부메뉴-->
        <div id="adminBoardMenu" style="width: 800px; margin: auto;">
            <a href="">공지사항</a>
            <a href="">FAQ</a>
            <hr style="background-color: grey; height: 2px; width: 60%; margin-top: 0;">

        </div>

        <div class="long-title">
            자주 묻는 질문(FAQ)
            <i class="far fa-question-circle"></i>
            <div style="font-size: 15px; font-weight: normal;">
                <br>
                궁금한게 있으신가요?<br>
                아래의 자주 묻는 질문 목록을 먼저 확인해주세요!
            </div>
            <hr style="background-color: rgb(32, 155, 212); height: 2px; margin-bottom: 0;">
        </div>


        <div style="width: 750px; margin: auto;">

            <br>
            <!-- 게시글 목록 -->
            <div id="faqList">

                <table bordr="" style="width: 100%;">
                    <!--첫번째 줄-->
                    <tr class="introLine">
                        <td>
                            <div style="width: 77%; padding-left: 70px;">
                                <i class="fa fa-question" style="color:rgb(32, 107, 212);"></i>
                                Question
                                <i class="fa fa-question" style="color: rgb(32, 107, 212);"></i>
                            </div>
                            <div style="width: 23%; text-align: center;">
                                <i class="fas fa-tags" style="color:rgb(32, 107, 212);"></i>
                                	카테고리
                            </div>
                        </td>
                    </tr>
                    <!--faq 목록-->
                    <tr class="faqTitle">
                        <td>
                            <div style="width: 77%;">
                                &nbsp;<i class="fa fa-caret-square-o-down"></i>
                                회원가입은 어떻게 하나요?
                            </div>
                            <div style="width: 23%; text-align: center;">
                                회원문의
                            </div>
                        </td>
                    </tr>
                    <tr class="faqContent">
                        <td>
                            메인 페이지 상단의 오른쪽에 '회원가입'버튼을 클릭해주세요. <br>
                            이메일을 포함한 간단한 정보 몇가지를 입력해주시면 끝! <br>
                            카카오톡 계정과 네이버 계정을 사용하여 더 간단하게 가입할 수도 있답니다.
                            
                        </td>
                    </tr>
                    <!---------------->
                    <tr class="faqTitle">
                        <td>
                            <div style="width: 77%;">
                                &nbsp;<i class="fa fa-caret-square-o-down"></i>
                                결제방식은 어떤게 있나요?
                            </div>
                            <div style="width: 23%; text-align: center;">결제</div>
                        </td>
                    </tr>
                    <tr class="faqContent">
                        <td>
                            카드결제와 무통장 입금 2가지 방식이 준비되어있습니다.
                        </td>
                    </tr>
                    <!---------------->
                    <tr class="faqTitle">
                        <td>
                            <div style="width: 77%;">
                                &nbsp;<i class="fa fa-caret-square-o-down"></i>
                                아이디(비밀번호)를 잊어버렸어요
                            </div>
                            <div style="width: 23%; text-align: center;">
                                회원문의
                            </div>
                        </td>
                    </tr>
                    <tr class="faqContent">
                        <td>
                            아이디를 분실한 경우 로그인 팝업의 '아이디/비밀번호 찾기'버튼을 눌러주세요. <br>
                            회원가입 시 사용한 이메일 주소로 아이디/비밀번호를 보내드립니다.
                        </td>
                    </tr>
                    <!---------------->
                    <tr class="faqTitle">
                        <td>
                            <div style="width: 77%;">
                                &nbsp;<i class="fa fa-caret-square-o-down"></i>
                                강의를 환불하고 싶어요.
                            </div>
                            <div style="width: 23%; text-align: center;">
                                환불/취소
                            </div>
                        </td>
                    </tr>
                    <tr class="faqContent">
                        <td>
                            환불 금액에 대한 규정은 다음과 같습니다. <br>
                            진도율 70% 이상 : 환불 불가 <br>
                            진도율 50% 이상 70% 미만 : 결제금액의 30% 환불 <br>
                            진도율 30% 이상 50% 미만 : 결제금액의 50% 환불 <br>
                            진도율 10% 이상 30% 미만 : 결제금액의 70% 환불 <br>
                            진도율 10% 미만 : 결제금액의 100% 환불 <br>
                            위의 내용을 충분히 숙지하신 후 환불을 원하실 경우 내 클래스 - 환불하기 를 통해 환불을 진행해주시기 바랍니다. <br>
                            환불 신청이 완료된 후에는 영업일 기준 3~5일 가량의 시간이 소요됩니다.                            
                           
                        </td>
                    </tr>                                        
                    <!---------------->
                    <tr class="faqTitle">
                        <td>
                            <div style="width: 77%;">
                                &nbsp;<i class="fa fa-caret-square-o-down"></i>
                                간편 로그인이 되지 않아요.
                            </div>
                            <div style="width: 23%; text-align: center;">
                                회원관리
                            </div>
                        </td>
                    </tr>
                    <tr class="faqContent">
                        <td>
                            간편로그인으로 로그인이 되지 않고 하얀색 화면만 나오나요? <br>
                            인터넷 익스플로러 11(Internet Explorer11) 버젼 또는 마이크로소프트 엣지(Microsoft Edge)로 <br>
                            서프를 이용하실 경우, 보안과 관련 사항으로 회원가입 또는 로그인 시 위와 같은 상황이 발생할 수 있습니다. <br>
                            이 경우, 아래와 같이 조치를 권장 드립니다. <br>
                            예시) IE 11에서 네이버 로그인 시 <br>
                            1. 브라우저 설정에서 인터넷 옵션 메뉴를 선택 <br>
                            2. 보안 탭에서 신뢰할수 있는 사이트 항목의 사이트 버튼 선택 <br>
                            3. 웹 사이트에 연동 사이트 및 서프가 신뢰할 수 있는 사이트로 등록되어 있는지 확인 <br>
                            위와 같은 조치 이후에도 로그인이 되지 않으신다면, <br>
                            고객만족센터(1588-6577)로 연락주시면 확인 후 문제해결을 도와드리겠습니다.
                        </td>
                    </tr>                    
                    <!---------------->
                    <tr class="faqTitle">
                        <td>
                            <div style="width: 77%;">
                                &nbsp;<i class="fa fa-caret-square-o-down"></i>
                                
                            </div>
                            <div style="width: 23%; text-align: center;"></div>
                        </td>
                    </tr>
                    <tr class="faqContent">
                        <td>
                            
                        </td>
                    </tr>
                    <!---------------->
                    <tr class="faqTitle">
                        <td>
                            <div style="width: 77%;">
                                &nbsp;<i class="fa fa-caret-square-o-down"></i>
                                
                            </div>
                            <div style="width: 23%; text-align: center;"></div>
                        </td>
                    </tr>
                    <tr class="faqContent">
                        <td>
                            
                        </td>
                    </tr>                                        
                    <!---------------->
                    <tr class="faqTitle">
                        <td>
                            <div style="width: 77%;">
                                &nbsp;<i class="fa fa-caret-square-o-down"></i>
                                
                            </div>
                            <div style="width: 23%; text-align: center;"></div>
                        </td>
                    </tr>
                    <tr class="faqContent">
                        <td>
                            
                        </td>
                    </tr>                                        
                    <!---------------->
                    <tr class="faqTitle">
                        <td>
                            <div style="width: 77%;">
                                &nbsp;<i class="fa fa-caret-square-o-down"></i>
                                
                            </div>
                            <div style="width: 23%; text-align: center;"></div>
                        </td>
                    </tr>
                    <tr class="faqContent">
                        <td>
                            
                        </td>
                    </tr>                                   
                </table>
            </div>
            <br style="clear: both;"><br>

        </div>
        <br><br><br><br><br>
    </div>

    <script>
        $(function () {
            $(".faqTitle").on("click", function () {

                var $answer = $(this).next();

                if ($answer.css("display") == "none") {
                    $answer.siblings(".faqContent").slideUp();
                    $answer.slideDown();
                } else {
                    $answer.slideUp();
                }
            })
        })
    </script>
    
    <jsp:include page="../common/footer.jsp"/>
	
</body>
</html>