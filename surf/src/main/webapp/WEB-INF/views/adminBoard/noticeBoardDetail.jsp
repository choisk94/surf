<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>

<style>
#studyDetailTop>div {
	/*border: 1px solid red;*/
	box-sizing: border-box;
	height: 30px;
	margin-right: 0;
}

#writerArea {
	font-size: 12px;
	color: rgb(94, 94, 94);
	text-align: right;
}

#writerArea>label::after {
	content: "";
	padding-right: 10px;
}

#writerArea>label:last-child:after {
	content: "";
	padding-right: 0;
}

</style>
</head>
<body>
	<div class="body-outer">
		<br>
		<br>

		<!--고객센터 세부메뉴-->
		<div id="adminBoardMenu" style="width: 800px; margin: auto;">
			<a href="">공지사항</a> 
			<a href="">FAQ</a>
			<hr	style="background-color: grey; height: 2px; width: 60%; margin-top: 0;">
		</div>

		<div class="long-title">
			공지사항 <i class="fas fa-bullhorn"></i>
			<div style="font-size: 15px; font-weight: normal;">
				<br> 업데이트, 점검 등 공지사항을 확인해보세요<br> 수강료 할인 등 이벤트 관련 정보도 얻을 수
				있답니다!
			</div>
			<hr style="background-color: rgb(32, 155, 212); height: 2px; margin-bottom: 0;">
		</div>

		<!--뒤로가기 버튼-->
		<button id="goBackBtn">
			<i class="fa fa-mail-reply"></i>
		</button>


		<div style="width: 750px; margin: auto; margin-top: 30px;">

			<div id="studyDetailTop">
				<div style="width: 100%; font-size: 17px; font-weight: 600;">[공지]
					개인정보 취급방침 개정 안내</div>
				<div id="writerArea" style="width: 100%; text-align: right;">
					<label>작성자 : admin01</label> 
					<label>작성일 : 2021. 06. 08</label> 
					<label>조회수	: 10000</label>
				</div>
			</div>


			<div style="height: 700px; overflow: auto; clear: both; font-size: 13px;" class="px-3">
				<br> 안녕하세요 서프 운영팀 서퍼입니다. <br> 항상 서퍼를 이용해주셔서 진심으로 감사드립니다. <br>
				<br> 7월 1일부터 개인정보 보호법 시행령 개정에 따라 서프 '개인정보 취급방침'이 개정됩을 안내드리오니 <br>
				참고하시기 바랍니다. <br> <br> ◎ 시행일 : 2021년 7월 1일 <br> <br>
				◎ 대상 : 회원 전체 <br> <br> ◎ 주요 개정 내용 <br> - 사유 : 개인정보
				보호법 시행령 개정 <br> - 개정 대상 : 1조, 2조, 7조 <br> <br>
				<br> 앞으로도 더 나은 서비스를 위해 노력하는 서프가 되겠습니다. <br> 감사합니다.

			</div>
			<br>
			<br>
			<br>
			<br>
			<br>
		</div>
	</div>

	<script>
    $(function () {
        $(".report").on("click", function () {
            confirm("해당 게시글을 신고하시겠습니까?");
        });

        $(".report").tooltip();
    })
</script>
</body>
</html>