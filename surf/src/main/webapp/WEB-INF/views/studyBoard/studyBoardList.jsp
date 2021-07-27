<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>스터디 게시판</title>

<style>
/* 모집여부 구분버튼 스타일*/
#selectBy>a {
	text-decoration: none;
	color: black;
	font-weight: bold;
}

#selectBy>a:hover {
	color: rgb(0, 179, 136);
}

/*모집여부 사이사이에 |넣기*/
#selectBy>a::after {
	content: "|";
	color: #ccc;
	padding-left: 9px;
}

/*모집여부 사이사이에 |넣기(마지막거는 안넣음)*/
#selectBy>a:last-child::after {
	content: "";
}

/*스터디글 제목*/
.studyTitle {
	font-size: 15px;
	font-weight: bolder;
	margin-bottom: 5px;
}

/*스터디글 내용*/
.studyContent {
	font-size: 13px;
}

/*항목관련*/
#studyList tr {
	height: 100px;
	border-bottom: rgb(211, 211, 211) solid 2px;
}
</style>


</head>

<body>
	<jsp:include page="../common/header.jsp" />


	<div class="body-outer">
		<br>
		<br>

		<div class="long-title">
			함께 공부해요!
			<div style="font-size: 15px; font-weight: normal;">
				<br> 같은 클래스를 듣거나, 관심사를 지닌 사람들과 스터디를 만들어보세요.<br> 함께 공부하면
				실력도 두배 재미도 두배랍니다!
			</div>
			<hr style="background-color: rgb(32, 155, 212); height: 2px;">
		</div>


		<div style="width: 750px; margin: auto; margin-top: 60px;">


			<!-- 상단 검색착, 글쓰기 버튼 -->
			<div id="topArea" style="overflow: auto;">
				<div class="input-group mb-3" style="width: 60%; float: left;">
					<input type="text" class="form-control"
						placeholder="어떤 스터디를 찾고있나요?">
					<div class="input-group-append">
						<button class="btn btn-success" type="submit">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
				<div style="width: 39%; float: left;" align="right">
					<button class="btn btn-info">
						글쓰기 <i class="fas fa-file-alt" style="font-size: 15px;"></i>
					</button>
				</div>
			</div>
			<!-- 정렬 기준 -->
			<div id="selectBy">
				<a href="">전체</a> <a href="">모집중</a> <a href="">모집완료</a>
			</div>
			<br>
			<!-- 게시글 목록 -->
			<div>
				<table id="studyList">
					<tr>
						<td width="600">
							<div class="studyTitle">스프링 스터디 모집합니다</div>
							<div class="studyContent">
								혼자서 독학하려니 너무 어려워요ㅠ<br> 같이 질문도 하고 으쌰으쌰하면서...
							</div>
						</td>
						<td width="200">
							<div align="center">
								<img style="width: 40px;"
									src="https://img.shields.io/badge/모집중-00B388?style=flat-square&&logoColor=white" />
								<!--
                                <img style="width: 50px;" src="https://img.shields.io/badge/모집완료-6E6E6E?style=flat-square&&logoColor=white" />
                                -->
							</div>
							<div class="writerInfo">
								작성자 : 강보람<br> 작성일 : 21. 06. 21.<br> 조회수 : 123
							</div>
						</td>
					</tr>
					<tr>
						<td width="600">
							<div class="studyTitle">스프링 스터디 모집합니다</div>
							<div class="studyContent">
								혼자서 독학하려니 너무 어려워요ㅠ<br> 같이 질문도 하고 으쌰으쌰하면서...
							</div>
						</td>
						<td width="200">
							<div align="center">
								<img style="width: 40px;"
									src="https://img.shields.io/badge/모집중-00B388?style=flat-square&&logoColor=white" />
							</div>
							<div class="writerInfo">
								작성자 : 강보람<br> 작성일 : 21. 06. 21.<br> 조회수 : 123
							</div>
						</td>
					</tr>
					<tr>
						<td width="600">
							<div class="studyTitle">스프링 스터디 모집합니다</div>
							<div class="studyContent">
								혼자서 독학하려니 너무 어려워요ㅠ<br> 같이 질문도 하고 으쌰으쌰하면서...
							</div>
						</td>
						<td width="200">
							<div align="center">

								<img style="width: 50px;"
									src="https://img.shields.io/badge/모집완료-6E6E6E?style=flat-square&&logoColor=white" />
							</div>
							<div class="writerInfo">
								작성자 : 강보람<br> 작성일 : 21. 06. 21.<br> 조회수 : 123
							</div>
						</td>
					</tr>
					<tr>
						<td width="600">
							<div class="studyTitle">스프링 스터디 모집합니다</div>
							<div class="studyContent">
								혼자서 독학하려니 너무 어려워요ㅠ<br> 같이 질문도 하고 으쌰으쌰하면서...
							</div>
						</td>
						<td width="200">
							<div align="center">
								<img style="width: 50px;"
									src="https://img.shields.io/badge/모집완료-6E6E6E?style=flat-square&&logoColor=white" />
							</div>
							<div class="writerInfo">
								작성자 : 강보람<br> 작성일 : 21. 06. 21.<br> 조회수 : 123
							</div>
						</td>
					</tr>
					<tr>
						<td width="600">
							<div class="studyTitle">스프링 스터디 모집합니다</div>
							<div class="studyContent">
								혼자서 독학하려니 너무 어려워요ㅠ<br> 같이 질문도 하고 으쌰으쌰하면서...
							</div>
						</td>
						<td width="200">
							<div align="center">
								<img style="width: 40px;"
									src="https://img.shields.io/badge/모집중-00B388?style=flat-square&&logoColor=white" />
							</div>
							<div class="writerInfo">
								작성자 : 강보람<br> 작성일 : 21. 06. 21.<br> 조회수 : 123
							</div>
						</td>
					</tr>
					<tr>
						<td width="600">
							<div class="studyTitle">스프링 스터디 모집합니다</div>
							<div class="studyContent">
								혼자서 독학하려니 너무 어려워요ㅠ<br> 같이 질문도 하고 으쌰으쌰하면서...
							</div>
						</td>
						<td width="200">
							<div align="center">
								<img style="width: 40px;"
									src="https://img.shields.io/badge/모집중-00B388?style=flat-square&&logoColor=white" />
							</div>
							<div class="writerInfo">
								작성자 : 강보람<br> 작성일 : 21. 06. 21.<br> 조회수 : 123
							</div>
						</td>
					</tr>
					<tr>
						<td width="600">
							<div class="studyTitle">스프링 스터디 모집합니다</div>
							<div class="studyContent">
								혼자서 독학하려니 너무 어려워요ㅠ<br> 같이 질문도 하고 으쌰으쌰하면서...
							</div>
						</td>
						<td width="200">
							<div align="center">
								<img style="width: 40px;"
									src="https://img.shields.io/badge/모집중-00B388?style=flat-square&&logoColor=white" />

							</div>
							<div class="writerInfo">
								작성자 : 강보람<br> 작성일 : 21. 06. 21.<br> 조회수 : 123
							</div>
						</td>
					</tr>
					<tr>
						<td width="600">
							<div class="studyTitle">스프링 스터디 모집합니다</div>
							<div class="studyContent">
								혼자서 독학하려니 너무 어려워요ㅠ<br> 같이 질문도 하고 으쌰으쌰하면서...
							</div>
						</td>
						<td width="200">
							<div align="center">
								<img style="width: 40px;"
									src="https://img.shields.io/badge/모집중-00B388?style=flat-square&&logoColor=white" />

							</div>
							<div class="writerInfo">
								작성자 : 강보람<br> 작성일 : 21. 06. 21.<br> 조회수 : 123
							</div>
						</td>
					</tr>
					<tr>
						<td width="600">
							<div class="studyTitle">스프링 스터디 모집합니다</div>
							<div class="studyContent">
								혼자서 독학하려니 너무 어려워요ㅠ<br> 같이 질문도 하고 으쌰으쌰하면서...
							</div>
						</td>
						<td width="200">
							<div align="center">
								<img style="width: 40px;"
									src="https://img.shields.io/badge/모집중-00B388?style=flat-square&&logoColor=white" />
							</div>
							<div class="writerInfo">
								작성자 : 강보람<br> 작성일 : 21. 06. 21.<br> 조회수 : 123
							</div>
						</td>
					</tr>
					<tr>
						<td width="600">
							<div class="studyTitle">스프링 스터디 모집합니다</div>
							<div class="studyContent">
								혼자서 독학하려니 너무 어려워요ㅠ<br> 같이 질문도 하고 으쌰으쌰하면서...
							</div>
						</td>
						<td width="200">
							<div align="center">
								<img style="width: 40px;"
									src="https://img.shields.io/badge/모집중-00B388?style=flat-square&&logoColor=white" />
							</div>
							<div class="writerInfo">
								작성자 : 강보람<br> 작성일 : 21. 06. 21.<br> 조회수 : 123
							</div>
						</td>
					</tr>
				</table>
			</div>
			<br>
			<br>
			<!--더보기 버튼-->
			<div class="text-center">
				<button class="btn btn-secondary"
					style="width: 200px; border-radius: 10px;">더보기</button>
			</div>

		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
	</div>

	<script>
		// 게시글 항목에 hover했을 때 효과
		$(function() {
			$("tr").hover(function() {
				$(this).addClass("w3-padding-large w3-card-4");
				$(this).css("cursor", "pointer");
			}, function() {
				$(this).removeClass("w3-padding-large w3-card-4");
			})

		})
	</script>


	<jsp:include page="../common/footer.jsp" />

</body>

</html>