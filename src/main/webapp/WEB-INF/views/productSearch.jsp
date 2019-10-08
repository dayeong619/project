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
		width: 140px;
	}
	thead td:nth-child(7){ /* 비고 */
		width: 400px;
	}
	thead td:nth-child(8){ 
		width: 300px;
	}
	thead td:nth-child(9){ 
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
	
	tbody td:nth-child(1) {                           /* 여기서부터 tbody */
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
	tbody td:nth-child(4) select{ 
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
		width: 163px;
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
		width: 56px;
	}
	tbody td:nth-child(11){ 
		width: 130px;
	}
	tbody td:nth-child(12){ 
		width: 200px;
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
		
	}
</style>
<section>
	<div class="divTitle2" id="">
		<div id="left"><h3>생산일지</h3></div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
	<div class="divTitle">
		<div id="sectionOne">
			<div id="divDate2">
				생산일자 <input type="date" id="nowDate" name="pWorkday">
				<script>
					document.getElementById("nowDate").valueAsDate = new Date();
				</script>
					&nbsp;&nbsp;&nbsp;&nbsp;구분
					<select name="pSection">
						<option value="1">주간</option>
						<option value="0">야간</option>
					</select>
					<!-- 연습공간 -->
			</div> 
		</div>
	</div>
		<div class="divTitle2" id="tableBackGround"><!-- 테이블 시작 div -->
			<table>
				<thead>
					<tr class="tableTrs">
						<td rowspan="2">라인</td>
						<td rowspan="2">성명</td>
						<td rowspan="2">입고번호</td>
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
								${plists.lNo[0].lLine}
								<input type="hidden" name="lNo" value="${plists.lNo[0].lNo}">
							</td>
							<td><!-- 성명 -->
								<select id="mNo" disabled class="dddd" >
									<option>선택하세요</option>
									<c:forEach var="p" items="${pmlist}">
										<option value="${p.mNo[0].mNo }">${p.mNo[0].mName}</option>
									</c:forEach>
								</select>
							</td>
							<td>
								<!-- 입고번호랑 +품명 = set
								수량은 내가 입력할수 있어야 함. -->
								<select id="wNo" class="dddd" disabled> 
									<c:forEach items="${wlist }" var="w">
										<option value="${w.wNo }">W00${w.wNo }</option>
									</c:forEach>
								</select>
							</td>
							<td><!-- 품명 -->
								<select id="gNo" disabled class="dddd">
									<option>선택하세요</option>
									<c:forEach var="g" items="${glist}">
										<option value="${g.gNo}">${g.gName}</option>
									</c:forEach>
								</select>
							</td>
							<td><!-- 작업시간 -->
								<input type="text" name="pWorktime" class="dddd" disabled="disabled">
							</td>
							<td><!-- 생산수량 -->
								<input type="text" name="pQy" id="result1" class="dddd" disabled="disabled" >
							</td>
							<td><!-- 가공 -->
								<input type="text" name="bProcess" id="result2" class="badnessInput" disabled="disabled">
							</td>
							<td><!-- 셋업 -->
								<input type="text" name="bSetup" class="badnessInput" disabled="disabled">
							</td>
							<td><!-- 소재 -->
								<input type="text" name="bMaterial" class="badnessInput" disabled="disabled">
							</td>
							<td><!-- 기타 -->
								<input type="text" name="bEtc" id="result2" class="badnessInput" disabled="disabled">
							</td>
							<td><!-- 비고 -->
								<input type="text" name="pNote" id="result2" class="dddd" disabled="disabled">
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
<script>
	$(".BtnInsert").click(function(){ //tbody td 에서 등록버튼 눌렀을때.
		
		$(this).parent().parent().find(".dddd").removeAttr("disabled");
		$(this).parent().parent().find(".badnessInput").removeAttr("disabled");
		$(this).parent().parent().find(".dddd").css("background-color", "#F0F8FF");
		$(this).parent().parent().find(".badnessInput").css("background-color", "#F0F8FF");
		$(this).parent().parent().find("td:nth-child(1)").css("background-color", "#F0F8FF");
		$(this).parent().parent().find("td:nth-child(2) select").css("visibility", "visible");
		$(this).parent().parent().find("td:nth-child(3) select").css("visibility", "visible");
		$(this).parent().parent().find("td:nth-child(4) select").css("visibility", "visible");
		$(this).parent().parent().find("td:nth-child(5) input").attr("value", "08:00-20:00");
		$(this).parent().parent().find("td:last-child").css("background-color", "#F0F8FF");
		$(this).parent().parent().find("#mNo").focus();
		$(this).hide(); //누른 등록버튼은 사라져랏
		$(this).next("#BtnInsertConfirm").css("display", ""); //---------------------등록확인버튼 나타나야 되는데 아직 수정해야됨
		
	})
	
	
	$(document).on("click", "#BtnInsertConfirm", function(){ //등록확인 버튼 눌렀을 때 
		var $this = $(this);
		var pWorkday = $("select[name=pWorkday]").val(); //일자
		var pSection = $("select[name=pSection]").val();//구분 주/야
		var lNo = $("input[name=lNo]").val(); //해당라인
		var mNo = $("#mNo option:selected").val(); //성명 번호
		var gNo = $("#gNo option:selected").val(); //픔명 번호
		var pWorktime = $("input[name=pWorktime]").val(); //작업시간
		var pQy = $("input[name=pQy]").val(); //생산수량
		var bProcess = $("input[name=bProcess]").val();//가공
		var bSetup = $("input[name=bSetup]").val();//셋업
		var bMaterial = $("input[name=bMaterial]").val();//소재
		var bEtc = $("input[name=bEtc]").val();//기타
		var pNote = $("input[name=pNote]").val();//비고
		var wNo = $("input[name=wNo]").val(); //입고번호가 필요함
		
		var json = {wNo:{wNo:wNo}, pWorkday:pWorkday, lNo:{lNo:lNo}, mNo:{mNo:mNo}, pWorktime:pWorktime, pQy:pQy, pNote:pNote, pSection:pSection, bProcess:bProcess, bSetup:bSetup, bMaterial:bMaterial, bEtc:bEtc};
		var data = JSON.stringify(json);
		
		$.ajax({
			url:"product",
			type:"post",
			headers:{
				"Content-Type":"application/json"
			},
			data:data,
			dataType:"json",
			success:function(res){
				console.log(res);
				$this.hide();	
			}
		})
		
		
		
		
		
		
		
	})
</script>
<%@ include file="include/footer.jsp" %>








