<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 관리</title>
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
          <h5>신고 관리 > 신고목록</h5>
          <div align="right">
            <select name="refType" style="width: 120px;">
              <option value="">게시글</option>
              <option value="">댓글</option>
              <option selected>선택</option>
            </select>
            <input type="text" placeholder="키워드를 입력하세요">
            <button type="button" class="btn btn-default" id="search_btn">검색</button>
          </div>
        </div>
        <hr>
        <table id="adReportList" class="table" align="center">
          <thead>
            <tr style="background-color: rgb(224, 224, 224)">
              <td width="70" id="rtype" name="refType">번호</td>
              <td width="100">신고자</td>
              <td width="100">신고된 ID</td>
              <td width="100">신고 유형</td>
              <td width="300">신고 사유</td>
              <td width="130">신고날짜</td>
              <td width="100">처리여부</td>
            </tr>
          </thead>
          <tbody>
          	<c:forEach var="p" items="${ list }">
	            <tr>
	              <td>${ p.reportNo }</td>
	              <td>${ p.reporter }</td>
	              <td>${ p.reported }</td>
	              <td>${ p.refType }</td>
	              <td class="report" data-toggle="modal" data-target="#selectReport">${ p.reportContent }</td>
	              <td>${ p.reportDate }</td>
	              <c:choose>
		           	  <c:when test="${ p.status == 'N' }">
		              	<td>처리 전</td>
		              </c:when>
		           	  <c:when test="${ p.status == 'B' }">
		              	<td style="color:red">블라인드</td>
		              </c:when>
		              <c:otherwise>
		              	<td>기각</td>
		              </c:otherwise>
	            </c:choose>
	            </tr>
            </c:forEach>
          </tbody>
        </table> 
      
        
    <!-- 신고 내용조회 모달창 -->
        <div class="modal" id="selectReport">
        	<div class="modal-dialog">
        		<div class="modal-content">
	        			<div class="modal-header">
	        			<h4 class="modal-title">신고글 조회</h4>
	        			<button type="button" class="close" data-dismiss="modal">&times;</button>
	        			</div>
	        			<div class="modal-body" align="center">

	        			<form action="report.ad" method="post">
                        	<input type="hidden" id="refType" name="refType">
                        	<input type="hidden" id="refNo" name="refNo">
                        	<input type="hidden" name="reporter" value="${ loginUser.userNo }">
                        	<input type="hidden" id="reported" name="reported">
                        	<input type="hidden" id="rsno" name="" value="">
                            
                            <div class="refType">
                            	신고 유형 <br>
                            	${ refType }
                            </div>
                            <br>
                            <div class="reportContent">
                            	신고 사유 <br>
                            	${ reportContent }
                            </div>
                            <br>
                            <div class="studyNo">
                            	내용 <br>
                            	${ studyNo }
                            </div>
                            <br>
                            <div class="modal-footer"> 
                            	<button type="button" class="btn btn-secondary" href="updateB.ad">블라인드</button>
	        					<button type="button" class="btn btn-danger" href="updateR.ad">기각</button>
                            </div>
                        </form>
	        			
        				<form id="updateReport" action="" method="post">
		        			<input type="hidden" name="reportNo" value="${ p.reportNo }">
                        </form>	               
                                           
						<script>
							function updateReport(num){
								if(num == 1("신고된 해당 글을 블라인드 처리 하시겠습니까?")){
									$("#updateReport").attr("action", "updateB.ad").submit();
								} else {
									if(confirm("신고된 해당 글을 기각 처리 하시겠습니까?")){
										$("#updateReport").attr("action", "updateR.ad").submit();
									}
								}
							}
					    </script>
        		</div>
        	</div>
        </div>
        
	<script>
		$(function(){
			$(".report").on("click", function(){
				$(".refType").val("게시글");
				$(".reportContent").val($(this).siblings(".sno").val());
				$(".studyNo").val($(this).siblings(".reported").val());
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
	          		<li class="page-item"><a class="page-link" href="reportList.ad?currentPage=${ pi.currentPage-1 }">이전</a></li>
           		</c:otherwise>
            </c:choose>
            
            <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.maxPage }">
          		<li class="page-item"><a class="page-link" href="reportList.ad?currentPage=${ p }">${ p }</a></li>
          	</c:forEach>
          	
          	<c:choose>
          		<c:when test="${ pi.currentPage eq pi.maxPage }">
		          	<li class="page-item disabled"><a class="page-link">다음</a></li>
		    	</c:when>
		    	<c:otherwise>
		          	<li class="page-item"><a class="page-link" href="reportList.ad?currentPage=${ pi.currentPage+1 }">다음</a></li>
          		</c:otherwise>
          	</c:choose>
        </ul>
      </div>
      

</body>
</html>