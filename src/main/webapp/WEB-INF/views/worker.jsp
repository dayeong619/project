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
		width: 93.5%;
	}
	tbody tr{
		background-color: white;
	}
	table td{
		border:1px solid black;
	}
	thead td:nth-child(1){ /* 라인 */
		width: 41px;
	}
	thead td:nth-child(2){ /* 성명 */
		width: 80px;
	}
	thead td:nth-child(3){ /* 품명 */
		width: 140px;
	}
	thead td:nth-child(4){ /* 작업시간 */
		width: 140px;
	}
	thead td:nth-child(5){ /* 생산수량 */
		width: 140px;
	}
	thead td:nth-child(6){ /* 불량내역 */
		width: 400px;
	}
	thead td:nth-child(7){ /* 비고 */
		width: 300px;
	}
	thead td:nth-child(8){ 
		width: 200px;
	}
	thead tr:nth-child(2) td:nth-child(1){
		width: 40px;
	}
	thead tr:nth-child(2) td:nth-child(2){
		width: 40px;
	}
	thead tr:nth-child(2) td:nth-child(3){
		width: 40px;
	}
	thead tr:nth-child(2) td:nth-child(4){
		width: 40px;
	}
	
	tbody td:nth-child(1){                           /* 여기서부터 tbody */
		width: 47px;
	}
	
	tbody td:nth-child(2) select{ 
		width: 93px;
		visibility: hidden;
	}
	
	tbody td:nth-child(3) select{ 
		width: 163px;
		visibility: hidden
	}
	tbody td:nth-child(4) input{ /* 품명 */
		width: 163px;
	}
	tbody td:nth-child(5) input{ /* 입고수량 */
		width: 163px;
	}
	tbody td:nth-child(6) input{ 
		width: 56px;
	}
	tbody td:nth-child(7) input{ /* 불량 */
		width: 56px;
	}
	tbody td:nth-child(8) input{ 
		width: 56px;
	}
	tbody td:nth-child(9) input{ 
		width: 56px;
	}
	tbody td:nth-child(10) input{ 
		width: 350px;
	}
	tbody td:nth-child(11){ 
		width: 215px;
	}
	tbody .badnessInput{
		width:56px; 
		height:60px;
		border:none;
		background-color: white;
		text-align: center;
	}
	tbody tr td:nth-child(2) select{
		width: 93px;
	}
	tbody td:nth-child(10) input{
		width: 350px;
	}
	tbody .success{
		width: 80px;
	}
	tbody select{
		-webkit-appearance: none;  /* 네이티브 외형 감추기 */
    	-moz-appearance: none;
    	appearance: none;
	}
	.divTitle{ 
		width:85%;
		height: 50px;
		margin:0 auto;
		
	}
	#sectionOne{
		width:95%;
		border-top:2px solid #ccc;
		border-bottom:2px solid #ccc;
		background-color: white;
	}
	.divTitle2{ /*중앙정렬하는 div클래스 */
		width: 85%;
		height:50px;
		margin:0 auto;
	}
	#left{
		overflow:hidden;
		float: left;
		width: 900px;
		padding-top:15px;
	}
	#divDate2{
		width: 100%;
		height: 50px;
		padding-left:20px;
		line-height:50px;
	} 
	#divDate ul, #divDate2 ul{
		list-style: none;
		float: left;
		overflow: hidden;
		width:100%;
	}
	#divDate ul li{
		width: 10%;
	}
	 #divDate2 ul li{
	 	width: 10%;
	 }
	.imgLoupe{
		width: 15px;
		height: 15px;
	}
	.dddd{
		height: 60px;
		border:none;
		background-color: white;
		text-align: center;
	}	
	table thead #tabletdtd{ /* 불량발생시 조치 */
		color:red;
		font-size: 13px;
	}
	.tableTrs{
		background-color: #7d97a5;
		color:white;
		height: 30px;
	}
	#workname{
		width: 120px;
	}
	
	#pagepage{
		position:absolute;
		bottom:150px;
		left:700px;
	}
	
	.ClassButtonTop{ /* 크기조정 */
		width: 60px;
		height: 30px;
		margin-top:10px;
	}
	.ClassButtonTop button#insert{
		background-color:#0082a8;
	}
	.searchButton{
		width: 60px;
		height: 30px;
	}
	
	#tableScroll select{
		-webkit-appearance: none;  /* 네이티브 외형 감추기 */
    	-moz-appearance: none;
    	appearance: none;
	}
	#input2css{
		font-size: 11px;
	}
	 .timeBox {
        text-align:center;
        width:60px;    
    }
	#BtnInsertConfirm{
		display: none;
	}
