<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사 관리</title>
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
          <h5>강사 관리 > 강사 신청 목록</h5>
          <div align="right">
            <select name="refType" style="width: 120px;">
              <option>대기</option>
              <option>승인</option>
              <option>반려</option>
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
              <td width="100">아이디</td>
              <td width="100">닉네임</td>
              <td width="100">대분류</td>
              <td width="100">소분류</td>
              <td width="130">연락처</td>
              <td width="130">신고날짜</td>
              <td width="100">상태</td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>83</td>
              <td>teacher10</td>
              <td>박여우</td>
              <td>대분류</td>
              <td>개발</td>
              <td>010-1111-2222</td>
              <td>2021-07-10</td>
              <td>대기</td>
            </tr>
            <tr>
              <td>82</td>
              <td>teacher09</td>
              <td>서노랑</td>
              <td>대분류</td>
              <td>언어</td>
              <td>010-2222-3333</td>
              <td>2021-07-10</td>
              <td>대기</td>
            </tr>
            <tr>
              <td>81</td>
              <td>teacher08</td>
              <td>연파랑</td>
              <td>대분류</td>
              <td>요리</td>
              <td>010-3333-4444</td>
              <td>2021-07-10</td>
              <td>대기</td>
            </tr>
            <tr>
              <td>80</td>
              <td>teacher07</td>
              <td>김초록</td>
              <td>대분류</td>
              <td>개발</td>
              <td>010-4444-5555</td>
              <td>2021-07-10</td>
              <td>승인</td>
            </tr>
            <tr>
              <td>79</td>
              <td>teacher06</td>
              <td>강하얀</td>
              <td>대분류</td>
              <td>그림</td>
              <td>010-5555-6666</td>
              <td>2021-07-10</td>
              <td>승인</td>
            </tr>
            <tr>
              <td>78</td>
              <td>teacher05</td>
              <td>박하늘</td>
              <td>대분류</td>
              <td>운동</td>
              <td>010-6666-7777</td>
              <td>2021-07-10</td>
              <td>승인</td>
            </tr>
            <tr>
              <td>77</td>
              <td>teacher04</td>
              <td>이연두</td>
              <td>대분류</td>
              <td>댄스</td>
              <td>010-7777-8888</td>
              <td>2021-07-10</td>
              <td>승인</td>
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