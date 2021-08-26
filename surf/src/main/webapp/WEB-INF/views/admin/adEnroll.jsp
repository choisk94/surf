<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
          <h4>광고베너관리>광고등록</h4>
        </div>
        <hr>
        <div align="center">
          <form  id="enrollForm" method="post" action="insert.ad" enctype="multipart/form-data">
                <table>
                    <tr>
                        <th><label for="title">제목</label></th>
                        <td><input type="text" id="title" class="form-control" name="adTitle" required></td>
                    </tr>
                    <tr>
                        <th><label for="upfile">첨부파일</label></th>
                        <td><input type="file" id="upFile" onchange="checkFile(this)" class="form-control-file border" name="upfile" accept="image/*"></td>
                    </tr>
                    <tr>
                        <th colspan="2"><label for="content">링크</label></th>
                    </tr>
                    <tr>
                        <th colspan="2"><textarea class="form-control" required name="adLink" id="content" rows="10" style="resize:none;"></textarea></th>
                    </tr>
                  </table>
                  
              <br>
  
              <div class="bottom" id="buttons" align="right">
                  <button type="reset" class="btn btn-secondary btn-sm">삭제</button> &nbsp;
                  <button type="submit"  class="btn btn-dark btn-sm">등록</button> &nbsp;
                  <button type="button" class="btn btn-primary btn-sm">목록으로</button>
              </div>
             </form>
      </div>
      </div>
      
      
</body>
</html>