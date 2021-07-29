<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>수강 후기 조회</title>
	<style>
	    div{
	        border: 0px solid;
	        box-sizing: border-box;
	    }
	    #content2{
	        width: 980px;
	        height: 940px;
	    }
	    #page-title{
	        font-size: 20px;
	        font-weight: 600;
	        width: 300px;
	        margin-top: 40px;
	        margin-left: 40px;
	    }
	    #select-wrap{
	        float: left;
	        margin-top: 50px;
	        margin-left: 45px;
	        width: 650px;
	        height: 40px;
	    }
	    #select-wrap>label{
	        float: left;
	        margin-top: 6px;
	    }
	    #select-wrap>select{
	        float: left;
	        width: 500px;
	        margin-left: 15px;
	    }
	    #check-wrap{
	        float: left;
	        width: 185px;
	        margin-top: 60px;
	        margin-left: 60px;
	    }
	    #class-list{
	        width: 900px;
	        margin-top: 100px;
	        table-layout: fixed;
	    }
	    #class-list tr{
	      line-height: 18px;
	    }
	    #class-list td{
	      overflow: hidden;
	      text-overflow: ellipsis;
	      white-space: nowrap;
	    }
	    #class-list>tbody>tr:hover{
	        cursor: pointer;
	    }
	    #pagination{
	        width: 300px;
	        height: 50px;
	        margin-top: 60px;
	        margin-left: 340px;
	    }
	</style>
</head>
<body>
    <div id="content2">
        <div id="page-title">클래스 관리 > 수강 후기 조회</div>
        <div id="select-wrap">
            <label for="select-class">조회 클래스 선택</label>
            <select class="form-control" id="select-class">
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
            </select>
        </div>

        <table class="table table-hover" id="class-list" align="center">
            <thead class="thead-light">
              <tr>
                <th style="width: 70px;" class="text-center">번호</th>
                <th style="width: 480px;" class="text-center">내용</th>
                <th style="width: 70px;" class="text-center">별점</th>
                <th style="width: 150px;" class="text-center">작성자</th>
                <th style="width: 130px;" class="text-center">작성일</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td class="text-center">1</td>
                <td>내용~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</td>
                <td class="text-center">5</td>
                <td class="text-center">작성자~~~~~~~</td>
                <td class="text-center">2021-07-12</td>
              </tr>

            </tbody>
        </table>
        <div id="pagination">페이지네이션~~~~~~~~~~~~~~~~~~</div>
    </div>
</body>
</html>