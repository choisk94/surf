<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 등록하기_제목 및 커버</title>
<style>
	div{box-sizing: border-box;}
	.content{
		width: 850px;
		
	}
	.content>div{width:100%;}
	.guide-area{height:105px;}
	.thumbnail-area{height:270px;}
	.intro-area{height:440px;}
	
	/* 클래스 제목*/
	.thumbnail-area>div{float:left; height: 100%;}
	.thumbnail-area>div:first-child{width: 270px;}
	.thumbnail-area>div:last-child{width: 580px;}

	#classThumbnail{
		width:220px;
		height:160px;
		border: 1px solid lightgray;
	}
	#classTitle{
		width: 420px;
		height: 40px;
	}

	.note1{
		margin-top: 10px;
		width: 400px;
		height: 180px;
		margin-left: 5px;
	}
	.note1>img{
		width: 110px;
		height: 80px;
	}
	.note1 img:nth-child(4){
		margin: 0px 20px 0px 20px;
	}

	/*클래스 대표이미지or 소개동영상*/
	.intro-area{margin-bottom: 20px;}
	.intro-area>div{float: left; height: 100%;}
	.intro-area>div:first-child{width: 610px;}
	.intro-area>div:last-child{width: 230px;}

	.file-area{
		width:600px;
		height:400px;
		border: 1px solid lightgray;
	}
	.note2{
		width: 225px;
		height: 250px;
		margin-top: 35px;
	}
</style>
</head>
<body>
	<jsp:include page="common/lectureEnrollForm.jsp"/>
	<div class="content">

		<div class="guide-area">
			<label class="guide">클래스의 컨셉이 잘 드러난<br>제목과 이미지를 보여주세요</label>
			<label class="note">감성적이면서도 클래스를 잘 표현하는 제목과 이미지를 등록해주세요.</label>
		</div>
		<form action="">
			<div class="thumbnail-area">
				<div>
					<label class="subGuide">클래스 썸네일 이미지</label>
					<img id="classThumbnail">
				</div>
				<div>
					<label for="classTitle" class="subGuide">클래스 제목</label>
					<input id="classTitle" type="text" name="classTitle" placeholder="컨셉이 잘 드러나는 클래스의 제목을 지어주세요." class="form-control">
					<div class="note-area note1">
						<span class="qus-title"> 썸네일 이미지가 어디에 사용되나요?</span>
						<p class="qus-answer">
							썸네일 이미지는 아래와 같이 메인, 카테고리 검색페이지 등등에서<br>
							보이는 이미지에요.
						</p>
						<img src="">
						<img src="">
						<img src="">
					</div>
				</div>
			</div>
			<div class="intro-area">
				<div>
					<label class="subGuide">클래스 대표 이미지 or 소개 동영상</label>
					<div class="file-area">
						<video src=""></video>
						<img>
					</div>
				</div>
				<div>
					<div>
						<div class="note-area note2">
							<span class="qus-title">클래스의 소개를 담당할<br>이미지나 동영상을 선택해주세요</span>
							<p class="qus-answer">
								<button type="button" id="type-video" class="btn btn-secondary btn-sm">Video</button> &nbsp;&nbsp;&nbsp;
								<button type="button" id="type-image" class="btn btn-secondary btn-sm">Image</button>
								<br><br>
								학생들이 볼 수 있는 페이지 가장 상단 <br>
								좌측에 보여지는 사진이므로 클래스를 <br>
								단번에 이해 할 수 있는 사진이나 동영<br>
								상을 올려주세요!<br>
								<br>
								※동영상을 추천 드립니다.
							</p>
						</div>
					</div>
				</div>
			</div>
		</form>
		<script>
			$(function(){
				var $video = $("#type-video");
				var $image = $("#type-image");

				$video.css('backgroundColor', 'red');
				
				$video.click(function(){
					$image.css('backgroundColor', 'gray');
					$(this).css('backgroundColor', 'red');
				});
				
				$image.click(function(){
					$video.css('backgroundColor', 'gray');
					$(this).css('backgroundColor', 'red');
				});
			})
			</script>
	</div>
	<jsp:include page="common/lectureEnrollFormFooter.jsp"/>
</div>
</body>
</html>
