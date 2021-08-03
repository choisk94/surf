<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 관리</title>
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
          <h5>고객센터 관리 > 공지사항 목록</h5>
          <div align="right">
            <input type="text" placeholder="키워드를 입력하세요">
            <button type="button" class="btn btn-default" id="search_btn">검색</button>
          </div>
        </div>
        <hr>
        <table class="table">
          <thead>
            <tr style="background-color: rgb(224, 224, 224)">
              <td width="100">번호</td>
              <td width="400">제목</td>
              <td width="100">작성자</td>
              <td width="130">작성일</td>
              <td width="100">조회수</td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>59</td>
              <td align="left">[공지] 개인정보 취급방침 개정 안내</td>
              <td>surf01</td>
              <td>2021-07-10</td>
              <td>100</td>
            </tr>
            <tr>
              <td>58</td>
              <td align="left">[공지] 개인정보 취급방침 개정 안내</td>
              <td>surf01</td>
              <td>2021-07-10</td>
              <td>100</td>
            </tr>
            <tr>
              <td>57</td>
              <td align="left">[이벤트] 하계이벤트!</td>
              <td>surf01</td>
              <td>2021-07-10</td>
              <td>100</td>
            </tr>
            <tr>
              <td>56</td>
              <td align="left">[공지] 네이버페이 추가</td>
              <td>surf01</td>
              <td>2021-07-10</td>
              <td>100</td>
            </tr>
            <tr>
              <td>55</td>
              <td align="left">[공지] 개인정보 취급방침 개정 안내</td>
              <td>surf01</td>
              <td>2021-07-10</td>
              <td>100</td>
            </tr>
            <tr>
              <td>54</td>
              <td align="left">[공지] 개인정보 취급방침 개정 안내</td>
              <td>surf01</td>
              <td>2021-07-10</td>
              <td>100</td>
            </tr>
            <tr>
              <td>53</td>
              <td align="left">[공지] 개인정보 취급방침 개정 안내</td>
              <td>surf01</td>
              <td>2021-07-10</td>
              <td>100</td>
            </tr>
          </tbody>
        </table>
        <br>
        <div align="right">
          <button type="button" class="btn btn-secondary" href="">글쓰기</button>
        </div>
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