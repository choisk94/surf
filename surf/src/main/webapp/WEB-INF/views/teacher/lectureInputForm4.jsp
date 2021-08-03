<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.content{
		width:740px;
		height:440px;
	}
	.content>div{width:100%;}
	.content>div:first-child{height: 250px;}
	.content>div:last-child{height: 190px;}

	.content>div:first-child>div{height:100%; float: left;}
	.content>div:first-child>div:first-child{width:440px;}
	.content>div:first-child>div:last-child{width:300px;}

	#posTerm, #price{
		width: 300px;
		height: 40px;
		display: inline-block;
		margin-left: 45px;
		margin-bottom: 10px;
	}

	.note1{
		width: 280px;
		height: 200px;
	}

	.note2{
		width: 720px;
		height: 140px;
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
		<div>
			<div>
				<label class="guide">오픈 전 확인사항입니다<br>꼼꼼히 확인 해 주세요.</label>
				<br>
				<br>
				<label class="subGuide">수강기간</label>
				<select id="posTerm" class="form-control">
					<option value="1">1개월</option>
					<option value="2">2개월</option>
					<option value="3" selected>3개월</option>
				</select>
				<br>
				<label class="subGuide">수강금액</label>
				<input id="price" type="text" class="form-control" placeholder="금액을 입력해주세요">
			</div>
			<div>
				<div class="note-area note1">
					<span class="qus-title"> 정산 방식 및 수익 구조는 어떻게 되나요?</span>
						<p class="qus-answer">
							&nbsp;저희 surf 에서는 사이트 관리 및 서버관리 등<br>
							다양한 강사님들을에게 환경을 제공하고 있습니다.<br>
							&nbsp;계약된 정산 기중에 의거 <b>매달 5번째 영업일</b>에<br>
							정산되며, 정산 비율 혹은 금액은 계약(수수료 10%<br>
							제외)에 따라 달라집니다.
							<br><br>
							&nbsp;단, <b>첫 정산은 클래스 런칭일이 속한 다음달</b>에<br>
							이루어져요!
						</p>
				</div>
			</div>
		</div>
		<div>
			<div class="note-area note2">
				<span class="qus-title" style="color:rgb(255, 123, 0); padding-left:10px;">오픈 전 주의사항!</span>
					<p class="qus-answer" style="padding-left:10px;">
						&nbsp;오픈한 강의는 일반적으로 수강생들의 혼란 및 불만을 막고자 저희 surf에서는 수정하는 기능이 제한됩니다.<br>
						예외적으로 문의(02-333-3333)를 주시면 문의 내용을 듣고 다시 재검토 상태로 돌려드리고 수정제한 기능을 풀어드릴 수 있습니다.<br><br>
						&nbsp;한번 더 오픈 전 강의 내용을 확인 해주시길 바라며 재검토 요청을 빈번하게 요청하는 강사에 한해 강사승인이 반려 될 수 <br>
						있음을 알려드립니다.
					</p>
			</div>
		</div>
	</div>
	<jsp:include page="common/lectureEnrollFormFooter.jsp"/>
</div>
</body>
</html>