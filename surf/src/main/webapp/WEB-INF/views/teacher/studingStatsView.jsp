<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>수강 통계</title>
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
	        height: auto;
	        margin-top: 100px;
	        margin-left: 40px;
	    }
	    #stats-wrap>div{
	        position: relative;
	    }
	    #stats1, #stats2{
	        width: 100%;
	        height: 270px;
	        margin-bottom: 10px;
	        background-color: whitesmoke;
	        border-radius: 1pc;
	    }
	    #stats3, #stats4{
	        float: left;
	        width: 445px;
	        height: 270px;
	        background-color: whitesmoke;
	        border-radius: 1pc;
	    }
	    #stats3{
	        margin-right: 10px;
	    }
	    .stats-title{
	        position: absolute;
	        top: 15px;
	        left: 20px;
	        font-size: 18px;
	        font-weight: 600;
	        color: rgb(51, 51, 51);
	    }
	    #stats-sort{
	        position: absolute;
	        top: 16px;
	        left: 695px;
	    }
	    #stats-sort div{
	        float: left;
	    }
	    .vertical-line {
	        float: left;
	        border-color: gray;
	        border-style: solid;
	        border-width: 0 0 0 1px;
	        margin: 4px 5px;
	        width: 0px;
	        height: 15px;
	        vertical-align: middle;
	    }
	</style>
</head>
<body>
    <div id="content2">
        <div id="page-title">클래스 통계 > 수강 통계</div>
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
            <div id="stats1">
                <div class="stats-title">신규 수강 건수</div>
                <div id="stats-sort">
                    <div>최근 일주일</div>
                    <div class="vertical-line"></div>
                    <div>월별</div>
                    <div class="vertical-line"></div>
                    <div>분기별</div>
                </div>
                <div id="chart1"></div>
                <script>
                    google.charts.load('current', {packages:['corechart']});
                    google.charts.setOnLoadCallback(drawChart);

                    function drawChart() {
                        var data = google.visualization.arrayToDataTable([
                            ['날짜', '건수'],
                            ['날짜', 4],
                            ['날짜', 6],
                            ['날짜', 8],
                            ['날짜', 12],
                            ['날짜', 10],
                            ['날짜', 2],
                            ['날짜', 0]
                        ]);
                        var options = {
                            width : 930,
                            height : 270,
                            bar : {
                                groupWidth : '70%'
                            },
                            legend : {
                                position : 'none'
                            },
                            hAxis: {
                                title: '날짜'
                            },
                            vAxis: {
                                title: '건수'
                            },
                            backgroundColor: 'transparent'
                        };
                        var chart = new google.visualization.ColumnChart(document.getElementById('chart1'));
                        chart.draw(data, options);
                    }
                </script>
            </div>

            <div id="stats2">
                <div class="stats-title">완강 소요 일수</div>
                <div id="chart2"></div>
                <script>
                    google.charts.load('current', {packages:['corechart']});
                    google.charts.setOnLoadCallback(drawChart);

                    function drawChart() {
                        var data = google.visualization.arrayToDataTable([
                            ['소요일수', '명수', { role: 'style' }],
                            ['소요일수', 4, '1eaa96'],
                            ['소요일수', 6, '1eaa96'],
                            ['소요일수', 8, '1eaa96'],
                            ['소요일수', 12, '1eaa96'],
                            ['소요일수', 10, '1eaa96'],
                            ['소요일수', 2, '1eaa96'],
                            ['소요일수', 0, '1eaa96']
                        ]);
                        var options = {
                            width : 930,
                            height : 270,
                            bar : {
                                groupWidth : '70%'
                            },
                            legend : {
                                position : 'none'
                            },
                            hAxis: {
                                title: '소요일수'
                            },
                            vAxis: {
                                title: '명수'
                            },
                            backgroundColor: 'transparent'
                        };
                        var chart = new google.visualization.ColumnChart(document.getElementById('chart2'));
                        chart.draw(data, options);
                    }
                </script>
            </div>

            <div id="stats3">
                <div class="stats-title">수강생 성별 비율</div>
                <div id="piechart1"></div>
                <script>
                    google.charts.load('current', {'packages':['corechart']});
                    google.charts.setOnLoadCallback(drawChart);

                    function drawChart() {
                        var data = google.visualization.arrayToDataTable([
                            ['성별', '인원수'],
                            ['남', 40],
                            ['여', 60]
                        ]);
                        var options = {
                            width : 520,
                            height : 300,
                            colors: ['orange', 'yellowgreen'],
                            backgroundColor: 'transparent'
                        };
                        var chart = new google.visualization.PieChart(document.getElementById('piechart1'));
                        chart.draw(data, options);
                    }
                </script>
            </div>

            <div id="stats4">
                <div class="stats-title">수강생 연령대별 비율</div>
                <div id="piechart2"></div>
                <script>
                    google.charts.load('current', {'packages':['corechart']});
                    google.charts.setOnLoadCallback(drawChart);

                    function drawChart() {
                        var data = google.visualization.arrayToDataTable([
                            ['연령대', '인원수'],
                            ['10대', 10],
                            ['20대', 10],
                            ['30대', 10],
                            ['40대', 10],
                            ['50대', 10],
                            ['60대', 10],
                            ['70대', 10],
                            ['80대', 10]
                        ]);
                        var options = {
                            width : 520,
                            height :300,
                            backgroundColor: 'transparent'
                        };
                        var chart = new google.visualization.PieChart(document.getElementById('piechart2'));
                        chart.draw(data, options);
                    }
                </script>
            </div>
        </div>
    </div>
</body>
</html>