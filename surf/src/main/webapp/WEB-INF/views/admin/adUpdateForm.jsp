<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>광고 수정</title>
</head>
<style>
    #title{
        width: 500px;
    }
</style>
<script>
	function checkFile(f){
	
		var file = f.files;
	
		if(!/\.(gif|jpg|jpeg|png)$/i.test(file[0].name)) alert('gif, jpg, png 파일만 선택해 주세요.\n\n현재 파일 : ' + file[0].name);
	
		else return;
	
		f.outerHTML = f.outerHTML;
	}
</script>
<body>
<br>
	<jsp:include page="sidebar.jsp"/>
	
      <div class="ml-4" style="width:950px">
        <br><br><br>
        <div>
          <h4>광고베너관리>광고수정</h4>
        </div>
        <hr>
        <div align="center">
          <form  id="updateForm" method="post" action="adUpdate.ad" enctype="multipart/form-data">
          <input type="hidden" name="adNo" value="${ Ad.adNo }">
                <table>
                    <tr> 
                        <th><label for="title">제목</label></th>
                        <td><input type="text" id="title" class="form-control" name="adTitle" value="${ Ad.adTitle }" required><br></td>
                        
                    </tr>
                    <tr>
                        <th><label for="upfile">첨부파일</label></th>
                        <td>
                            <input type="file" id="upfile" class="form-control-file border" name="reupfile" onchange="checkFile(this)" accept="image/*">
                            
                            <c:if test="${ !empty ad.originName }">
                            	현재 업로드된 파일 : 
                            	<a href="${ Ad.changeName }" download="${ Ad.originName }">${ Ad.originName }</a>
                            	<input type="hidden" name="originName" value="${ Ad.originName }">
                            	<input type="hidden" name="changeName" value="${ Ad.changeName }">
                            </c:if>
                            <br>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="content">링크</label></th>
                        <th><input type="text" id="link" class="form-control" name="adLink" value="${ Ad.adLink }" required></th>
                    </tr>
                  </table>
              <br>
  
              <div class="bottom" id="buttons" align="right">
                  <button type="submit" class="btn btn-dark btn-sm">수정하기</button> &nbsp;
                  <a type="button" class="btn btn-primary btn-sm" href="list.bo">목록으로</a>
              </div>
             </form>
      </div>
      </div>
      
</body>
</html>