<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="sidebar.jsp" />
	<br>
	<div class="ml-4" style="width: 950px">
		<br>
		<br>
		<br>
		<div>
			<h4>회원 관리</h4>
			<div align="right">
				<input type="text"
					style="border: 0; outline: 0; background-color: #F8F9FA;"
					placeholder="입력하라냥">
				<button type="button"
					style="background-color: #3AB6F7; border: 0; outline: 0; border-radius: 10px;">
					🔍</button>
			</div>
		</div>
		<hr>
		<table class="table">
			<tr style="background-color: rgb(224, 224, 224)">
				<td width="100">관리</td>
				<td width="150">회원번호</td>
				<td width="300">아이디</td>
				<td width="140">이름</td>
				<td width="150">가입일</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>90343</td>
				<td>cciv</td>
				<td>임영웅</td>
				<td>2021-07-30</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>90343</td>
				<td>cciv</td>
				<td>임영웅</td>
				<td>2021-07-30</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>90343</td>
				<td>cciv</td>
				<td>임영웅</td>
				<td>2021-07-30</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>90343</td>
				<td>cciv</td>
				<td>임영웅</td>
				<td>2021-07-30</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>90343</td>
				<td>cciv</td>
				<td>임영웅</td>
				<td>2021-07-30</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>90343</td>
				<td>cciv</td>
				<td>임영웅</td>
				<td>2021-07-30</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>90343</td>
				<td>cciv</td>
				<td>임영웅</td>
				<td>2021-07-30</td>
			</tr>
		</table>
		<div style="text-align: right;">
			<button type="button" class="btn btn-danger">회원탈퇴</button>
		</div>
		<!--여기서부터 페이지이동-->
		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#">이전</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">다음</a></li>
		</ul>
	</div>

	</div>

	</div>

</body>
</html>