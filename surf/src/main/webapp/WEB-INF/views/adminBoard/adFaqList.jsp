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
.innerOuter {
	width: 80%;
	margin: auto;
}

#faqList tbody :hover {
	background: lightgray;
	cursor: pointer;
}

#search_btn {
	background: deepskyblue;
}

#search_btn:hover {
	background: rgb(52, 152, 219);
}

.faq1 {
	cursor: pointer;
}

.faq2 {
	display: none;
}

.left, .right {
	width: 50%;
	float: left;
}
</style>
<body>
	<jsp:include page="../admin/sidebar.jsp" />
	<!--여기서부터 우측 게시판-->
	<br>
	<div class="innerOuter" style="width: 950px">
		<br>
		<br>
		<br>
		<div>
			<h5>고객센터 관리 > FAQ (자주 묻는 질문)</h5>
			<br>
			<div class="left" align="left">
				<select name="refType" style="width: 120px;">
					<option value="사이트이용">사이트이용</option>
					<option value="계정">계정</option>
					<option value="결제/환불">결제/환불</option>
					<option value="강사">강사</option>
					<option value="클래스">클래스</option>
					<option value="기타">기타</option>
					<option selected>카테고리</option>
				</select> <input type="text" placeholder="키워드를 입력하세요">
				<button type="button" class="btn btn-default" id="search_btn">검색</button>
			</div>

			<c:if test="${ !empty loginUser }">
				<button type="button" class="btn btn-secondary" style="float: right"
					data-toggle="modal" data-target="#enrollForm">글쓰기</button>
			</c:if>

		</div>
		<br>
		<hr>
		<table class="table" id="faqList">
			<thead>
				<tr style="background-color: rgb(224, 224, 224)">
					<td width="90">번호</td>
					<td width="90">카테고리</td>
					<td width="500">제목</td>
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
						<td colspan="2" style="background: lightgray">A.</td>
						<td align="left" style="background: lightgray">
							<p>${ ab.boardContent }</p> <br>
							<div align="right">
								<a class="btn btn-primary" onclick="postFormSubmit(1, ${ab.boardNo});">수정</a> 
								<a class="btn btn-danger" onclick="postFormSubmit(2, ${ab.boardNo});">삭제</a>
								
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<form id="postForm" action="" method="post">
			<input id="bno" type="hidden" name="bno" value="">
		</form>
		
		
		<script>
			function postFormSubmit(num, bno) {
				if (num == 1) { // 수정하기
					$("#bno").val(bno);
					$("#postForm").attr("action", "updateFaq.ad").submit();
				} else { // 삭제하기
					$("#bno").val(bno);
					$("#postForm").attr("action", "deleteFaq.ad").submit();
				}
			}
		</script>

		<script>
			$(function() {
				$(".faq1").click(function() {

					var $faq2 = $(this).next();

					if ($faq2.css("display") == "none") {

						$(this).siblings(".faq2").slideUp();

						$faq2.slideDown(); // 보여지게끔
					} else {
						$faq2.slideUp(); // 사라지게끔
					}

				});
			})
		</script>

		<!-- 글작성 모달창 -->
		<div class="modal" id="enrollForm">
			<div class="modal-dialog">
				<div class="modal-content">
					<form action="insertFaq.ad" method="post">
						<div class="modal-header">
							<h4 class="modal-title">글 작성</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<div class="modal-body" align="center">
							<input type="hidden" name="userNo" value="${ loginUser.userNo }">
							<table class="table">
								<tr>
									<td>질문</td>
									<td><input type="text" class="form-control" id="question"
										name="boardTitle" required></td>
								</tr>
								<tr>
									<td>카테고리</td>
									<td><select style="width: 100%;" name="faqCategory">
											<option value="사이트이용">사이트이용</option>
											<option value="계정">계정</option>
											<option value="결제/환불">결제/환불</option>
											<option value="강사">강사</option>
											<option value="클래스">클래스</option>
											<option value="기타">기타</option>
											<option selected>카테고리</option>
									</select></td>
								</tr>
								<tr>
									<td>답변</td>
									<td><textarea class="form-control" id="answer"
											name="boardContent" rows="10" required></textarea></td>
								</tr>
							</table>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary">등록</button>
							<button type="button" class="btn btn-secondary">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<br>

		<!--여기서부터 페이지이동-->
		<ul class="pagination justify-content-center">
			<c:choose>
				<c:when test="${ pi.currentPage eq 1 }">
					<li class="page-item disabled"><a class="page-link">이전</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="faqList.ad?currentPage=${ pi.currentPage-1 }">이전</a></li>
				</c:otherwise>
			</c:choose>

			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.maxPage }">
				<li class="page-item"><a class="page-link"
					href="faqList.ad?currentPage=${ p }">${ p }</a></li>
			</c:forEach>

			<c:choose>
				<c:when test="${ pi.currentPage eq pi.maxPage }">
					<li class="page-item disabled"><a class="page-link">다음</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="faqList.ad?currentPage=${ pi.currentPage+1 }">다음</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>


</body>
</html>