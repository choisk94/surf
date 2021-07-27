<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스터디 게시판</title>

<style>

/*본문글*/
#studyDetailTop>div {
	/*border: 1px solid red;*/
	box-sizing: border-box;
	height: 30px;
	margin-right: 0;
}

#writerArea {
	font-size: 12px;
	color: rgb(94, 94, 94);
	width: 40%;
	line-height: 30px;
}

#writerArea>label::after {
	content: "";
	padding-right: 10px;
}

#writerArea>label:last-child:after {
	content: "";
	padding-right: 0;
}

/*댓글부*/
.replyMark {
	float: left;
	width: 5%;
	color: rgb(32, 155, 212);
	font-size: 20px;
}

.replyWriter {
	float: left;
	width: 65%;
	font-size: 13px;
	font-weight: 700;
}

.replyTime {
	float: left;
	width: 30%;
	font-size: 11px;
	text-align: right;
}

.replyContent {
	clear: both;
	font-size: 13px;
}

#replyEnroll {
	float: left;
	width: 85%;
	font-size: 12px;
	resize: none;
}

/*신고버튼*/
.report {
	cursor: pointer;
}

input[name=whyReport] {
	font-size: 10px;
}

/*뒤로가기버튼*/
#goBackBtn {
	position: fixed;
	z-index: 998;
	margin-left: 120px;
	font-size: 12px;
	border-radius: 10px;
	padding: 8px 12px 8px 12px;
	border: 1px solid lightgrey;
	color: rgb(94, 94, 94);
	background-color: rgba(0, 0, 0, 0);
}

#goBackBtn:hover {
	opacity: 0.7;
}
</style>

</head>

