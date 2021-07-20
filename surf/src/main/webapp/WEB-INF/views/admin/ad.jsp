<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>광고베너관리</title>
</head>
<body>
	<jsp:include page="sidebar.jsp"/>
          <!--여기서부터 우측 게시판-->
      <br>
      <div class="ml-4" style="width:950px">
        <br><br><br>
        <div>
          <h4>광고 베너 관리</h4>
          <div align="right"><input type="text" placeholder="입력하라냥">
            <button>검색</button></div>
        </div>
        <hr>
        <table class="table">
          <tr style="background-color: rgb(224, 224, 224)">
            <td width="70">관리</td>
            <td width="70">번호</td>
            <td width="540">제목</td>
            <td width="140">작성일</td>
            <td width="100">표시상태</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>10</td>
            <td>강사 광고</td>
            <td>2021-07-30</td>
            <td>Y</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>10</td>
            <td>강사 광고</td>
            <td>2021-07-30</td>
            <td>Y</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>10</td>
            <td>강사 광고</td>
            <td>2021-07-30</td>
            <td>Y</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>10</td>
            <td>강사 광고</td>
            <td>2021-07-30</td>
            <td>Y</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>10</td>
            <td>강사 광고</td>
            <td>2021-07-30</td>
            <td>Y</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>10</td>
            <td>강사 광고</td>
            <td>2021-07-30</td>
            <td>Y</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>10</td>
            <td>강사 광고</td>
            <td>2021-07-30</td>
            <td>Y</td>
          </tr>
        </table>
        <div style="text-align: right;">
          <button type="button" class="btn btn-primary">등록</button>
          <button type="button" class="btn btn-success">수정</button>
          <button type="button" class="btn btn-danger">삭제</button>
          <button type="button" class="btn btn-warning" style="color: white;">표시</button>
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