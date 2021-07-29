<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    .clbtn{text-decoration: none; color: black; font-weight: bold;}
</style>
<body>
<jsp:include page="sidebar.jsp"/>
    <br>
      <div class="ml-4" style="width:950px">
        <br><br><br>
        <div>
          <h4>클래스 관리 > 클래스 펀딩 관리</h4>
            
          <div align="right" style="float: right; width: 28%;"><input type="text" style=" border: 0; outline: 0; background-color: #F8F9FA; " placeholder="입력하라냥">
            <button type="button" style="background-color: #3AB6F7; border: 0; outline: 0;  border-radius:10px;">	
              🔍</button></div>
            <div id="filter" style=" float: right; width: 72%;">
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
            <td width="130">승인여부</td>
            <td width="130">달성률</td>
            <td width="400">클래스명</td>
            <td width="200">펀딩만료일</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>N</td>
            <td>50/200</td>
            <td><a class="clbtn" href="classDetailedInquiry.do">야 너두 글쓸수 있옹</a></td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>N</td>
            <td>50/200</td>
            <td><a class="clbtn" href="classDetailedInquiry.do">유학 없이도 유창한 영어 회화 독학법!</a></td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>N</td>
            <td>50/200</td>
            <td><a class="clbtn" href="classDetailedInquiry.do"> 집에서 만드는 초간단 요리 7가지</a></td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>N</td>
            <td>50/200</td>
            <td><a class="clbtn" href="classDetailedInquiry.do">초보도 가능한 오일파스텔 풍경화 일러스트</a></td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>N</td>
            <td>50/200</td>
            <td><a class="clbtn" href="classDetailedInquiry.do">박하늘쌤과 함께 기초체력을 기르자 </a></td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>N</td>
            <td>50/200</td>
            <td><a class="clbtn" href="classDetailedInquiry.do"> 이제 내 방도 댄스교실이 될 수 있다!</a></td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>N</td>
            <td>50/200</td>
            <td><a class="clbtn" href="classDetailedInquiry.do">야 너두 글쓸수 있옹</a></td>
            <td>2021-07-30</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>N</td>
            <td>50/200</td>
            <td><a class="clbtn" href="classDetailedInquiry.do">야 너두 글쓸수 있옹</a></td>
            <td>2021-07-30</td>
          </tr>
         

        </table>
        <div style="text-align: right;">
          <button type="button" class="btn btn-primary">승인</button>
          <button type="button" class="btn btn-danger">삭제</button></div>
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