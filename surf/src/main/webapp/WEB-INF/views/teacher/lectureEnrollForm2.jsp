<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 등록하기_소개</title>
<style type="text/css">
	.close-btn {
		display: none;
		margin-left: 10px;
		margin-top: 80px;
		background-size: 30px;
		background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiIGNsYXNzPSIiPjxnIHRyYW5zZm9ybT0ibWF0cml4KDEsMCwwLDEsMCwwKSI+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMSAxKSI+Cgk8Zz4KCQk8Zz4KCQkJPHBhdGggZD0iTTQzNi4wMTYsNzMuOTg0Yy05OS45NzktOTkuOTc5LTI2Mi4wNzUtOTkuOTc5LTM2Mi4wMzMsMC4wMDJjLTk5Ljk3OCw5OS45NzgtOTkuOTc4LDI2Mi4wNzMsMC4wMDQsMzYyLjAzMSAgICAgYzk5Ljk1NCw5OS45NzgsMjYyLjA1LDk5Ljk3OCwzNjIuMDI5LTAuMDAyQzUzNS45OTUsMzM2LjA1OSw1MzUuOTk1LDE3My45NjQsNDM2LjAxNiw3My45ODR6IE00MDUuODQ4LDQwNS44NDQgICAgIGMtODMuMzE4LDgzLjMxOC0yMTguMzk2LDgzLjMxOC0zMDEuNjkxLDAuMDA0Yy04My4zMTgtODMuMjk5LTgzLjMxOC0yMTguMzc3LTAuMDAyLTMwMS42OTMgICAgIGM4My4yOTctODMuMzE3LDIxOC4zNzUtODMuMzE3LDMwMS42OTEsMFM0ODkuMTYyLDMyMi41NDksNDA1Ljg0OCw0MDUuODQ0eiIgZmlsbD0iI2JkMWMxYyIgZGF0YS1vcmlnaW5hbD0iIzAwMDAwMCIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wYXRoPgoJCQk8cGF0aCBkPSJNMzYwLjU5MiwxNDkuNDA4Yy04LjMzMS04LjMzMS0yMS44MzktOC4zMzEtMzAuMTcsMGwtNzUuNDI1LDc1LjQyNWwtNzUuNDI1LTc1LjQyNWMtOC4zMzEtOC4zMzEtMjEuODM5LTguMzMxLTMwLjE3LDAgICAgIHMtOC4zMzEsMjEuODM5LDAsMzAuMTdsNzUuNDI1LDc1LjQyNUwxNDkuNDMsMzMwLjRjLTguMzMxLDguMzMxLTguMzMxLDIxLjgzOSwwLDMwLjE3YzguMzMxLDguMzMxLDIxLjgzOSw4LjMzMSwzMC4xNywwICAgICBsNzUuMzk3LTc1LjM5N2w3NS40MTksNzUuNDE5YzguMzMxLDguMzMxLDIxLjgzOSw4LjMzMSwzMC4xNywwYzguMzMxLTguMzMxLDguMzMxLTIxLjgzOSwwLTMwLjE3bC03NS40MTktNzUuNDE5bDc1LjQyNS03NS40MjUgICAgIEMzNjguOTIzLDE3MS4yNDcsMzY4LjkyMywxNTcuNzQsMzYwLjU5MiwxNDkuNDA4eiIgZmlsbD0iI2JkMWMxYyIgZGF0YS1vcmlnaW5hbD0iIzAwMDAwMCIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wYXRoPgoJCTwvZz4KCTwvZz4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8L2c+PC9zdmc+)
	}
