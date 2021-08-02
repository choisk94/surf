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
    table *{margin:5px;}
    table{width:100%;}
    table th{width:100px;}
</style>
<body>
	<jsp:include page="../admin/sidebar.jsp"/>
		 <!--여기서부터 우측 게시판-->
      <br>
      <div class="innerOuter" style="width:950px">
        <br><br><br>
        <div>
          <h5>고객센터 관리 > 공지사항</h5>
          <hr>
          <h4>공지사항 글수정</h4>
          <br>
        </div>

        <form id="updateForm" method="post" action="" enctype=""></form>
          <table align="center">
            <tr>
              <th><label for="title">제목</label></th>
              <td><input type="text" id="title" class="form-control" name="" value="[공지] 개인정보 취급방침 개정 안내" required></td>
            </tr>
            <tr>
              <th><label for="writer">작성자</label></th>
              <td><input type="text" id="writer" class="form-control" value="surf" name="" readonly></td>
            </tr>
              <tr>
                <th colspan="2"><label for="content">내용</label></th>
            </tr>
            <tr>
              <th colspan="2">
                <textarea class="form-control" required name="" id="content" rows="20" style="resize:none;">
                  안녕하세요 서프 운영팀 서퍼입니다.
                  항상 서퍼를 이용해주셔서 진심으로 감사합니다.

                  7월 1일부터 개인정보 보호법 시행령 개정에 따라 서프 '개인정보 취급방침'이 개정됨을 안내드리오니
                  참고바랍니다.

                  ◎ 시행일 : 2021년 7월 1일

                  ◎ 대상 : 회원 전체

                  ◎ 주요 개정 내용
                      - 사유 : 개인정보 보호법 시행령 개정
                      - 개정 대상 : 1조, 2조, 7조


                  앞으로도 더 나은 서비스를 위해 노력하는 서프가 되겠습니다.
                  감사합니다
                </textarea>
              </th>
          </tr>
          </table>
          <br>

          <div align="center">
            <button type="submit" class="btn btn-primary">수정</button>&nbsp;&nbsp;&nbsp;
            <button type="button" class="btn btn-secondary" onclick="javascript:history.go(-1);">이전</button>
        </div>
    </form>
  </div>
  
 
</body>
</html>