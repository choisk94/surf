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
</style>
<body>
	<jsp:include page="../admin/sidebar.jsp"/>
		 <!--여기서부터 우측 게시판-->
      <br>
      <div class="innerOuter" style="width:950px">
        <br><br><br>
        <div>
          <h5>고객센터 관리 > 공지사항 상세 조회</h5>
          <hr>
          <div align="right">
          <!-- 로그인후 상태일 경우만 보여지는 글쓰기 버튼-->
          <a class="btn btn-secondary" style="float:right" href="">목록으로</a>
          <br><br>
          </div>
        </div>

        <table id="contentArea" class="table">
          <tr>
              <th width="100">제목</th>
              <td colspan="3">[공지]서프 회원 10만명 돌파! 🎉감사합니다.🙋🏻‍♀️🙋🏻‍♂️</td>
          </tr>
          <tr>
              <th>작성자</th>
              <td>surf</td>
              <td colspan="2"></td>
          </tr>
          <tr>
              <th>조회수</th>
              <td>100</td>
              <th width="100">작성일</th>
              <td>2020-07-20</td>
          </tr>
          <tr>
              <td colspan="4">
                <pre style="height:500px">
                  안녕하세요 여러분 서프입니다 : )
                  모두 즐거운 하루 보내고 계신가요?

                  서프 회원수가 벌써 10만명을 돌파했습니다. 

                  감사합니다!

                  여러분들의 많은 성원과 응원 덕분에 지금 이순간까지 오게 되었어요.
                  정말 감사합니다.

                  앞으로도 더욱 넓고 크게 발전해 많은 사람들에게 도움이 되고, 가치있는 서비스를 만들고 싶습니다.
                  초심을 잃지 않고, 나아가겠습니다.



                  현재 코로나 19 바이러스로 인해 모두가 어려운 시기를 겪고 있습니다만 잘 이겨내시리라 믿습니다.

                  모두 건강에 유의하시고 화이팅 하세요! 서프에서 즐거운 시간을 많이 만들어가셨으면 좋겠습니다.

                  감사합니다.

                  서프 올림
                </pre>
              </td>
          </tr>
      </table>
        <br>
        <div align="center">
          <!-- 수정하기, 삭제하기 버튼은 이글이 본인글일 경우만 보여져야됨 -->
          <a class="btn btn-primary" href="">수정</a>&nbsp;&nbsp;&nbsp;
          <a class="btn btn-danger" href="">삭제</a>
      </div><br><br>

      </div>
      

</body>
</html>