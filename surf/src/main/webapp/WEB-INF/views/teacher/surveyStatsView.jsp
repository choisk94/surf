<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>설문 조사 통계</title>
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
	    #stats-date{
	        float: left;
	        margin-top: 63px;
	        margin-left: 70px;
	    }
	    #stats-wrap{
	        width: 900px;
	        height: 720px;
	        margin-top: 100px;
	        margin-left: 40px;
	        background-color: whitesmoke;
	        border-radius: 1pc;
	        position: relative;
	    }
	    #respondent{
	        position: absolute;
	        float: right;
	        top: 15px;
	        right: 20px;
	        font-size: 17px;
	        font-weight: 600;
	    }
	</style>
</head>
<body>
    <div id="content2">
        <div id="page-title">클래스 통계 > 설문 조사 통계</div>
        <div id="select-wrap">
            <label for="select-class">조회 클래스 선택</label>
            <select class="form-control" id="select-class">
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
            </select>
        </div>
        <div id="stats-date">2021. 07. 03. 10:11 기준</div>

        <div id="stats-wrap">
            <div id="respondent">총 응답자 : 00명</div>
            <div id="chart1"></div>
            <script>
                google.charts.load('current', {packages: ['corechart', 'bar']});
                google.charts.setOnLoadCallback(drawStacked);

                function drawStacked() {
                    var data = google.visualization.arrayToDataTable([
                        ['점수', '5점', '4점', '3점', '2점', '1점', { role: 'annotation' }],
                        ['퀄리티', 15, 15, 10, 5, 5, ''],
                        ['만족도', 25, 15, 5, 5, 0, ''],
                        ['난이도', 25, 15, 10, 0, 0, ''],
                        ['가격', 20, 15, 5, 5, 5, ''],
                        ['평점', 20, 20, 10, 0, 0, '']
                    ]);

                    var options = {
                        isStacked: 'percent',
                        width : 950,
                        height: 700,
                        backgroundColor: 'transparent',
                        legend: {
                        position: 'top',
                        maxLines: 3
                    },
                    hAxis: {
                        minValue: 0,
                        ticks: [0, 0.2, 0.4, 0.6, 0.8, 1]
                    }
                };
                var chart = new google.visualization.BarChart(document.getElementById('chart1'));
                chart.draw(data, options);
                }
            </script>
        </div>
    </div>
</body>
</html>