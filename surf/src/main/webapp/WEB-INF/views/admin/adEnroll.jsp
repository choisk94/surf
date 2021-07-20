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
          <h4>광고베너관리>광고등록</h4>
        </div>
        <hr>
        <div align="center">
          <form>
              <!-- 내용:  db에서 가져온게 null이면 placeholder, null이 아니면 그 값 보여줌 -->
              <div class="top" align="left">
                  <table id="NoticeTitle">
                      <td><input type="text" class="form-control" name="title" placeholder="제목을 입력해주세요." size="40"></td>
                      <td><button type="button" class="btn btn-link">첨부.png</button></td>
                      <td><button type="button" class="btn btn-primary btn-sm">파일 첨부하기</button></td>
                      <td><h6>작성자 : 누구누구</h6></td>
                  </table>
              </div>
  
              <br>
  
              <div id="noticeContent">
                  <textarea name="content" class="form-control" rows="20" placeholder="내용을 입력해주세요."  style="resize:none;"></textarea>
              </div>
              <div class="bottom" id="buttons" align="right">
                  <button type="button" class="btn btn-secondary btn-sm">삭제</button> &nbsp;
                  <button type="button" class="btn btn-dark btn-sm">등록</button> &nbsp;
                  <button type="button" class="btn btn-primary btn-sm">목록으로</button>
              </div>
          </form>
      </div>
      
      </div>
      
      </div>
      
</body>
</html>