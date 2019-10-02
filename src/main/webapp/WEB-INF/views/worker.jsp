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
		height: 30px;
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
		width:85%;
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
		height: 60px;
	}
	#workname{
		width: 120px;
	}
	
	#insertView{ /* 신규클릭시 나오는 입고등록 */
		z-index:100;
		position:fixed;
		left:0;
		top:80px;
		width:100%;
		height: 71%;
		background: rgba(0,0,0,0.7);
		padding:60px 500px;
		display: none; 
		color:#D5D5D5;
	}
	#insertViewBackground{
		width: 600px;
		height: 500px;
		background-color: white;
		color:black;
	}
	#spaninsert{
		font-size: 20px;
		font-weight: bold;
	}
	#insertViewTitle{
		height: 50px;
		padding-left:10px;
		padding-top:10px;
	}
	#insertView #insertViewinsert{
		width: 60px;
		height: 30px;
		color:white;
		background-color: #365c89;
		border:1px solid #ccc;
	}
	#insertView #insertViewReset{
		width: 60px;
		height: 30px;
		color:black;
		background-color:white;
		border:1px solid #ccc;
	}
	#insertView label{
		width: 200px;
		height: 50px;
		display:inline-block;
		
	}
	#insertView .insertViewInput{
		width:200px; 
		height: 30px;
	}
	#insertViewcontent{
		width: 570px;
		margin-left:10px;
		padding-left:10px;	
		border-top:2px solid #ccc;	
		border-bottom:2px solid #ccc;	
	}
	#insertView textarea{
		width: 340px !important;
		height: 70px !important;
	}
	#insertViewcontent select{
		width: 204px;
		height: 34px;
	}

	#pagepage{
		position:absolute;
		bottom:150px;
		left:700px;
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
	<div class="divTitle2">
		<div><h3>작업자현황</h3></div>
	</div>
	<div class="divTitle">
		<div id="sectionOne">
			<div id="divDate2">
				<div id="left">
					이름으로 검색 <input type="text" name="pName"><button>검색</button>
				</div> 
				<button id="insert">작업자등록</button>	
			</div> 
		</div>
	</div>
	<div id="insertView"> <!-- 신규창 -->
		<div id="insertViewBackground">
			<div id="insertViewTitle">
				<span id="spaninsert">작업자등록</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="등록" id="insertViewinsert">
				<input type="reset" value="취소" id="insertViewReset">
			</div>
			<div id="insertViewcontent">
				<div>
			<label>이름</label>
			<input type="text" name="mName">
		</div>
		<div>
			<label>생년월일</label>
			<input type="text" name="mBirth" placeholder=" 8자리 ex) 19910619">
		</div>
		<div>
			<label>연락처</label>
			<input type="text" name="mTel" placeholder=" 11자리 ex) 01055431491">
		</div>
		<div>
			<label>등록일</label>
			<input type="date" name="mEnterday" id="nowDate" placeholder=" 8자리 ex) 20190918">
		</div>
		<div>
			<label>작업자인증일</label>
			<input type="date" name="mConfirm"  placeholder=" 8자리 ex) 20190918">
		</div>
			</div>
		</div>
	</div>
		<div class="divTitle2" id="tableBackGround"><!-- 테이블 시작 div -->
			<table>
				<thead>
					<tr class="tableTrs">
						<td rowspan="2"> </td>
						<td rowspan="2">이름</td>
						<td rowspan="2">생년월일</td>
						<td rowspan="2">연락처</td>
						<td rowspan="2">주소</td>
						<td rowspan="2">작업자등록일</td>
						<td rowspan="2">작업자인증일</td>
						<td rowspan="2">생산실적</td>
						<td rowspan="2">정보수정</td>
					</tr>
				</thead>
				<tbody id="tableScroll">
					<c:forEach var="lists" items="${list}">
						<tr>
							<td>${lists.mNo }</td>
							<td>
								${lists.mName}
							</td>
							<td>
								${lists.mBirth}
							</td>
							<td>
								${lists.mTel}
							</td>
							<td>
								${lists.mAddr}
							</td>
							<td>
								${lists.mEnterday}
							</td>
							<td>
								${lists.mConfirm}
							</td>
							<td>
								<button class="BtnProductResult">보기</button>
							</td>
							<td>
								<button class="BtnWorkerModify">수정</button>
								<button class="BtnWorkerDelete">삭제</button>
							</td>
						</tr>
					</c:forEach>	
				</tbody>
			</table>
		</div>
		
</section>
<script>
	$(document).on("click", "button#insert", function(){
		document.getElementById("nowDate").valueAsDate = new Date();
		$("#insertView").fadeIn(300);
	})
	
			
	$(document).on("click", "#insertViewReset", function(){
		$(this).parents().find("#insertView").fadeOut(300);
	})
</script>
<%@ include file="include/footer.jsp" %>








