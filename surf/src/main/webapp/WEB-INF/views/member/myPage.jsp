<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>

    <style>
        .body-outer>div {
            float: left;
        }
    </style>

</head>

<body>

    <jsp:include page="../common/header.jsp" />

    <div class="body-outer">

        <br><br>
        <!-- 회원 개인 메뉴바 -->
        <jsp:include page="memberMenubar.jsp" />

        <!-- 바디 화면 -->
        <div id="profile" style="width: 998px;">
            <!-- 소제목 -->
            <div class="sm-title">
                프로필 관리
                <hr style="background-color: rgb(32, 155, 212); height: 2px;">
            </div>

            <!-- 프로필 관리 입력 구역-->
            <div style="width: 450px; height: 680px; margin: auto;">
                <div class="container">
                    <form action="" method="POST">

                        <!-- 닉네임 설정 -->
                        <div class="form-group">
                            <label for="nickName">닉네임 설정</label>
                            <input type="text" class="form-control user-info" id="nickName" name="nickName"
                                placeholder="닉네임" required>
                        </div>
                        <!-- 성별 -->
                        <label class="mt-2" style="margin-right: 117px;">성별</label>
                        <div class="form-check-inline">
                            <label class="form-check-label mr-5" for="male">
                                <input type="radio" class="form-check-input user-info" id="male" name="gender" value="M"
                                    checked>남자
                            </label>
                        </div>
                        <div class="form-check-inline">
                            <label class="form-check-label" for="female">
                                <input type="radio" class="form-check-input user-info" id="female" name="gender"
                                    value="F">여자
                            </label>
                        </div>

                        <!-- 연령대 -->
                        <div class="form-group">
                            <label class="mt-4" for="agelist"
                                style="display: inline-block; margin-right: 100px;">연령대</label>
                            <select class="form-control user-info" id="agelist" name="age"
                                style="display: inline-block; width: 35%;">
                                <option>10대</option>
                                <option>20대</option>
                                <option>30대</option>
                                <option>40대</option>
                                <option>50대</option>
                                <option>60대</option>
                            </select>
                        </div>
                        <!-- submit 버튼 -->
                        <div class="text-center">
                            <button disabled id="info-enter" type="submit" class="btn btn-primary mt-2"
                                style="width: 50%;">저장</button>
                        </div>
                    </form>



                    <form action="" method="POST">
                        <!-- 현재 비밀번호 -->
                        <div class="form-group">
                            <label class="mt-2" for="userPwd">현재 비밀번호</label>
                            <input type="password" class="form-control" id="userPwd" name="userPwd"
                                placeholder="현재 비밀번호" required>
                        </div>

                        <!-- 새 비밀번호 -->
                        <div class="form-group">
                            <label class="mt-2" for="newPwd">새 비밀번호</label>
                            <input id="newPwd" type="password" class="form-control pwd" name="newPwd"
                                placeholder="새로운 비밀번호" required>
                        </div>

                        <!-- 새 비밀번호 확인 -->
                        <div class="form-group">
                            <label class="mt-2" for="checkNewPwd">새 비밀번호 확인</label>
                            <input type="password" class="form-control pwd" id="checkNewPwd" name="checkNewPwd"
                                placeholder="새로운 비밀번호" required>
                        </div>
                        <!-- submit 버튼 -->
                        <div class="text-center">
                            <button disabled id="pwd-enter" type="submit" class="btn btn-primary mt-2"
                                style="width: 50%;">저장</button>
                        </div>
                    </form>
                    <div class="text-center">
                        <button type="button" class="btn btn-secondary mt-2" style="width: 50%;">회원 탈퇴</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br><br><br><br><br>

    <script>
        $(function () {


            $(".pwd").keyup(function () {
                var pwd1 = $("#newPwd").val();
                var pwd2 = $("#checkNewPwd").val();

                if (pwd1 != "" || pwd2 != "") {

                    if (pwd1 == pwd2) {
                        $("#pwd-enter").attr("disabled", false);
                    } else {
                        $("#pwd-enter").attr("disabled", true);
                    }
                }
            })


            $(".user-info").change(function () {
                $("#info-enter").attr("disabled", false);
            })


            $("#nickName").keyup(function () {

                if ($("#nickName").val() != "") {
                    $("#info-enter").attr("disabled", false);
                } else {
                    $("#info-enter").attr("disabled", true);
                }
            })
        })

    </script>


    <jsp:include page="../common/footer.jsp" />


</body>

</html>