</style>
<style>
	.content{
		width: 750px;
	}
	.content>form>div{width: 100%;}

	/*영역 나누기*/
	.content>form>div:nth-child(1){height:80px;}
	.content>form>div:nth-child(2){height:250px;}
	.content>form>div:nth-child(3){height:40px;}
	
	/*2번째 블록 좌우 영역 나누기*/
	.content>form>div:nth-child(2)>div{
		float: left;
		height: 100%;
	}
	.content>form>div:nth-child(2)>div:nth-child(1){width: 460px;}
	.content>form>div:nth-child(2)>div:nth-child(2){width: 285px;}
	/*2번째 블록 content css*/
	#introTitle{
		width: 400px;
		height: 40px;
	}
	#introContent{
		width: 400px;
		height: 100px;
		resize: none;
	}
	
	.note1{
		width: 252px;
		height: 115px;
	}
	
	/*복제 영역*/
	.introBox{
		width: 800px;
		height: 200px;
		margin-bottom: 50px;
	}
	.introBox>div{
		float: left;
		height: 100%;
	}

	.introBox>div:first-child{
		width: 400px;
		height: 200px;
		border: 1px solid lightgray;
		margin-right: 30px;
	}

	.inputFile{
		display:none;
	}
</style>
</head>
<body>
	<jsp:include page="common/lectureEnrollForm.jsp"/>
	
	<div class="content">
		<form>
			<div>
				<label class="guide">어떤 걸 알려 주실 수 있나요?</label>
				<label class="note">강의소개 메뉴를 통해 학생들에게 강의를 설명 할 수 있어요.</label>
			</div>
			<div>
				<div>
					<label for="introTitle" class="subGuide">강의소개 타이틀</label>
					<input type="text" name ="introTitle" id="introTitle" class="form-control" placeholder="컨셉이 잘 드러나는 클래스의 제목을 지어주세요">
					<br>
					<label for="introContent" class="subGuide">강의소개 설명</label>
					<textarea name="introContent" id="introContent" cols="30" rows="10" class="form-control" placeholder="내용을 입력해주세요"></textarea>
				</div>
				<div>
					<div class="note-area note1">
						<span class="qus-title">강의소개는 뭔가요?</span>
						<p class="qus-answer">
							강의 상세 조회 페이지에서 학생들이 강의소개<br>
							메뉴를 누르면 해당 작성내용을 토대로 강의<br>
							소개를 하게 됩니다. 
						</p>
					</div>
				</div>
			</div>
			<div>
				<label for="introContent" class="subGuide">클래스 설명</label>
			</div>
			<div id="clone-area">
				<div class="introBox intro1">
					<div>
						<img id="introImg1" src="">
					</div>
					<div>
						<textarea name="ioContent" id="introContent1" class="form-control" style="width: 300px; height: 200px; resize:none;" placeholder="클래스 설명 이미지에 맞는 클래스 설명을 적어주세요."></textarea>
					</div>
				</div>
				<div class="introBox intro2">
					<div>
						<img id="introImg2" src="">
					</div>
					<div>
						<textarea name="ioContent" id="introContent2" class="form-control" style="width: 300px; height: 200px; resize:none;" placeholder="클래스 설명 이미지에 맞는 클래스 설명을 적어주세요."></textarea>
					</div>
					<div class="close-btn" style="width: 30px; height: 30px;">
					</div>
				</div>
			</div>
			<div align="center">
				<button type="button" id="clone-btn" class="btn btn-info">+ 클래스 설명 추가</button><br>
				<label style="font-size:12px; color:gray">※클래스 설명은 6개까지 작성 할 수 있습니다.</label>
			</div>
			<input type="file" class="inputFile">
		</form>
	</div>
	<jsp:include page="common/lectureEnrollFormFooter.jsp"/>
</div>
<script>
	$(function(){	// 클래스 설명 요소 추가, 제거버튼 hover, 제거
		var introCount = 2;

		$('#clone-btn').click(function(){
			if(introCount < 6){
				var $clone = $('#clone-area>div:last-child').clone(true);
				$('#clone-area').append($clone);
				//$clone.removeClass('intro'+ introCount).addClass('intro' + (introCount + 1));
				//$clone.find('#introImg2').removeAttr('id', 'introImg2').attr('id', 'introImg' + (introCount + 1));
				++introCount;
			}
			console.log(introCount);
		});

		$('.introBox')
			.on('mouseover', function(){
				if(introCount > 2) {
					$(this).children('.close-btn').show();
				}
			})
			.on("mouseout", function(){
                $(this).children('.close-btn').hide();
            });
		
		$('.close-btn').on('click', function(){
			$(this).parent('.introBox').remove();
			--introCount;
			console.log(introCount);
		});
	})
</script>
</body>
</html>