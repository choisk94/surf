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
        <table class="table">
          <thead>
            <tr style="background-color: rgb(224, 224, 224)">
              <td width="70">번호</td>
              <td width="100">신고자</td>
              <td width="100">신고된 ID</td>
              <td width="100">신고 유형</td>
              <td width="300">신고 사유</td>
              <td width="130">신고날짜</td>
              <td width="100">처리여부</td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>45</td>
              <td>user10</td>
              <td>black10</td>
              <td>댓글</td>
              <td>부적절한 홍보 게시물</td>
              <td>2021-07-16</td>
              <td>대기중</td>
            </tr>
            <tr>
              <td>44</td>
              <td>user09</td>
              <td>black09</td>
              <td>게시글</td>
              <td>명예훼손/사생활침해 및 저작권침해 등</td>
              <td>2021-07-16</td>
              <td>기각</td>
            </tr>
            <tr>
              <td>43</td>
              <td>user09</td>
              <td>black09</td>
              <td>게시글</td>
              <td>부적절한 홍보 게시물</td>
              <td>2021-07-16</td>
              <td>블라인드</td>
            </tr>
            <tr>
              <td>42</td>
              <td>user09</td>
              <td>black09</td>
              <td>댓글</td>
              <td>욕설 및 비방</td>
              <td>2021-07-16</td>
              <td>블라인드</td>
            </tr>
            <tr>
              <td>41</td>
              <td>user09</td>
              <td>black09</td>
              <td>댓글</td>
              <td>욕설 및 비방</td>
              <td>2021-07-16</td>
              <td>블라인드</td>
            </tr>
            <tr>
              <td>40</td>
              <td>user09</td>
              <td>black09</td>
              <td>게시글</td>
              <td>명예훼손/사생활침해 및 저작권침해 등</td>
              <td>2021-07-16</td>
              <td>기각</td>
            </tr>
            <tr>
              <td>39</td>
              <td>user09</td>
              <td>black09</td>
              <td>게시글</td>
              <td>부적절한 홍보 게시물</td>
              <td>2021-07-16</td>
              <td>블라인드</td>
            </tr>
          </tbody>
        </table>
        <br>
        <!--여기서부터 페이지이동-->
        <ul class="pagination justify-content-center">
          <li class="page-item"><a class="page-link" href="#">이전</a></li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">4</a></li>
          <li class="page-item"><a class="page-link" href="#">5</a></li>
          <li class="page-item"><a class="page-link" href="#">다음</a></li>
        </ul>
      </div>
      

</body>
</html>