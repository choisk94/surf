<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 등록하기_커리큘럼</title>
<style>
	.video-img {
		display: inline-block;
		width: 50px;
		margin-left: 20px;
		padding-left: 20px;
		font-size: 14px;
		font-weight: 700;
		height: 20px;
		background-repeat: no-repeat;
		background-size: 20px;
		background-image: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE3LjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4NCjxzdmcgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiIHk9IjBweCINCgkgdmlld0JveD0iMCAwIDI5OCAyOTgiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDI5OCAyOTg7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4NCjxwYXRoIGQ9Ik0yOTgsMzNjMC0xMy4yNTUtMTAuNzQ1LTI0LTI0LTI0SDI0QzEwLjc0NSw5LDAsMTkuNzQ1LDAsMzN2MjMyYzAsMTMuMjU1LDEwLjc0NSwyNCwyNCwyNGgyNTBjMTMuMjU1LDAsMjQtMTAuNzQ1LDI0LTI0VjMzDQoJeiBNOTEsMzloNDN2MzRIOTFWMzl6IE02MSwyNTlIMzB2LTM0aDMxVjI1OXogTTYxLDczSDMwVjM5aDMxVjczeiBNMTM0LDI1OUg5MXYtMzRoNDNWMjU5eiBNMTIzLDE3Ni43MDh2LTU1LjQxNw0KCWMwLTguMjUsNS44NjgtMTEuMzAyLDEyLjc3LTYuNzgzbDQwLjIzNywyNi4yNzJjNi45MDIsNC41MTksNi45NTgsMTEuOTE0LDAuMDU2LDE2LjQzNGwtNDAuMzIxLDI2LjI3Nw0KCUMxMjguODQsMTg4LjAxMSwxMjMsMTg0Ljk1OCwxMjMsMTc2LjcwOHogTTIwNywyNTloLTQzdi0zNGg0M1YyNTl6IE0yMDcsNzNoLTQzVjM5aDQzVjczeiBNMjY4LDI1OWgtMzF2LTM0aDMxVjI1OXogTTI2OCw3M2gtMzFWMzkNCgloMzFWNzN6Ii8+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8L3N2Zz4NCg==)
	}
	.minus-img {
		display: inline-block;
		width: 25px;
		height: 17px;
		background-repeat: no-repeat;
		background-size: 25px;
		background-image: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE5LjAuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJMYXllcl8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiIHk9IjBweCINCgkgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4NCjxwYXRoIHN0eWxlPSJmaWxsOiNGRjNGNjI7IiBkPSJNNDg4LjcyNywxODYuMTgySDI1NkgyMy4yNzNDMTAuNDIsMTg2LjE4MiwwLDE5Ni42LDAsMjA5LjQ1NXY5My4wOTENCgljMCwxMi44NTMsMTAuNDIsMjMuMjczLDIzLjI3MywyMy4yNzNIMjU2aDIzMi43MjdjMTIuODUzLDAsMjMuMjczLTEwLjQyLDIzLjI3My0yMy4yNzN2LTkzLjA5MQ0KCUM1MTIsMTk2LjYsNTAxLjU4LDE4Ni4xODIsNDg4LjcyNywxODYuMTgyeiIvPg0KPHBhdGggc3R5bGU9ImZpbGw6I0ZGMEMzODsiIGQ9Ik0yMy4yNzMsMTg2LjE4MkMxMC40MiwxODYuMTgyLDAsMTk2LjYsMCwyMDkuNDU1djkzLjA5MWMwLDEyLjg1MywxMC40MiwyMy4yNzMsMjMuMjczLDIzLjI3M0gyNTYNCglWMTg2LjE4MkgyMy4yNzN6Ii8+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8L3N2Zz4NCg==)
		}
	.plus-img{
		display: inline-block;
		width: 145px;
		height: 35px;
		background-repeat: no-repeat;
		background-size: 25px;
		background-image: url(data:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjUxMnB0IiB2aWV3Qm94PSIwIDAgNTEyIDUxMiIgd2lkdGg9IjUxMnB0IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGQ9Im0yNTYgMGMtMTQxLjE2NDA2MiAwLTI1NiAxMTQuODM1OTM4LTI1NiAyNTZzMTE0LjgzNTkzOCAyNTYgMjU2IDI1NiAyNTYtMTE0LjgzNTkzOCAyNTYtMjU2LTExNC44MzU5MzgtMjU2LTI1Ni0yNTZ6bTAgMCIgZmlsbD0iIzIxOTZmMyIvPjxwYXRoIGQ9Im0zNjggMjc3LjMzMjAzMWgtOTAuNjY3OTY5djkwLjY2Nzk2OWMwIDExLjc3NzM0NC05LjU1NDY4NyAyMS4zMzIwMzEtMjEuMzMyMDMxIDIxLjMzMjAzMXMtMjEuMzMyMDMxLTkuNTU0Njg3LTIxLjMzMjAzMS0yMS4zMzIwMzF2LTkwLjY2Nzk2OWgtOTAuNjY3OTY5Yy0xMS43NzczNDQgMC0yMS4zMzIwMzEtOS41NTQ2ODctMjEuMzMyMDMxLTIxLjMzMjAzMXM5LjU1NDY4Ny0yMS4zMzIwMzEgMjEuMzMyMDMxLTIxLjMzMjAzMWg5MC42Njc5Njl2LTkwLjY2Nzk2OWMwLTExLjc3NzM0NCA5LjU1NDY4Ny0yMS4zMzIwMzEgMjEuMzMyMDMxLTIxLjMzMjAzMXMyMS4zMzIwMzEgOS41NTQ2ODcgMjEuMzMyMDMxIDIxLjMzMjAzMXY5MC42Njc5NjloOTAuNjY3OTY5YzExLjc3NzM0NCAwIDIxLjMzMjAzMSA5LjU1NDY4NyAyMS4zMzIwMzEgMjEuMzMyMDMxcy05LjU1NDY4NyAyMS4zMzIwMzEtMjEuMzMyMDMxIDIxLjMzMjAzMXptMCAwIiBmaWxsPSIjZmFmYWZhIi8+PC9zdmc+)
	}
	.content>form>div:first-child{margin-bottom:20px;}

	.curriculum{
		width: 580px;
		border: 1px solid lightgray;
		border-radius: 5px;
		padding: 30px 0px 30px 40px;
		margin-bottom: 20px;
	}


	.note1{
		transform: translate(1230px, 200px);
		position: absolute;
		font-family: 'Nanum Gothic', sans-serif;
		z-index: -1;
		width: 235px;
		height:125px;
	}

	/*소제목*/
	.subTitle{
		display: inline-block;
		font-size:16px;
        font-weight: 700;
		width:40px;
	}
	/*제목 추가 버튼*/
	.insertTitle-btn{
		display: block;
		width: 75px;
		margin-left:180px;
		margin-top: 20px;
		font-weight: 700;
		font-size: 14px;
		color: gray;
	}
	
	/*챕터 추가 버튼*/
	#insertChapter-btn{
		display: block;
		margin-left:230px;
		margin-bottom: 20px;
		font-weight: 700;
		font-size: 24px;
		color: rgb(32, 155, 212);
		line-height: 28px;
	}
	
	.insertTitle-btn:hover, .minus-img:hover, #insertChapter-btn, .video-img{
		opacity: 0.8;
		cursor: pointer;
	}

	input[type=file]{
		display: none;
	}
