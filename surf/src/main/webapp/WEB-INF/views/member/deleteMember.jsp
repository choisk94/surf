<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>회원탈퇴</title>
</head>

<body>
    <jsp:include page="../common/header.jsp" />

    <div class="body-outer">

        <br><br>
        <!-- 회원 개인 메뉴바 -->
        <jsp:include page="memberMenubar.jsp" />

        <!-- 바디 화면 -->
        <div id="mem-body" style="width: 998px;">

            <div class="sm-title">
                회원탈퇴
                <hr style="background-color: rgb(32, 155, 212); height: 2px;">
            </div>


            <div style="width: 450px; margin: auto; margin-top: 60px;">

                <div class="w3-padding-large w3-card-4 w3-light-grey">
                    <br>
                    <h5><b style="text-align: center;">서퍼의 서비스에 만족하지 못하셨나요?</b></h5>
                    <br>
                    <div>
                        먼저 문의사항을 통해 개선 요청을 해보는건 어떨까요? <br>
                        그래도 탈퇴하시려면 아래 유의사항을 먼저 읽어주세요.
                    </div>
                    <br>
                    <div align="left" style="color: rgb(216, 0, 0); font-weight: bold;">
                        1. 회원이 작성한 콘텐츠(게시글, 댓글 등)은 자동으로 <br>
                        &nbsp;&nbsp;&nbsp; 삭제되지 않으며 탈퇴 전에 직접 삭제하셔야 합니다. <br><br>
                        2. 탈퇴 후 동일한 이메일로 재가입이 불가능합니다. <br> <br>
                        3. 현재 비밀번호를 누르고 '탈퇴하기'버튼을 누르면 <br>
                        &nbsp;&nbsp;&nbsp; 위 내용에 동의하는 것으로 간주됩니다.
                        <br><br>
                    </div>
                </div>
                <div>
                    <form action="" method="POST">
                        <!-- 아이디 -->
                        <div class="form-group">
                            <label for="userPwd" class="mt-4">현재 비밀번호</label>
                            <input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="비밀번호"
                                required>
                        </div>

                        <!-- submit 버튼 -->
                        <div class="text-center">
                            <button type="submit" class="btn btn-secondary mt-2" style="width: 50%;">탈퇴하기</button>
                        </div>
                    </form>
                </div>
            </div>
            <br><br><br><br><br>
        </div>


        <jsp:include page="../common/footer.jsp" />

</body>

</html>