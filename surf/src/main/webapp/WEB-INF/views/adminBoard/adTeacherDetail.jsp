<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사 관리</title>
</head>
<body>
	<jsp:include page="../admin/sidebar.jsp"/>
		 <!--여기서부터 우측 게시판-->
      <br>
      <div class="innerOuter" style="width:950px">
        <br><br><br>
        <div>
          <h5>강사 관리 > 강사 상세조회</h5>
        </div>
        <hr>

        <form action="" >
          <h4>강사 신청 정보</h4>
          <br>
          
          <div id="img1" class="img1"></div>
          <br>
          이메일<br>
          <input type="email"><br><br>
          강사명<br>
          <input type="text"><br><br>
          핸드폰 번호<br>
          <input type="text"><br><br>
          강사님을 소개해주세요<br>
          <textarea>
            xxxxxxxxxxx
          </textarea><br><br>
          어떤 강의를 열고 싶으신가요?<br>
          <select name="" id="">
            <option value="개발">개발</option>
          </select>
          <select name="" id="">
            <option value="프로그래밍 언어">프로그래밍 언어</option>
          </select>
          <br><br>
        </form>
        <div id="btn2">
          <button type="button" class="btn btn-info">승인</button>&nbsp;&nbsp;&nbsp;
          <button type="button" class="btn btn-danger">반려</button>
        </div>
      </div>		 
</body>
</html>