<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사 관리</title>
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
          <h5>강사 관리 > 강사 신청 목록</h5>
          <div align="right">
            <select name="refType" style="width: 120px;">
              <option>대기</option>
              <option>승인</option>
              <option>반려</option>
              <option selected>선택</option>
            </select>
            <input type="text" placeholder="키워드를 입력하세요">
            <button type="button" class="btn btn-default" id="search_btn">검색</button>
          </div>
        </div>
        <hr>
        <table class="table">
          <thead>
            <tr style="background-color: rgb(224, 224, 224)">
              <td width="70">강사번호</td>
              <td width="100">닉네임</td>
              <td width="100">대분류</td>
              <td width="100">소분류</td>
              <td width="130">연락처</td>
              <td width="100">상태</td>
            </tr>
          </thead>
          <tbody>
          	<c:forEach var="t" items="${ list }"> 
	            <tr>
	              <td class="tno">${ t.teacherNo }</td>
	              <td>${ t.nickname }</td>
	              <td>${ t.mainCatName }</td>
	              <td>${ t.subCatName }</td>
	              <td>${ t.phone }</td>
	              <td>${ t.status }</td>
	            </tr>
            </c:forEach>
          </tbody>
        </table>
        
        <script>
        	$(function(){
        		$("#adTeacherList>tbody>tr").click(function(){
        			location.href="detailTeacher.ad?tno=" + $(this).children(".tno").text();
        		})
        	})
        </script>
        
        <br>
        <!--여기서부터 페이지이동-->
        <ul class="pagination justify-content-center">
        	<c:choose>	
        		<c:when test="${ pi.currentPage eq 1 }">
	          		<li class="page-item disabled"><a class="page-link">이전</a></li>
	          	</c:when>
	          	<c:otherwise>
	          		<li class="page-item"><a class="page-link" href="teacherList.ad?currentPage=${ pi.currentPage-1 }">이전</a></li>
           		</c:otherwise>
            </c:choose>
            
            <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.maxPage }">
          		<li class="page-item"><a class="page-link" href="teacherList.ad?currentPage=${ p }">${ p }</a></li>
          	</c:forEach>
          	
          	<c:choose>
          		<c:when test="${ pi.currentPage eq pi.maxPage }">
		          	<li class="page-item disabled"><a class="page-link">다음</a></li>
		    	</c:when>
		    	<c:otherwise>      	
		          	<li class="page-item"><a class="page-link" href="teacherList.ad?currentPage=${ pi.currentPage+1 }">다음</a></li>
          		</c:otherwise>
          	</c:choose>
        </ul>
      </div>		 
</body>
</html>