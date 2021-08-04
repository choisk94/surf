<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>비밀번호 찾기</title>
</head>

<body>
    <jsp:include page="../common/header.jsp" />

    <div class="body-outer">
        <br><br>

        <div class="sm-title">
            비밀번호 찾기
            <hr style="background-color: rgb(32, 155, 212); height: 2px;">
        </div>


        <div style="width: 450px; height: 300px; margin: auto; margin-top: 60px;">

            <div align="center">
                <h5><b style="text-align: center;">비밀번호를 잊어버리셨나요?</b></h5>
                <br>
                <div>
                    회원가입 시 사용한 이메일을 정확히 입력해주세요. <br>
                    임시 비밀번호를 보내드립니다.
                </div>
            </div>
            <div>
                <form action="" method="">
                    <!-- 아이디 -->
                    <div class="form-group">
                        <label for="userId" class="mt-4">이메일</label>
                        <input type="email" class="form-control" id="userId" name="userId" placeholder="example@surfer.com" required>
                    </div>

                    <!-- submit 버튼 -->
                    <div class="text-center">
                        <button id="findPwdBtn" type="button" class="btn btn-primary mt-2" style="width: 50%;">비밀번호 찾기</button>
                    </div>
                </form>
            </div>
        </div>
        <br><br><br><br><br>
    </div>
    
    <script>
    	$(function(){
    		$("#findPwdBtn").click(function(){
    			$.ajax({
    				url:"findPwd.me",
    				type:"post",
    				data:{
    					userId:$("#userId").val()
    				}, success:function(result){
    					alert(result);
    				}, error:function(){
    					console.log("ajax통신 실패");
    				}
    			})
    		})
    	})
    </script>


    <jsp:include page="../common/footer.jsp" />



</body>

</html>