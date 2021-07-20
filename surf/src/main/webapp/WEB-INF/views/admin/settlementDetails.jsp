<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
	<jsp:include page="sidebar.jsp"/>
      <div class="ml-4" style="width:950px">
        <br><br><br>
        <div>
          <h4>결제내역관리>정산 내역</h4>
          <div align="right"><input type="text" placeholder="입력하라냥">
            <button>검색</button></div>
        </div>
        <hr>
        <table class="table">
          <tr style="background-color: rgb(224, 224, 224)">
            <td width="150">아이디</td>
            <td width="100">닉네임</td>
            <td width="200">클래스명</td>
            <td width="120">결제일</td>
            <td width="120">정산상태</td>
            <td width="120">정산예정일</td>
          </tr>
          <tr>
            <td>dsds@naver.com</td>
            <td>피카츄</td>
            <td>클래스명</td>
            <td>2021-07-30</td>
            <td>N</td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td>dsds@naver.com</td>
            <td>피카츄</td>
            <td>클래스명</td>
            <td>2021-07-30</td>
            <td>N</td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td>dsds@naver.com</td>
            <td>피카츄</td>
            <td>클래스명</td>
            <td>2021-07-30</td>
            <td>N</td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td>dsds@naver.com</td>
            <td>피카츄</td>
            <td>클래스명</td>
            <td>2021-07-30</td>
            <td>N</td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td>dsds@naver.com</td>
            <td>피카츄</td>
            <td>클래스명</td>
            <td>2021-07-30</td>
            <td>N</td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td>dsds@naver.com</td>
            <td>피카츄</td>
            <td>클래스명</td>
            <td>2021-07-30</td>
            <td>N</td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td>dsds@naver.com</td>
            <td>피카츄</td>
            <td>클래스명</td>
            <td>2021-07-30</td>
            <td>N</td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td>dsds@naver.com</td>
            <td>피카츄</td>
            <td>클래스명</td>
            <td>2021-07-30</td>
            <td>N</td>
            <td>2021-07-30</td>
          </tr>
        </table>
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