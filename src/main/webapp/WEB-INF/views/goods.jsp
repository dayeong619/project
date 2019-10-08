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
	.divTitle2{ /*중앙정렬하는 div클래스 */
		width: 85%;
		height:50px;
		margin:0 auto;
	}
	table{
		clear:both;
		border-collapse:collapse;
		margin-top:10px;
		width:95%;
		height: 650px;
		text-align: center;
		display: block;
	}
	tbody{
		display: block;
		overflow-y:auto; /* 세로축만 스크롤 나와랏 */
		overflow-x:hidden;
		height: 605px;
		width: 90%;
	}
	tbody tr{
		background-color: white;
		height: 30px;
	}
	table td{
		border:1px solid black;
	}
	thead td:nth-child(1), tbody td:nth-child(1){
		width: 80px;
	}
	thead td:nth-child(2), tbody td:nth-child(2){
		width: 140px;
	}
	thead td:nth-child(3), tbody td:nth-child(3){ 
		width: 140px;
	}
	thead td:nth-child(4), tbody td:nth-child(4){ 
		width: 140px;
	}
	thead td:nth-child(5), tbody td:nth-child(5){ 
		width: 140px;
	}
	
	
	
	
</style>
<section>
	<div class="divTitle2">
		<div>
			<h3>제품현황</h3>
		</div>
	</div>
	<div class="divTitle2" id="tableBackGround">
		<table>
			<thead>
				<tr>
					<td>번호</td>
					<td>제품명</td>
					<td>공급사</td>
					<td>고객사</td>
					<td>제품등록일</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${glist }" var="g">
					<tr>
						<td>${g.gNo }</td>
						<td>${g.gName }</td>
						<td>${g.gLocation }</td>
						<td>${g.gClient }</td>
						<td>${g.gDay }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</section>
<script>
		
</script>
<%@ include file="include/footer.jsp" %>








