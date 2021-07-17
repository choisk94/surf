<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>회원가입</title>

  <style>
    .easyJoin {
      width: 45%;
    }
  </style>
</head>

<body>

  <jsp:include page="../common/header.jsp" />

  <div class="body-outer">
    <br><br>

    <div class="sm-title">
      회원가입
      <hr style="background-color: rgb(32, 155, 212); height: 2px;">
    </div>
    <div style="width: 450px; height: 800px; margin: auto;" id="joinForm">
      <div class="container">
        <form action="" method="POST">

          <!-- 아이디 -->
          <div class="form-group">
            <label for="userId">이메일</label>
            <input type="email" class="form-control" id="userId" name="username" placeholder="example@surfer.com"
              required>
          </div>
          <!-- 아이디 확인 -->
          <div class="form-group">
            <label class="mt-2" for="checkId">이메일 확인</label>
            <input type="email" class="form-control" id="checkId" name="password" placeholder="example@surfer.com"
              required>
          </div>
          <!-- 성별 -->
          <label class="mt-2" style="margin-right: 117px;">성별</label>
          <div class="form-check-inline">
            <label class="form-check-label mr-5" for="male">
              <input type="radio" class="form-check-input " id="male" name="gender" value="M" checked>남자
            </label>
          </div>
          <div class="form-check-inline">
            <label class="form-check-label" for="female">
              <input type="radio" class="form-check-input" id="female" name="gender" value="F">여자
            </label>
          </div>

          <!-- 연령대 -->
          <div class="form-group">
            <label class="mt-4" for="agelist" style="display: inline-block; margin-right: 100px;">연령대</label>
            <select class="form-control" id="agelist" name="age" style="display: inline-block; width: 35%;">
              <option>10대</option>
              <option>20대</option>
              <option>30대</option>
              <option>40대</option>
              <option>50대</option>
              <option>60대</option>
            </select>
          </div>

          <!-- 비밀번호 -->
          <div class="form-group">
            <label class="mt-2" for="userPwd">비밀번호</label>
            <input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="password" required>
          </div>

          <!-- 비밀번호 확인 -->
          <div class="form-group">
            <label class="mt-2" for="checkPwd">비밀번호 확인</label>
            <input type="password" class="form-control" id="checkPwd" name="checkPwd" placeholder="password" required>
          </div>
          <!-- submit 버튼 -->
          <div class="text-center">
            <button type="submit" class="btn btn-primary mt-2" style="width: 100%;">가입하기</button>
          </div>
        </form>
      </div>

      <div class="hr-sect">간편회원가입</div>
      <div align="center">
        <a herf="" class="btn btn-warning easyJoin mr-2">카카오로 시작하기</a>
        <a href="" class="btn btn-success easyJoin">네이버로 시작하기</a>
      </div>
    </div>
    <br><br><br><br><br>
  </div>


  <jsp:include page="../common/footer.jsp" />

</body>

</html>