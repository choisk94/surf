<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>월별 집계</title>
		</head>
		
		<!--Load the AJAX API-->
		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		<script type="text/javascript">
	
		// Load the Visualization API and the corechart package.
		google.charts.load('current', {packages: ['corechart', 'bar']});
		// Set a callback to run when the Google Visualization API is loaded.
		google.charts.setOnLoadCallback(drawChart);
		function drawChart() {
		/*저장 데이터*/
		var data = google.visualization.arrayToDataTable([
			['month', '수입(원)'],
			['1월', 0],
			['2월', 220000],
			['3월', 820000],
			['4월', 1280000],
			['5월', 820000],
			['6월', 120000],
			['7월', 320000],
			['8월', 0],
			['9월', 0],
			['10월', 0],
			['11월', 0],
			['12월', 0]
		]);
			/*표현 옵션*/
			var options = {
			width: 750,
			height: 400,
			bar: { groupWidth: '60%' },
			isStacked: true,
			chartArea: {left: 0, right:0}
		  };
	
			var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
			chart.draw(data, options);
		}
		</script>
		<style>
			.content {
				padding: 40px 0px 0px 40px;
			}

			.path {
				font-size: 20px;
				font-weight: 600;
			}

			.stats-menu {
				width: 650px;
				height: 70px;
				background: rgba(200, 200, 200, 0.5);
				line-height: 70px;
				font-size: 14px;
			}

			.stats-menu>* {
				margin-left: 13px;
			}

			.stats-head {
				width: 750px;
				height: 50px;
				background: rgba(200, 200, 200, 0.5);
				line-height: 50px;
			}

			.stats-head>span:first-child {
				margin-left: 20px;
			}

			.stats-head>span:nth-child(3) {
				margin-left: 30px;
			}

			.stats-head>span:last-child {
				margin-left: 230px;
			}
			/*차트 스타일 선택*/
			#table_div{
				margin-top: 50px;
				font-family: 'Nanum Gothic', sans-serif;
			}
			#table_div th{
				text-align: center;
				background: rgb(219, 219, 219);
				color: rgb(73, 73, 73);
			}
			#table_div td{
				text-align: right;
			}

			.table-style{
				color:rgb(32, 155, 212);
			}

			.table-style:hover, .column-style:hover{
				color:rgb(32, 155, 212);
				cursor: pointer;
			}

			#chart_div{
				display: none;
			}
		</style>

		<body>
			<jsp:include page="common/teacherPage.jsp" />
			<div class="content">
				<div class="path">
					정산내역관리 > 월별집계
				</div>
				<br>
				<div class="stats-menu">
					<select name="" id="" class="form-control"
						style="width: 300px; height: 40px; display: inline;">
						<option value="">전체 클래스</option>
					</select>
					<select style="width: 100px; height: 40px; display: inline;" class="form-control">
						<option value="">2020</option>
						<option value="">2021</option>
					</select>
					<input type="checkbox" name="tax-option" id="onlyTax"><label for="onlyTax">수수료만</label>
					<input type="checkbox" name="tax-option" id="extTax"><label for="extTax">수수료제외</label>
				</div>
				<br>
				<br>
				<div class="stats-head">
					<span class="table-style">표</span> | <span class="column-style">그래프</span>
					<span>전체 클래스 수익 월별 집계</span>
					<span>총 수익 : 3,570,000원</span>
				</div>
				<div id="table_div">
					<table border="2">
						<tr width="750px">
							<th width="187px">1월</th>
							<td width="187px">0원</td>
							<th width="187px">7월</th>
							<td width="187px">110,000원</td>
						</tr>
						<tr>
							<th>2월</th>
							<td>320,000원</td>
							<th>8월</th>
							<td>0원</td>
						</tr>
						<tr>
							<th>3월</th>
							<td>220,000원</td>
							<th>9월</th>
							<td>0원</td>
						</tr>
						<tr>
							<th>4월</th>
							<td>820,000원</td>
							<th>10월</th>
							<td>0원</td>
						</tr>
						<tr>
							<th>5월</th>
							<td>1,280,000원</td>
							<th>11월</th>
							<td>0원</td>
						</tr>
						<tr>
							<th>6월</th>
							<td>820,000원</td>
							<th>12월</th>
							<td>0원</td>
						</tr>
					</table>
				</div>
				<div id="chart_div"></div>
				<div>

				</div>
			</div>
			</div>
			</div>

			<script>
				$(function(){
					var $table = $('.table-style');
					var $column = $('.column-style');

					$table.on('click',function(){
						$column.css('color', 'black');
						$(this).css('color', 'rgb(32, 155, 212)');
						$('#chart_div').hide();
						$('#table_div').show();
					});

					$column.on('click',function(){
						$table.css('color', 'black');
						$(this).css('color', 'rgb(32, 155, 212)');
						$('#table_div').hide();
						$('#chart_div').show();
					})
					
				})
				

			</script>

			<jsp:include page="../common/footer.jsp" />
		</body>

		</html>