<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강 후기 조회</title>
<style>
#content {
	width: 980px;
	height: 850px;
	float: left;
}
#page-title {
	font-size: 20px;
	font-weight: 600;
	width: 300px;
	margin-top: 40px;
	margin-left: 40px;
}

#select-wrap {
	float: left;
	margin-top: 30px;
	margin-left: 45px;
	width: 650px;
	height: 40px;
}

#select-wrap>label {
	float: left;
	margin-top: 6px;
}

#select-wrap>select {
	float: left;
	width: 500px;
	margin-left: 15px;
}

#check-wrap {
	float: left;
	width: 185px;
	margin-top: 40px;
	margin-left: 60px;
}

#class-list {
	width: 900px;
	margin-top: 80px;
	table-layout: fixed;
}

#class-list tr {
	line-height: 18px;
}

#class-list td {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

#class-list>tbody>tr:hover {
	cursor: pointer;
}

#paging-wrap {
	width: 300px;
	height: 50px;
	margin-top: 60px;
	margin-left: 340px;
	display: flex;
}

#pagination {
	margin: auto;
}
</style>
</head>
<body>
	<div id="outer">

		<jsp:include page="common/teacherHeaderTemp.jsp" />

		<div id="content">
			<div id="page-title">클래스 관리 > 수강 후기 조회</div>
			<div id="select-wrap">
				<label for="select-class">조회 클래스 선택</label>
				<select class="form-control" id="select-class">
					<c:forEach var="c" items="${ clist }">
						<option>${ c.classTitle }</option>
					</c:forEach>
				</select>
			</div>

			<table class="table table-hover" id="class-list" align="center">
				<thead class="thead-light">
					<tr>
						<th style="width: 70px;" class="text-center">번호</th>
						<th style="width: 480px;" class="text-center">내용</th>
						<th style="width: 70px;" class="text-center">별점</th>
						<th style="width: 150px;" class="text-center">작성자</th>
						<th style="width: 130px;" class="text-center">작성일</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="r" items="${ rlist }">
	                    <tr>
	                        <td class="text-center sno">${ r.surveyNo }</td>
	                        <td>${ r.review }</td>
	                        <td class="text-center">${ r.score }</td>
	                        <td class="text-center">${ r.userNo }</td>
	                        <td class="text-center">${ r.createDate }</td>
	                    </tr>
                    </c:forEach>
                    
                    <script>
		            	$(function(){
		            		$("#class-list>tbody>tr").click(function(){
		            			location.href="reviewDetail.te?sno=" + $(this).children(".sno").text();
		            		})
		            	})
		            </script>
				</tbody>
			</table>
			
			<div id="paging-wrap">
				<div id="pagination">
					<ul class="pagination">
	                    <c:choose>
		                    <c:when test="${ pi.currentPage eq 1 }">
		                    	<li class="page-item disabled"><a class="page-link">&lt;</a></li>
		                    </c:when>
		                    <c:otherwise>
		                    	<li class="page-item"><a class="page-link" href="classReview.te?currentPage=${ pi.currentPage-1 }">Previous</a></li>
		                    </c:otherwise>
	                    </c:choose>
	                    
	                    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
	                    <li class="page-item"><a class="page-link" href="classReview.te?currentPage=${ p }">${ p }</a></li>
	                    </c:forEach>
	                    
	                    <c:choose>
	                    	<c:when test="${ pi.currentPage eq pi.maxPage }">
		                    	<li class="page-item disabled"><a class="page-link">&gt;</a></li>
		                    </c:when>
		                    <c:otherwise>
		                    	<li class="page-item"><a class="page-link" href="classReview.te?currentPage=${ pi.currentPage+1 }">Next</a></li>
		                    </c:otherwise>
	                    </c:choose>
	                </ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>