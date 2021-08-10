<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 관리</title>
</head>
<style>
	.innerOuter{width:80%; margin:auto;}
	.table tbody :hover{background:lightgray; cursor:pointer;}
  	#search_btn{background:deepskyblue;}
  	#search_btn:hover{background:rgb(52, 152, 219);}
  	.faq1{cursor:pointer;}
  	.faq2{display:none;}
  	.left, .right{width:50%; float:left;}
</style>
<body>
	<jsp:include page="../admin/sidebar.jsp"/>
		 <!--여기서부터 우측 게시판-->
      <br>
      <div class="innerOuter" style="width:950px">
        <br><br><br>
        <div>
          <h5>고객센터 관리 > FAQ (자주 묻는 질문)</h5>
          <br>
          <div class="left" align="left">
            <select name="refType" style="width: 120px;">
              <option value="">회원문의</option>
              <option value="">주문결제</option>
              <option value="">취소/환불</option>
              <option value="">서비스 이용</option>
              <option value="">기타</option>
              <option selected>카테고리</option>
            </select>
            <input type="text" placeholder="키워드를 입력하세요">
            <button type="button" class="btn btn-default" id="search_btn">검색</button>
          </div>

          <c:if test="${ !empty loginUser }">
            <a class="btn btn-secondary" style="float:right" href="">글쓰기</a>
		  </c:if>

        </div>
        <br>
        <hr>
        <table class="table">
          <thead>
            <tr style="background-color: rgb(224, 224, 224)">
              <td width="90">번호</td>
              <td width="110">카테고리</td>
              <td width="500" >제목</td>
            </tr>
          </thead>
          <tbody>
          	<c:forEach var="ab" items="${ list }">
	            <tr class="faq1">
	              <td>${ ab.boardNo }</td>
	              <td>${ ab.faqCategory }</td>
	              <td align="left">
	                <div>${ ab.boardTitle }</div>
	              </td>
	            </tr>
	            <tr class="faq2">
	              <td colspan="2">A. </td>
	              <td align="left">
	                <p>${ ab.boardContent }</p>
	              </td>
	            </tr>
            </c:forEach>
          </tbody>
        </table>

        <script>
          $(function(){
              $(".faq1").click(function(){

                  var $faq2 = $(this).next();

                  if($faq2.css("display") == "none"){ 

                    $(this).siblings(".faq2").slideUp();

                    $faq2.slideDown(); // 보여지게끔
                  }else{ 
                    $faq2.slideUp(); // 사라지게끔
                  }

              });
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
	          		<li class="page-item"><a class="page-link" href="faqList.ad?currentPage=${ pi.currentPage-1 }">이전</a></li>
           		</c:otherwise>
            </c:choose>
            
            <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.maxPage }">
          		<li class="page-item"><a class="page-link" href="faqList.ad?currentPage=${ p }">${ p }</a></li>
          	</c:forEach>
          	
          	<c:choose>
          		<c:when test="${ pi.currentPage eq pi.maxPage }">
		          	<li class="page-item disabled"><a class="page-link">다음</a></li>
		    	</c:when>
		    	<c:otherwise>      	
		          	<li class="page-item"><a class="page-link" href="faqList.ad?currentPage=${ pi.currentPage+1 }">다음</a></li>
          		</c:otherwise>
          	</c:choose>
        </ul>
      </div>
      

</body>
</html>