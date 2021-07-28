<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
.noticeTitle {
	font-size: 17px;
	font-weight: bolder;
	margin-bottom: 5px;
	margin-left: 5px;
}

.writerInfo {
	font-size: 12px;
	margin-left: 5px;
	margin-top: 10px;
	color: rgb(94, 94, 94);
}

#noticeList tr {
	height: 100px;
	border-bottom: rgb(211, 211, 211) solid 2px;
}

.noticeCount {
	font-size: 20px;
	font-weight: 500;
	background-color: rgb(255, 214, 221);
	color: rgb(94, 94, 94);
	height: 60px;
	width: 60px;
	border-radius: 50%;
	line-height: 60px;
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
			<a href="">공지사항</a> <a href="">FAQ</a>
			<hr
				style="background-color: rgb(191, 191, 191); height: 2px; width: 60%; margin-top: 0;">
		</div>

		<div class="long-title">
			공지사항 <i class="fas fa-bullhorn"></i>
			<div style="font-size: 15px; font-weight: normal;">
				<br> 업데이트, 점검 등 공지사항을 확인해보세요<br> 수강료 할인 등 이벤트 관련 정보도 얻을 수
				있답니다!
			</div>
			<hr
				style="background-color: rgb(32, 155, 212); height: 2px; margin-bottom: 0;">
		</div>

		<div style="width: 750px; margin: auto;">

			<br>
			<!-- 게시글 목록 -->
			<div>
				<table id="noticeList">
					<tr>
						<td width="650">
							<div class="noticeTitle">[이벤트] 하계이벤트 공지</div>
							<div class="writerInfo">작성자 : 강보람 &nbsp; 작성일 : 21. 06. 21.
								&nbsp;</div>
						</td>
						<td width="150" align="center" style="font-size: 13px;">
							<div class="noticeCount">1000</div>
							<div style="font-size: 12px;">조회수</div>
						</td>
					</tr>
					<tr>
						<td width="650">
							<div class="noticeTitle">[이벤트] 하계이벤트 공지</div>
							<div class="writerInfo">작성자 : 강보람 &nbsp; 작성일 : 21. 06. 21.
								&nbsp;</div>
						</td>
						<td width="150" align="center" style="font-size: 13px;">
							<div class="noticeCount">1000</div>
							<div style="font-size: 12px;">조회수</div>
						</td>
					</tr>
					<tr>
						<td width="650">
							<div class="noticeTitle">[이벤트] 하계이벤트 공지</div>
							<div class="writerInfo">작성자 : 강보람 &nbsp; 작성일 : 21. 06. 21.
								&nbsp;</div>
						</td>
						<td width="150" align="center" style="font-size: 13px;">
							<div class="noticeCount">1000</div>
							<div style="font-size: 12px;">조회수</div>
						</td>
					</tr>
					<tr>
						<td width="650">
							<div class="noticeTitle">[이벤트] 하계이벤트 공지</div>
							<div class="writerInfo">작성자 : 강보람 &nbsp; 작성일 : 21. 06. 21.
								&nbsp;</div>
						</td>
						<td width="150" align="center" style="font-size: 13px;">
							<div class="noticeCount">1000</div>
							<div style="font-size: 12px;">조회수</div>
						</td>
					</tr>
					<tr>
						<td width="650">
							<div class="noticeTitle">[이벤트] 하계이벤트 공지</div>
							<div class="writerInfo">작성자 : 강보람 &nbsp; 작성일 : 21. 06. 21.
								&nbsp;</div>
						</td>
						<td width="150" align="center" style="font-size: 13px;">
							<div class="noticeCount">1000</div>
							<div style="font-size: 12px;">조회수</div>
						</td>
					</tr>
					<tr>
						<td width="650">
							<div class="noticeTitle">[이벤트] 하계이벤트 공지</div>
							<div class="writerInfo">작성자 : 강보람 &nbsp; 작성일 : 21. 06. 21.	&nbsp;</div>
						</td>
						<td width="150" align="center" style="font-size: 13px;">
							<div class="noticeCount">1000</div>
							<div style="font-size: 12px;">조회수</div>
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
        $(function () {
            $("#noticeList tr").hover(function () {
                $(this).addClass("w3-padding-large w3-card-4");
                $(this).css("cursor", "pointer");
                $(this).find(".noticeCount").css("backgroundColor", "rgb(184, 227, 220)");
            }, function () {
                $(this).removeClass("w3-padding-large w3-card-4");
                $(this).find(".noticeCount").css("backgroundColor", "rgb(255, 214, 221)");

            })

        })
    </script>
    
    <jsp:include page="../common/footer.jsp"/>


</body>
</html>