<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>광고 베너 관리</title>
</head>
<body>
<jsp:include page="sidebar.jsp"/>
      <br>
      <div class="ml-4" style="width:950px">
        <br><br><br>
        <div>
          <h4>클래스 등록관리</h4>
            
          <div style="float: right; width: 28%;"><input type="text" placeholder="입력하라냥">
            <button>검색</button></div>
            <div id="filter" style=" float: right; width: 15%;">
              <select id="qna-filter" style="width:140px; height: 30px; font-size:14px;">
                  <option value="">전체 조회</option>
                  <option value="승인">승인</option>
                  <option value="반려">반려</option>
                  <option value="펀딩중">펀딩중</option>

              </select>
              </div>
        </div>
        <br>
        <hr>
        <table class="table">
          <tr style="background-color: rgb(224, 224, 224)">
            <td width="70">관리</td>
            <td width="130">아이디</td>
            <td width="130">강사 이름</td>
            <td width="140">카테고리</td>
            <td width="200">클래스명 및 소개</td>
            <td width="140">등록일</td>
            <td width="100">상태</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>sdfsdf@naver.com</td>
            <td>강보람</td>
            <td>글쓰기</td>
            <td>야 너두 글 쓸수 있어</td>
            <td>2021-07-20</td>
            <td>승인</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>sdfsdf@naver.com</td>
            <td>강보람</td>
            <td>글쓰기</td>
            <td>야 너두 글 쓸수 있어</td>
            <td>2021-07-20</td>
            <td>펀딩</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>sdfsdf@naver.com</td>
            <td>강보람</td>
            <td>글쓰기</td>
            <td>야 너두 글 쓸수 있어</td>
            <td>2021-07-20</td>
            <td>반려</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>sdfsdf@naver.com</td>
            <td>강보람</td>
            <td>글쓰기</td>
            <td>야 너두 글 쓸수 있어</td>
            <td>2021-07-20</td>
            <td>승인</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>sdfsdf@naver.com</td>
            <td>강보람</td>
            <td>글쓰기</td>
            <td>야 너두 글 쓸수 있어</td>
            <td>2021-07-20</td>
            <td>승인</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>sdfsdf@naver.com</td>
            <td>강보람</td>
            <td>글쓰기</td>
            <td>야 너두 글 쓸수 있어</td>
            <td>2021-07-20</td>
            <td>승인</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>sdfsdf@naver.com</td>
            <td>강보람</td>
            <td>글쓰기</td>
            <td>야 너두 글 쓸수 있어</td>
            <td>2021-07-20</td>
            <td>승인</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>sdfsdf@naver.com</td>
            <td>강보람</td>
            <td>글쓰기</td>
            <td>야 너두 글 쓸수 있어</td>
            <td>2021-07-20</td>
            <td>승인</td>
          </tr>

        </table>
        <div style="text-align: right;">
          <button type="button" class="btn btn-primary">승인</button>
          <button type="button" class="btn btn-danger">삭제</button>
          <button type="button" class="btn btn-warning" style="color: white;">펀딩</button>
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