<body>
	
	<jsp:include page="../common/header.jsp"/>
	
	<div class="body-outer">
		<br> <br>

		<div class="long-title">
			함께 공부해요!
			<div style="font-size: 15px; font-weight: normal;">
				<br> 같은 클래스를 듣거나, 관심사를 지닌 사람들과 스터디를 만들어보세요.<br> 함께 공부하면
				실력도 두배 재미도 두배랍니다!
			</div>
			<hr style="background-color: rgb(32, 155, 212); height: 2px;">
		</div>

		<!--뒤로가기 버튼-->
		<button id="goBackBtn">
			<i class="fa fa-mail-reply"></i>
		</button>

		<div style="width: 750px; margin: auto; margin-top: 30px;">

			<div id="studyDetailTop">

				<div
					style="font-size: 17px; font-weight: 600; float: left; margin-right: 20px;">스프링
					스터디 모집합니다!! 같이 공부하자!</div>
				<div style="width: 100px; float: left;">
					<!--
                    <img style="width: 50px;" src="https://img.shields.io/badge/모집완료-6E6E6E?style=flat-square&&logoColor=white" />
                    -->

					<img style="width: 45px; margin-right: 10px;"
						src="https://img.shields.io/badge/모집중-00B388?style=flat-square&&logoColor=white" />

					<img class="report" data-toggle="modal" data-target="#reportModal"
						data-toggle="tooltip" title="신고하기" src="resources/images/report.jpg"
						style="width: 13px;">
				</div>

			</div>
			<div id="writerArea" style="width: 100%; clear: both;">
				<label>작성자 : orange23</label> <label>작성일 : 2021. 06. 08</label> <label>조회수
					: 10000</label>
			</div>

			<div
				style="height: 700px; overflow: auto; clear: both; font-size: 12px;">
				<br> <b>▶ 주제</b><br> : Spring Framework <br> <br>
				<b>▶ 목표</b><br> : 가이드 분석하여 사용법 익히기 <br> <br> <b>▶
					일정(횟수)</b><br> : 주 2회 (수, 토) <br> <br> <b>▶
					커리큘럼(간략하게)</b>
				<ul>
					<li>개발환경 구축</li>
					<li>bean등록법</li>
					<li>...</li>
				</ul>
				<br> <br> <b>▶ 모집인원</b><br> : 3~5 명 <br> <br>
				<b>▶ 소개 / 개설 이유</b><br> : 혼자 독학하려니 너무 힘들어요ㅠㅠ 같이 질문도 하고 으쌰으쌰하실
				분들 모집합니다! <br> <br> <b>▶ 주의사항</b><br> : 중간에 그만두실 분들은
				죄송합니다. <br> <br> <b>▶ 지원방법</b><br> : 오픈카톡방 들어오와주세요!
				링크↓

			</div>


			<!--댓글시작-->
			<hr style="height: 1px; background-color: lightgray;">
			<h5>
				<b>댓글(5)</b>
			</h5>
			<form id="newReply">
				<textarea class="form-control" name="replyContent" id="replyEnroll"
					maxlength="80" rows="3"></textarea>
				<button class="btn btn-sm btn-warning"
					style="height: 45px; margin-left: 20px; margin-top: 10px; font-size: 12px;"
					type="submit">등록하기</button>
			</form>

			<!--댓글 목록 -->
			<div style="clear: both; margin-top: 30px;" align="center">

				<div style="width: 100%; margin-bottom: 30px;" align="left">
					<i class="fas fa-fish replyMark"></i> <span class="replyWriter">user0101</span>
					<span class="replyTime"> 2021. 07. 05 11:03:30 <img
						class="report" data-toggle="modal" data-target="#reportModal"
						data-toggle="tooltip" title="신고하기" src="resources/images/report.jpg"
						style="width: 11px; margin-left: 10px;">
					</span> <br>
					<div class="replyContent">친구랑 같이 신청하고 싶은데 인원수 초과할 거같기도
						한데..흠....</div>
				</div>
				<div style="width: 100%; margin-bottom: 30px;" align="left">
					<i class="fas fa-fish replyMark"></i> <span class="replyWriter">user0101</span>
					<span class="replyTime"> 2021. 07. 05 11:03:30 <img
						class="report" data-toggle="modal" data-target="#reportModal"
						data-toggle="tooltip" title="신고하기" src="resources/images/report.jpg"
						style="width: 11px; margin-left: 10px;">
					</span> <br>
					<div class="replyContent">친구랑 같이 신청하고 싶은데 인원수 초과할 거같기도
						한데..흠....</div>
				</div>
				<div style="width: 100%; margin-bottom: 30px;" align="left">
					<i class="fas fa-fish replyMark"></i> <span class="replyWriter">user0101</span>
					<span class="replyTime"> 2021. 07. 05 11:03:30 <img
						class="report" data-toggle="modal" data-target="#reportModal"
						data-toggle="tooltip" title="신고하기" src="resources/images/report.jpg"
						style="width: 11px; margin-left: 10px;">
					</span> <br>
					<div class="replyContent">친구랑 같이 신청하고 싶은데 인원수 초과할 거같기도
						한데..흠....</div>
				</div>
				<div style="width: 100%; margin-bottom: 30px;" align="left">
					<i class="fas fa-fish replyMark"></i> <span class="replyWriter">user0101</span>
					<span class="replyTime"> 2021. 07. 05 11:03:30 <img
						class="report" data-toggle="modal" data-target="#reportModal"
						data-toggle="tooltip" title="신고하기" src="resources/images/report.jpg"
						style="width: 11px; margin-left: 10px;">
					</span> <br>
					<div class="replyContent">친구랑 같이 신청하고 싶은데 인원수 초과할 거같기도
						한데..흠....</div>
				</div>
				<div style="width: 100%; margin-bottom: 30px;" align="left">
					<i class="fas fa-fish replyMark"></i> <span class="replyWriter">user0101</span>
					<span class="replyTime"> 2021. 07. 05 11:03:30 <img
						class="report" data-toggle="modal" data-target="#reportModal"
						data-toggle="tooltip" title="신고하기" src="resources/images/report.jpg"
						style="width: 11px; margin-left: 10px;">
					</span> <br>
					<div class="replyContent">친구랑 같이 신청하고 싶은데 인원수 초과할 거같기도
						한데..흠....</div>
				</div>
			</div>

			<br> <br> <br> <br> <br>

		</div>
	</div>

	<!-- 신고하기 Modal -->
	<div class="modal" id="reportModal">

		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Modal Header -->
					<div class="modal-header">
						<h6 class="modal-title">
							<b>신고 사유를 선택해주세요.</b>
						</h6>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<br>
						<form action="">
							<div class="form-check">
								<label class="form-check-label" for="illegalAd" class="">
									<input type="radio" class="form-check-input" id="illegalAd"
									name="whyReport" value="부적절한 홍보 게시물">부적절한 홍보 게시물
								</label>
							</div>
							<br>
							<div class="form-check">
								<label class="form-check-label" for="infringement"> <input
									type="radio" class="form-check-input" id="infringement"
									name="whyReport" value="명예훼손/사생활 침해 등">명예훼손/사생활 침해 등
								</label>
							</div>
							<br>
							<div class="form-check">
								<label class="form-check-label" for="abuse"> <input
									type="radio" class="form-check-input" id="abuse"
									name="whyReport" value="욕설 및 비방 글">욕설 및 비방 글
								</label>
							</div>
							<br>
							<div class="modal-footer">
								<button type="submit" class="btn btn-sm btn-danger">신고하기</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
</body>


<script>

    $(function () {

        $(".report").tooltip();
    })

</script>

</html>