</style>
</head>
<body>
	<div class="note-area note1">
		<span class="qus-title"> 강의 시작을 어떻게 해야 할까요?</span>
		<p class="qus-answer">
			&nbsp;수강생의 입장에서 어떤 강의를 듣게 되고<br>
			어떤게 궁금하지 유심히 생각해보세요.<br>
			&nbsp;클래스 소개, 강사님 소개, 준비물 소개를<br>
			먼저 구성하면 어떨까요?
		</p>
	</div>
	<jsp:include page="common/lectureEnrollForm.jsp"/>
	<!-- 복제 샘플 -->
	<div class="curriculum clone-box" style="display: none;">
		<div class="curriculum-box">
			<label class="subGuide">챕터1</label>
			<input type="text" class="form-control chap" style="width:400px; height:40px;" placeholder="챕터명을 입력해주세요">
			<br>
			<div class="subTitle-box">
				<div class="minus-img"></div>
				<label class="subTitle">1.1</label>
				<input type="text" name="" class="form-control" style="width:350px; height:40px; margin-bottom: 10px; display: inline;" placeholder="소제목을 입력해주세요.">
				<div class="video-img">추가</div>
				<input type="file" name="">
			</div>
		</div>
		<span class="insertTitle-btn">+ 제목 추가</span>
	</div>

	<div class="content">
		<form action="">
			<div>
				<label class="guide">강의 커리큘럼</label>
			</div>
			<div id="input-box">
				<div class="curriculum">
					<div class="curriculum-box">
						<label class="subGuide">챕터1</label>
						<input type="text" class="form-control chap" style="width:400px; height:40px;" placeholder="챕터명을 입력해주세요">
						<br>
						<div class="subTitle-box">
							<div class="minus-img"></div>
							<label class="subTitle">1.1</label>
							<input type="text" name="" class="form-control" style="width:350px; height:40px; margin-bottom: 10px; display: inline;" placeholder="소제목을 입력해주세요.">
							<div class="video-img">추가</div>
							<input type="file" name="">
						</div>
					</div>
					<span class="insertTitle-btn">+ 제목 추가</span>
				</div>
			</div>
			<div>
				<div id="insertChapter-btn" class="plus-img">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;챕터</div>
			</div>
		</form>
	</div>
	<script>
		// 1. +- 버튼 영역
		$(function(){
			var info = [[1, 1]];

			$('.minus-img').on('click', function(){
				var subTitleNo = $(this).siblings('.subTitle').text().substr(2, 1);
				var chapNo = $(this).siblings('.subTitle').text().substr(0, 1) - 1;
				var target = $(this).parents('.curriculum').children('.curriculum-box').children('.subTitle-box');
				
				if(subTitleNo < 2){
					alertify.alert("최소 한개 필요");
				}else{
					$(this).parent('.subTitle-box').remove();
					info[chapNo][1] -= 1;
					for(var i=subTitleNo; i<(info[chapNo][1] + 1); i++){
						target.eq(i).children('.subTitle').text((chapNo + 1) + '.' + i);
					}
				}
				
			})

			// + 제목추가 버튼(메소드)
			$('.insertTitle-btn').on('click', function(){
				//console.log($('.curriculum-box').children('div').eq(1));
				// 해당 버튼 챕터값 가져오기
				var chapNo = $(this).siblings(".curriculum-box").children('.subGuide').text().substr(2, 1) - 1;
				//chapNo = (chapNo.substr(2,1) - 1);
				
				if(info[chapNo][1] < 9){
					
					info[chapNo][1] += 1;
					var $clone = $(this).siblings(".curriculum-box").children(".subTitle-box").last().clone(true);
	
					$clone.children('.subTitle').html(info[chapNo][0]+ '.' + info[chapNo][1]);
	
					$(this).siblings(".curriculum-box").append($clone);
					
				}
				
			})

			


			// +챕터추가 버튼
			$('#insertChapter-btn').on('click', function(){
				// info 배열 추가
				var chapNo = info.length + 1;
				//console.log(chapNo);
				info.push([chapNo, 1]);
				
				var $clone = $('.clone-box').clone(true);
				$clone.css('display', 'block').removeClass('clone-box');
				$clone.find('.subGuide').text('챕터' + chapNo);
				$clone.find('.subTitle').text(chapNo + '.' + 1);

				$('#input-box').append($clone);
				
				
			})
		})
	</script>
	
	<jsp:include page="common/lectureEnrollFormFooter.jsp"/>
</div>
</body>
</html>