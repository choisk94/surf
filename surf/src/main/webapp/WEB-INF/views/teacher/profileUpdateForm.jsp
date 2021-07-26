<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사 정보 수정</title>
<style>
	.title {
		font-size: 24px;
		font-weight: 600;
	}
	.content {
		padding: 40px 0px 0px 40px;
	}

	.update-form-area {
		width: 630px;
		height: 480px;
		border: 1px solid lightgray;
		border-radius: 3px;
		box-shadow: 3px 3px 3px rgba(184, 184, 184, 0.3);
	}

	.update-form-area div {
		float: left;
		height: 100%;
	}

	.update-form-area>div:first-child {
		width: 220px;
	}

	.update-form-area>div:last-child {
		width: 405px;
		padding-top: 20px;
	}

	.profile-imgArea {
		padding: 20px;
	}

	.profile-imgArea>img {
		border: 1px solid lightgray;
		width: 160px;
		height: 160px;
		border-radius: 80px;
	}

	.input-title {
		font-size: 18px;
		font-weight: 600;
	}
</style>
</head>
<body>
	<jsp:include page="common/teacherPage.jsp" />

	<div class="content">
		<span class="title">강사 정보 수정</span>
		<br>
		<br>
		<form action="" class="teacher-update-form">
			<div class="update-form-area">
				<div>
					<div class="profile-imgArea">
						<img src="">
					</div>
				</div>
				<div>
					<span class="input-title">닉네임</span><br>
					<input type="text" class="form-control"
						style="width:300px; height: 40px; margin: 10px 0px 10px 0px;" value="그림쟁이">

					<span class="input-title">핸드폰 번호</span><br>
					<input type="text" class="form-control"
						style="width:300px; height: 40px; margin: 10px 0px 10px 0px;" value="010-1111-2222">

					<span class="input-title">강사님을 소개해주세요</span><br>
					<textarea class="form-control"
						style="width:370px; height: 150px; margin: 10px 0px 10px 0px; resize: none;">크로키 전문 강사입니다. 
여러분에게 크로키의 새로운 길을 열어 드리겠습니다!</textarea>
					<br>

					<button type="reset" class="btn btn-secondary btn-sm"
						style="margin-left:250px;">초기화</button>&nbsp;
					<button type="submit" class="btn btn-info btn-sm">저장</button>
				</div>
			</div>
		</form>
	</div>
	</div>
	</div>

	<jsp:include page="../common/footer.jsp" />
</body>

</html>