<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="include/header.jsp" %>
<style>
	table{
		clear:both;
		border:1px solid black;
		border-collapse:collapse;
		margin-top:10px;
		height: 500px;
		text-align: center;
	}
	tbody{
		background-color: white;
	}
	table td{
		border:1px solid black;
	}
	table td:nth-child(1){ /* 선택 */
		width: 40px;
	}
	table td:nth-child(2){ /* No */
		width: 40px;
	}
	table td:nth-child(3){ /* 입고일자 */
		width: 150px;
	}
	table td:nth-child(4){ /* 품명 */
		width: 40px;
	}
	table td:nth-child(5){ /* 입고수량 */
		width: 40px;
	}
	#tdContent{
		width: 400px;
	}
	#tdEtc{
		width: 400px;
	}
	table #result1, table #result2{/* 합격,불합격 인풋태그  */
		width: 80px;
		text-align: center;
	}
	table #wmemo1css, table #wmemo2css{ /* 조치내용, 비고 */
		width: 230px;
	}
	table #input1css{ /* 선택*/
		width: 30px;
	}
	table #input2css{
		width: 40px;
		font-size: 14px;
	}
	table tr{
		border:1px solid black;
	}
	table tr:nth-child(2){
		height:20px;
	}
	#tabletdtd{
		font-size: 10px;
		color:red;
		text-align: right; /* 안먹으면 지우기 */
	}
	#tableScroll{
		/* overflow: scroll; */
	}
	section{
		width: 100%;
		height: 800px;
		background-color: #dfe5e8; /* 전체 배경색  */
	}
	.divTitle{ 
		width:85%;
		height: 50px;
		margin:0 auto;
		background-color: white;
	}
	#sectionOne{
		width:100%;
		border-top:2px solid #ccc;
		border-bottom:2px solid #ccc;
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
		height: 30px;
		border:none;
		background-color: white;
	}	

	.tableTrs{
		background-color: #7d97a5;
		color:white;
	}
	#workname{
		width: 120px;
	}
	#insertView{
		z-index:100;
		position:fixed;
		left:0;
		top:80px;
		width:100%;
		height: 100%;
		background: rgba(0,0,0,0.7);
		padding:20px 20%;
		/* display: none; */
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
</style>
<section>
	<div class="divTitle2" id="">
		<div id="left"><h3>수입검사관리</h3></div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button id="insert">신규</button>
			<button id="modify">수정</button>
		<script>
			$("#modify").click(function(){
				$(".dddd").removeAttr("disabled");
			})
			
			$("#insert").click(function(){
				$("#insertView").fadeIn(300);
			})
			$(document).on("click", "#insertViewReset", function(){
				$(this).parents().find("#insertView").fadeOut(300);
			})
			
			$(document).on("click", "#insertViewReset", function(){
				$(this).parents().find("#insertView").fadeOut(300);
			})
			
			
			$(document).on("click", "#insertViewinsert", function(){ /* 입고창에서 등록버튼 */
				var wDay = $('input[name=wDay]').val();
				var gName = $('input[name=gName]').val();
				var wQy = $('input[name=wQy]').val();
				var wResult = $('input[name=wResult]').val(); //true, false
				var wMemo = $('textarea[name=wMemo]').val();
				var wNote = $('textarea[name=wNote]').val();
				
				$.ajax({
					url:"warehousingInsert",
					type:"post",
					headers:{
						"Content-Type":"application/json"
					},
					data:data,
					dataType:"text",
					success:function(res){
						console.log(res);
						if(res == "success"){}
					}
				
				})
				
			})
			
		</script>
	</div>
	<div id="insertView">
		<div id="insertViewBackground">
			<div id="insertViewTitle">
				<span id="spaninsert">수입검사등록</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="등록" id="insertViewinsert">
				<input type="reset" value="취소" id="insertViewReset">
			</div>
			<div id="insertViewcontent">
				<p>
					<label>입고일자</label>
					<input type="Date" name="wDay" class="insertViewInput">
				</p>
				<p>
					<label>제품명</label>
					<input type="text" name="gName" class="insertViewInput">
				</p>
				<p>
					<label>입고수량</label>
					<input type="text" name="wQy" class="insertViewInput">
				</p>
				<p>
					<label>검사결과</label>
						<select name="wResult">
							<option value="true">합격</option>
							<option value="false">불합격</option>
						</select>
				</p>
				<p>
					<label>조치내용(불량발생시)</label>
					<textarea rows="" cols="" name="wMemo" class="insertViewInput"></textarea>
				</p>
				<p>
					<label>비고</label>
					<textarea rows="" cols="" name="wNote" class="insertViewInput"></textarea>
				</p>
			</div>
		</div>
	</div>
	<div class="divTitle">
	<div id="sectionOne">
	<div id="divDate2">
		생산일자 <input type="date"> ~ <input type="date">
		&nbsp;&nbsp;&nbsp;&nbsp;구분		
		<select>
			<option>주/야</option>
			<option>주간</option>
			<option>야간</option>
		</select>
			&nbsp;&nbsp;&nbsp;&nbsp;거래처
			<select>
				<option>ㅡㅡㅡㅡㅡㅡㅡ</option>
				<option>Y&T</option>
				<option>신라공업</option>
			</select>
			&nbsp;&nbsp;&nbsp;&nbsp;품명 
			<select>
				<option>ㅡㅡㅡㅡㅡㅡㅡ</option>
				<option>PULLEY (RS15)A</option>
				<option>PUILLEY (TA)</option>
				<option>IA6PK</option>
				<option>A2</option>
				<option>YG LAMDA</option>
				<option>TLE GAMMA</option>
				<option>TLE 48V</option>
				<option>CIVIC RS-13</option>
			</select>
			&nbsp;&nbsp;&nbsp;&nbsp;작업자 
			<input type="text" id="workname">
			<button>조회</button>
	</div> 
	</div>
	</div>
		<div class="divTitle2" id="tableBackGround">
		<table>
			<tr class="tableTrs">
				<td rowspan="2"> </td>
				<td rowspan="2"><input type="checkbox" disabled="disabled"></td>
				<td rowspan="2">입고 일자</td>
				<td rowspan="2">품명</td>
				<td rowspan="2">입고 수량</td>
				<td colspan="2" id="tdnth5">검사 결과</td>
				<td rowspan="2" id="tdContent">조치 내용 <span id="tabletdtd">*불량 발생시 조치</span></td>
				<td rowspan="2" id="tdEtc">비고</td>
			</tr>
			<tr class="tableTrs">
				<td>합격</td>
				<td>불합격</td>
			</tr>
			
				<!-- foreach 돌려서 데이터 있는만큼 보이게 해야됨.. -->
				
				<c:forEach var="wlists" items="${wlist}">
					<tr>
						<td><!-- wNo 입고번호순서-->
							<p id="input2css">${wlists.wNo }</p>
						</td>
						<td><!-- 체크박스 -->
							<input type="checkbox" id="input1css" name="wno" value="${wlists.wNo}">
						</td>
						<td><!-- wDay 입고일자 -->
							<fmt:formatDate value="${wlists.wDay}" var="wDay" pattern="yyyy-MM-dd"/>	
							<input type="text" value="${wDay}" disabled="disabled" class="dddd">
						</td>
						<td><!-- 품명 -->
							<input type="text" class="dddd" value="${wlists.gNo.gName }" disabled="disabled">
						</td>
						<td><!-- 입고수량 -->
							<input type="text" class="dddd" value="${wlists.wQy }" disabled="disabled">
						</td>
						<td><!-- 합격-->
							<input type="text" id="result1" class="dddd" value="${wlists.wResult == true ? 'ㅇ':''}" disabled="disabled">
						</td>
						<td><!-- 불합격-->
							<input type="text" id="result2" class="dddd" value="${wlists.wResult == false ? 'ㅇ':''}" disabled="disabled">
						</td>
						<td><!-- 조치내용 -->
							<input type="text" id="wmemo1css" class="dddd" value="${wlists.wMemo }" disabled="disabled">
						</td>
						<td><!-- 비고 -->
							<input type="text" id="wmemo2css" class="dddd" value="${wlists.wNote }" disabled="disabled">
						</td>
					</tr>
				</c:forEach>
			
			</table>
		</div>
		


</section>
<%@ include file="include/footer.jsp" %>