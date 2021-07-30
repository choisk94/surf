<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>광고베너관리</title>
</head>
<style>
#pagingArea{width:fit-content;margin:auto;}
</style>
<body>
	<jsp:include page="sidebar.jsp"/>
          <!--여기서부터 우측 게시판-->
      <br>
      <div class="ml-4" style="width:950px">
      
        <br><br><br>
        <div>
          <h4>광고 베너 관리</h4>
          <div align="right"><input type="text" style=" border: 0; outline: 0; background-color: #F8F9FA;" placeholder="입력하라냥">
            <button type="button" style="background-color: #3AB6F7; border: 0; outline: 0;  border-radius:10px;">	
              🔍</button></div>
        </div>
        <hr>
        <table id="boardList" class="table">
        <thead>
          <tr style="background-color: rgb(224, 224, 224)">
            <td width="70">관리</td>
            <td width="70">번호</td>
            <td width="540">제목</td>
            <td width="140">작성일</td>
            <td width="100">표시상태</td>
          </tr>
        </thead>
           <tbody>
                	<c:forEach var="b" items="${list}">
	                    <tr>
	                    	<td><input type="checkbox"></td>
	                        <td class="bno">${ b.adNo }</td>
	                        <td>${ b.adTitle }</td>
	                        <td>${ b.uploadDate }</td>
	                        <td>${ b.adStatus }</td>
	                    </tr>
                   	</c:forEach>
                </tbody>
        </table>
        	<script>
            	$(function(){
            		$("#boardList>tbody>tr").click(function(){
            			location.href="detail.bo?bno=" + $(this).children(".bno").text();
            		})
            	})
            </script>
             <div style="text-align: right;">
          <a type="button" class="btn btn-primary" href="adEnroll.ad">등록</a>
          <a type="button" class="btn btn-success">수정</a>
          <button type="button" class="btn btn-danger">삭제</button>
          <button type="button" class="btn btn-warning" style="color: white;">표시</button>
        </div>
            <br>

            <div id="pagingArea">
                <ul class="pagination">
                	<c:choose>
                		<c:when test="${ pi.currentPage eq 1 }">
	                    	<li class="page-item disabled"><a class="page-link">Previous</a></li>
	                    </c:when>
	                    <c:otherwise>
	                    	<c:choose>
	                    		<c:when test="${ !empty condition }">
	                    			<li class="page-item"><a class="page-link" href="search.bo?currentPage=${ pi.currentPage-1 }&condition=${condition}&keyword=${keyword}">Previous</a></li>
                    			</c:when>
                    			<c:otherwise>
                    				<li class="page-item"><a class="page-link" href="list.bo?currentPage=${ pi.currentPage-1 }">Previous</a></li>
                    			</c:otherwise>
                    		</c:choose>
                    	</c:otherwise>
                    </c:choose>
                    
                    
                    
                    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                    	<c:choose>
                    		<c:when test="${ !empty condition }">
                   				<li class="page-item"><a class="page-link" href="search.bo?currentPage=${ p }&condition=${condition}&keyword=${keyword}">${ p }</a></li>
                   			</c:when>
                   			<c:otherwise>
                   				<li class="page-item"><a class="page-link" href="list.bo?currentPage=${ p }">${ p }</a></li>
                   			</c:otherwise>
                    	</c:choose>
                    </c:forEach>
                    
                    
                    <c:choose>
                    	<c:when test="${ pi.currentPage eq pi.maxPage }">
	                    	<li class="page-item disabled"><a class="page-link">Next</a></li>
	                    </c:when>
	                    <c:otherwise>
	                    	<c:choose>
	                    		<c:when test="${ !empty condition }">
		                    		<li class="page-item"><a class="page-link" href="search.bo?currentPage=${ pi.currentPage+1 }&condition=${condition}&keyword=${keyword}">Next</a></li>
		                    	</c:when>
		                    	<c:otherwise>
		                    		<li class="page-item"><a class="page-link" href="list.bo?currentPage=${ pi.currentPage+1 }">Next</a></li>
		                    	</c:otherwise>
		                    </c:choose>
	                    </c:otherwise>
                    </c:choose>
                </ul>
            </div>
      </div>
      
</body>
</html>