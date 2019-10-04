<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="include/header.jsp" %>
<style>
	section{
		width: 100%;
		height: 800px;
		background-color: #dfe5e8; /* 전체 배경색  */
	}
	
</style>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

	google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(drawChart); // 내가 쓸 함수의 이름
	
	function drawChart() {
		
		var data = google.visualization.arrayToDataTable([
			
	    	['2019', '1', '2', '3', '4'],
	    	['tle감마', 2000, 1800, 600, 2300],
	    	['내부제어', 2000, 1800, 200, 2000],
	    	['신유', 2000, 1800, 200, 2000],
	    	['내부제어2', 2000, 1800, 200, 2000],
	  	]);
	
	  	var options = {
	    	title: '월별 입고 현황',
	       /*  vAxis: {title: 'Cups'}, */
	       /*  hAxis: {title: 'Month'}, */
	        seriesType: 'bars',
	        series: {5: {type: 'line'}}
	  	};
	
	  var chart = new google.visualization.ComboChart(document.getElementById('piechart'));
	
	  chart.draw(data, options);
	}
	

</script> 
<section>
	<c:forEach items="${lists }" var="l">
		${l.wNo }
		${l.gNo.gName }
		${l.wQy }
	</c:forEach>
	
	<div id="piechart"></div>
</section>
<%@ include file="include/footer.jsp" %>





