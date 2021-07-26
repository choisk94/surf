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
                    <button type="button" class="btn btn-secondary">저장하기</button>
                    <button type="button" class="btn btn-warning">오픈하기</button>
                </c:when>
                <c:otherwise>
                    <button type="button" class="btn btn-secondary">저장하기</button>
                    <button type="button" class="btn btn-info">다음</button>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</body>
</html>