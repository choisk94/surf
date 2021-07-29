<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    .tableA {
    border-collapse: separate;
	border-spacing: 80px 3px;
    text-align: left;
    
    }
    .classImage{
    width: 300px; height: 200px;

    }
    .classTitle{
        width: 300px; height: 30px;
    }
    .su1{
        width: 100px;
    }
    
    table{margin:auto; }
    th{text-align: left;}
    td{border:1px solid #D1D1D1; border-radius: 5px; padding: 5px;}

</style>
<body>
	<jsp:include page="sidebar.jsp"/>
	<br>
    <div class="ml-4" style="width:950px">
        <br><br><br>
        <div>
          <h4>클래스 관리>클래스 상세 조회</h4>
          
        </div>
        <hr>
    <div>
        <table class="tableA">
            <tr>
                <th class="classTitle">강의 소개 타이틀</th>
                <td rowspan="4"><img src="resources\img\1.png" width="300" height="300"></td>
            </tr>
            <tr>
                <td style="width: 300px; height: 80px;">dddd</td>
            </tr>
            <tr>
                <th class="classTitle">강의 소개 설명</th>
            </tr>
            <tr>
                <td style="width: 300px; height: 120px;">
                    글을 못쓰는자!
                    연애를 못한다!
                    나를믿고 따라오면 연애가 가능
                </td>
            </tr>
        </table>
        <br>
        <table class="tableA">
            <tr>
                <th>클래스 설명 이미지</th>
                <th>설명</th>
            </tr>
            <tr>
                <td class="classImage"><img src="resources\img\2.png" width="280" height="200"></td>
                <td class="classImage"> 클래스 설명 이미지에 맞는 클래스에 대한 설명을 적어주세요.</td>
            </tr>
        </table>
        <br>
        <table class="tableA">
            <tr>
                <th>클래스 설명 이미지</th>
                <th>설명</th>
            </tr>
            <tr>
                <td class="classImage"><img src="resources\img\2.png" width="280" height="200"></td>
                <td class="classImage">클래스 설명 이미지에 맞는 클래스에 대한 설명을 적어주세요.</td>
            </tr>
        </table>
        <br>
        <table style="width: 680px; height: 300px; border-radius : 10px;">
            <tr>
                <tr>
                    <th colspan="2">강의 커리큘럼</th>
                </tr>
                <tr>
                    <td style="width: 400px;">챕터</td>
                    <td>Welcome 나만의 글쓰기 방법</td>
                </tr>
                <tr>
                    <td>클래스를 소개합니다.</td>
                    <td><a href>소개.mp4</a></td>
                </tr>
                <tr>
                    <td>안녕하세요. 글쟁이 입니다.</td>
                    <td><a href>소개.mp4</a></td>
                </tr>
                <tr>
                    <td>준비물을 소개합니다.</td>
                    <td><a href>준비물.mp4</a></td>
                </tr>
            </tr>
        </table>
        <br>
        <table style="width: 680px; height: 270px; ">
            <tr>
                <tr>
                    <td style="width: 400px;">챕터</td>
                    <td>Welcome 나만의 글쓰기 방법</td>
                </tr>
                <tr>
                    <td>클래스를 소개합니다.</td>
                    <td><a href>소개.mp4</a></td>
                </tr>
                <tr>
                    <td>안녕하세요. 글쟁이 입니다.</td>
                    <td><a href>소개.mp4</a></td>
                </tr>
                <tr>
                    <td>준비물을 소개합니다.</td>
                    <td><a href>준비물.mp4</a></td>
                </tr>
            </tr>
        </table>
        <br>
        <table align= "left" style="width: 400px; height: 100px; margin:0px 0px 0px 140px;">
            <tr>
                <th class="su1">수강기간</th>
                <td>3개월</td>
            </tr>
            <tr>
                <th class="su1">수강금액</th>
                <td>200,000</td>
            </tr>
        </table>
        <br><br><br><br><br>
        <div style="text-align: right;">
            <button type="button" class="btn btn-primary">승인</button>
            <button type="button" class="btn btn-danger">반려</button>
          </div>
    </div>
    </div>
</body>
</html>