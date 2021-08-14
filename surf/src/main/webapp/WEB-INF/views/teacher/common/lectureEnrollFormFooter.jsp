<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .footer{
        width: 1200px;
        height: 100px;
        border-top: 5px solid rgb(32, 155, 212);
        margin: auto;
    }
    .footer>div{
        margin-top: 25px;
        float: right;
    }
    .footer>div>button{
        margin-right: 20px;
    }
</style>
</head>
<body>
	<div class="footer">
        <div>
            <c:choose>
                <c:when test="${ currentPage eq 4 }">
                    <div style="font-size: 12px; font-weight: 700; color:gray">강의 완성도 100% 입력 시 오픈 신청이 가능합니다.</div>
                    <button type="button" id="save-btn" class="btn btn-secondary" disabled><b>저장하기</b></button>
                    <button type="button" id="open-btn" class="btn btn-warning" disabled><b>오픈하기</b></button>
                </c:when>
                <c:otherwise>
                    <button type="button" id="save-btn" class="btn btn-secondary" disabled>저장하기</button>
                    <button type="button" id="next-btn" class="btn btn-info" disabled onclick="loadNextPage(${currentPage});">다음</button>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

    <script>
        // 처음 조건성립 시 '다음버튼' 활성화 
        function onLoadCheckSuccess(){
            $('#next-btn').removeAttr('disabled');
        }

        // input 데이터 조작 후 조건검사 성공 시 '저장버튼' 활성화
        function checkSuccess(){
            $('#save-btn').removeAttr('disabled');
            $('#next-btn').attr('disabled', true);
        }

        // input 데이터 조작 후 조건검사 성공 시 '저장버튼' 비활성화
        function checkFail(){
            $('#save-btn').attr('disabled', true);
            $('#next-btn').attr('disabled', true);
        }

        $('#save-btn').click(function(){
            $('#inputForm').submit();
            $('#next-btn').removeAttr('disabled');
        });

        // 다음 버튼 클릭시 다음페이지 이동 
        function loadNextPage(currentPage){

            $('input[name=currentPage]').val(${currentPage + 1});

            $('#loadPage').submit();
        }
    </script>
</body>
</html>