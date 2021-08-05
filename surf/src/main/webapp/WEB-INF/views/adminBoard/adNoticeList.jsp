<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 관리</title>
</head>
<style>
	.innerOuter{width:80%; margin:auto;}
  	.table tbody :hover{background:lightgray; cursor:pointer;}
  	#search_btn{background:deepskyblue;}
  	#search_btn:hover{background:rgb(52, 152, 219);}
</style>
<body>
	<jsp:include page="../admin/sidebar.jsp"/>
		 <!--여기서부터 우측 게시판-->
      <br>
      <div class="innerOuter" style="width:950px">
        <br><br><br>
        <div>
          <h5>고객센터 관리 > 공지사항 목록</h5>
          <div align="right">
            <input type="text" placeholder="키워드를 입력하세요">
            <button type="button" class="btn btn-default" id="search_btn">검색</button>
          </div>
        </div>
        <hr>
        <table class="table">
          <thead>
            <tr style="background-color: rgb(224, 224, 224)">
              <td width="100">번호</td>
              <td width="400">제목</td>
              <td width="100">작성자</td>
              <td width="130">작성일</td>
              <td width="100">조회수</td>
            </tr>
          </thead>
          <tbody>
          	<c:forEach var="ab" items="${ list }">
	            <tr>
	              <td>${ ab.boardNo }</td>
	              <td align="left">${ ab.boardTitle }</td>
	              <td>${ ab.nickname }</td>
	              <td>${ ab.createDate }</td>
	              <td>${ ab.count }</td>
	            </tr>
      		</c:forEach>
          </tbody>
        </table>
        <br>
        <div align="right">
          <button type="button" class="btn btn-secondary" href="">글쓰기</button>
        </div>
        <!--여기서부터 페이지이동-->
        <ul class="pagination justify-content-center">
        	<c:choose>	
        		<c:when test="${ pi.currentPage eq 1 }">
	          		<li class="page-item disabled"><a class="page-link">이전</a></li>
	          	</c:when>
	          	<c:otherwise>
	          		<li class="page-item"><a class="page-link" href="noticeList.ad?currentPage=${ pi.currentPage-1 }">이전</a></li>
           		</c:otherwise>
            </c:choose>
            
            <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.maxPage }">
          		<li class="page-item"><a class="page-link" href="noticeList.ad?currentPage=${ p }">${ p }</a></li>
          	</c:forEach>
          	
          	<c:choose>
          		<c:when test="${ pi.currentPage eq pi.maxPage }">
		          	<li class="page-item disabled"><a class="page-link">다음</a></li>
		    	</c:when>
		    	<c:otherwise>      	
		          	<li class="page-item"><a class="page-link" href="noticeList.ad?currentPage=${ pi.currentPage+1 }">다음</a></li>
          		</c:otherwise>
          	</c:choose>
        </ul>
      </div>
	 
</body>
</html>