</style>
<section>
	<div class="divTitle2" id="">
		<div id="left"><h3>생산일지</h3></div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<!-- <button class="ClassButtonTop" id="insert">신규</button>
			<button class="ClassButtonTop" id="delete">삭제</button>
			<button class="ClassButtonTop" id="modify">수정</button> -->
				<!-- <button class="ClassButtonTop" id="delete">수정확인</button>
				<button class="ClassButtonTop" id="delete">수정취소</button> -->
			<div>
				<c:forEach var="plists" items="${plist }">
					${plists.mNo[0].mName }
					${plists.bNo}
					${plists.lNo[0].lLine}
				</c:forEach>
			</div>
		
	</div>
	<div class="divTitle">
		<div id="sectionOne">
			<div id="divDate2">
				생산일자 <input type="date" id="nowDate" name="pWorkday">
				<script>
					document.getElementById("nowDate").valueAsDate = new Date();
				</script>
					&nbsp;&nbsp;&nbsp;&nbsp;구분
					<select>
						<option value="1">주간</option>
						<option value="1">야간</option>
					</select>
					
			</div> 
		</div>
	</div>
		<div class="divTitle2" id="tableBackGround"><!-- 테이블 시작 div -->
			<table>
				<thead>
					<tr class="tableTrs">
						<td rowspan="2">라인</td>
						<td rowspan="2">성명</td>
						<td rowspan="2">품명</td>
						<td rowspan="2">작업 시간</td>
						<td rowspan="2">생산 수량</td>
						<td colspan="4">불량 내역 <span id="tabletdtd">*불량 발생시 표기</span></td>
						<td rowspan="2">비고</td>
						<td rowspan="2"></td>
					</tr>
					<tr class="tableTrs">
						<td>가공</td>
						<td>셋업</td>
						<td>소재</td>
						<td>기타</td>
					</tr>
				</thead>
				<tbody id="tableScroll">
					<c:forEach var="plists" items="${plist}">
						<tr>
							<td><!-- 라인-->
								<input type="text" name="lNo" value="${plists.lNo[0].lLine}">
							</td>
							
							<td><!-- 성명 -->
								<select id="mNo" disabled class="dddd" >
									<c:forEach var="p" items="${pmlist}">
										<option value="${p.mNo[0].mNo }">${p.mNo[0].mName}</option>
									</c:forEach>
								</select>
							</td>
							<td><!-- 품명 -->
								<select id="gNo" class="dddd" disabled>
									<c:forEach var="g" items="${glist }">
										<option value="${g.gNo}">${g.gName}</option>
									</c:forEach>
								</select>
							</td>
							<td><!-- 작업시간 -->
								<input type="text" name="pWorktime" class="dddd" disabled="disabled">
							</td>
							<td><!-- 생산수량 -->
								<input type="text" id="result1" class="dddd" disabled="disabled">
							</td>
							<td><!-- 가공 -->
								<input type="text" id="result2" class="badnessInput" disabled="disabled">
							</td>
							<td><!-- 셋업 -->
								<input type="text" class="badnessInput" disabled="disabled">
							</td>
							<td><!-- 소재 -->
								<input type="text" class="badnessInput" disabled="disabled">
							</td>
							<td><!-- 기타 -->
								<input type="text" id="result2" class="badnessInput" disabled="disabled">
							</td>
							<td><!-- 비고 -->
								<input type="text" id="result2" class="dddd" disabled="disabled">
							</td>
							<td>
								<button class="BtnInsert">등록</button>
								<button id="BtnInsertConfirm">등록확인</button>
								<button class="BtnDelete">삭제</button>
								<button class="BtnModify">수정</button>
							</td>
						</tr>
					</c:forEach>	
				</tbody>
			</table>
		</div>
		
</section>

<%@ include file="include/footer.jsp" %>







