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
	tbody td:nth-child(2){ 
		width: 93px;
	}
	tbody td:nth-child(3){ /* 입고일자 */
		width: 140px;
	}
	tbody td:nth-child(4){ /* 품명 */
		width: 140px;
	}
	tbody td:nth-child(5){ /* 입고수량 */
		width: 140px;
	}
	tbody td:nth-child(6){ 
		width: 40px;
	}
	tbody td:nth-child(7){ /* 불량 */
		width: 40px;
	}
	tbody td:nth-child(8){ 
		width: 40px;
	}
	tbody td:nth-child(9){ 
		width: 40px;
	}
	tbody td:nth-child(10){ 
		width: 350px;
	}
	tbody td:nth-child(11){ 
		width: 235px;
	}
	tbody .badnessInput{
		width:56px; 
		border:none;
		background-color: white;
		text-align: center;
	}
	
	tbody .success{
		width: 80px;
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
		height: 30px;
		border:none;
		background-color: white;
		text-align: center;
		width: 163px;
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
	
	
</style>
<section>
	<div class="divTitle2" id="">
		<div id="left"><h3>생산현황</h3></div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<!-- <button class="ClassButtonTop" id="insert">신규</button>
			<button class="ClassButtonTop" id="delete">삭제</button>
			<button class="ClassButtonTop" id="modify">수정</button> -->
				<!-- <button class="ClassButtonTop" id="delete">수정확인</button>
				<button class="ClassButtonTop" id="delete">수정취소</button> -->
			<%-- <div>
				<c:forEach var="plists" items="${plist }">
					<c:if test="${plists.mNo[0].mName == null }">
						제품이름없음
					</c:if>
					${plists.mNo[0].mName }
					${plists.bNo}
				</c:forEach>
			</div> --%>
		<script>
			
			/* $(document).ready(function(){
				var radio = $("input:radio[name=wResult]").val(); //값이 true 
				
				if( radio == false ){
					$(".result22").attr("checked", true);
				}
				
			})
		 */
		
			$(document).on("click", "button#modify", function(){ /* 수정 클릭시 인풋창 활성화 */
				var radioBtn = $('input:radio[name=wNo]:checked');
				radioBtn.parent().parent().find(".dddd").attr("disabled", false);
				//수정확인 버튼 생기게?
				
				var $input = $('input:radio[name=wNo]:checked').val();
			
			
			})	
			
			/* 라뒤오버튼 눌렀을때 배경색 잡는거 */
			 $(document).on("click", "input:radio[name=wNo]:checked", function(){ 
				var radioBtn = $('input:radio[name=wNo]:checked');
				radioBtn.parent().parent().css("background-color","#EAEAEA");
				radioBtn.parent().parent().find(".dddd").css("background-color","#EAEAEA");
				$("input:radio[name=wNo]").css("background-color","white");
			})
			
			/* $(document).on("click", "input:radio[name=wNo]", function(){ 
				
				if($("input:radio[name=wNo]:checked")){
					var radioBtn = $('input:radio[name=wNo]:checked');
					radioBtn.parent().parent().css("background-color","#EAEAEA");
					radioBtn.parent().parent().find(".dddd").css("background-color","#EAEAEA");
				}else{
					
				}
				
			})  */
			 
			 
			$("#insert").click(function(){ /* 신규 클릭시 입력창 나옴  */
				document.getElementById("nowDate").valueAsDate = new Date();
				$("#insertView").fadeIn(300);
			})

			
			$(document).on("click", "#insertViewReset", function(){
				$(this).parents().find("#insertView").fadeOut(300);
			})
			
			
			function repaint(obj){
				$("#tableBackGround table tbody").empty();
				
				$(obj.list).each(function(i,res){
					
					var str="";
					var date = new Date(res.wDay);
					res.wDay = date.getFullYear()+"-"+(1+date.getMonth())+"-"+date.getDate();
					
					str+= "<tr><td><p id='input2css'>"+res.wNo+"</p></td>";
					str+= "<td><input type='radio' id='input1css' name='wNo' value='"+res.wNo+"'></td>"; //입고번호
					str+= "<td><input type='text' value='"+res.wDay+"'disabled='disabled' class='dddd'></td>"; //입고일
					str+= "<td><select id='gNo' class='dddd' disabled>"; 
					$(obj.glist).each(function(i, res){
						
						str+= "<option value='"+res.gNo+"'>"+res.gName+"</option>";
					})					
					str+= "</select>";
					str+= "<td><input type='text' class='dddd' value='"+res.wQy+"'disabled='disabled'></td>"; //입고수량
					/* 삼항연산자 사용 사요요ㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛ */
					var r1 = (res.wResult == 1) ? 'o':''; 
					str+= "<td><input type='text' id='result1' class='dddd' value='"+r1+"'disabled='disabled'></td>"; //합격
					var r2 = (res.wResult == 0) ? 'o':''; 
					str+= "<td><input type='text' id='result2' class='dddd' value='"+r2+"'disabled='disabled'></td>"; //불합격
					if(res.wMemo == null){
						res.wMemo = "";
					}
					if(res.wNote == null){
						res.wNote = "";
					}
					str+= "<td><input type='text' id='wmemo1css' class='dddd' value='"+res.wMemo+"'disabled='disabled'></td>";
					str+= "<td><input type='text' id='wmemo2css' class='dddd' value='"+res.wNote+"'disabled='disabled'></td></tr>";
						
					
					$("#tableBackGround table tbody").append(str);
				})
				
			}
			
			
			 function ListAll(){ /* 리스트만 불러오는 녀석 */
				$.ajax({
					url:"warehousing/do",
					type:"get",
					dataType:"json",
					success:function(res){
						console.log(res);
						repaint(res);
						
					}
				})
			} 
			
			$(document).on("click", "#insertViewinsert", function(){ /* 입고창에서 등록*/
				var wDay = $('input[name=wDay]').val(); //입고일자
				var gNo = $('#gNo option:selected').val(); //제품번호
				var wQy = $('input[name=wQy]').val(); //입고수량
				var wResult = $('input[name=wResult]').val(); //true, false
				var wMemo = $('textarea[name=wMemo]').val(); //조치내용
				var wNote = $('textarea[name=wNote]').val(); //비고
							
				var json = {gNo:{gNo:gNo}, wDay:wDay, wQy:wQy, wResult:wResult, wMemo:wMemo, wNote:wNote};
				var data = JSON.stringify(json);
				// gNo(객체이름):{"키":"값"}
				
				$.ajax({
					url:"warehousing",
					type:"post",
					headers:{
						"Content-Type":"application/json"
					},
					data:data,
					dataType:"json",
					success:function(res){
						console.log(res); //////////////////////////////////////////////
						$("#insertView").find(".insertViewInput").val("");
						$("#insertView").hide();
						
						 repaint(res);
					}
				})
			})
			
			
			 $(document).on("click", "button#delete", function(){ /* 입고정보삭제 */
					
					var wNo = $('input:radio[name=wNo]:checked').val();
				 	var $this = $(this);
				 	var json = {wNo:wNo};
				 	var data = JSON.stringify(json);
				 	
				 	var confi = confirm("삭제하시겠습니까");
				 	if(confi == false){
				 		return;
				 	}
				 	
				 	
					 $.ajax({
						url:"warehousing/"+wNo,
						type:"put",
						headers:{
							"Content-Type":"application/json"
						},
						data:data,
						dataType:"json",
						success:function(res){
							console.log(res);
							
							$('input:radio[name=wNo]:checked').parent().parent().remove();						
						}
					})
				}) 
			
				
				$(document).on("click", "button#modify", function(){ /* 입고클릭해서 수정 */ 
				
					var wNo = $('input:radio[name=wNo]:checked').val(); //68
					var wDay = $('input[name=wDay]').val(); //입고일자
					var gNo = $('#gNo option:selected').val(); //제품번호
					var wQy = $('input[name=wQy]').val(); //입고수량
					var wResult = $('input[name=wResult]').val(); //true, false
					var wMemo = $('textarea[name=wMemo]').val(); //조치내용
					var wNote = $('textarea[name=wNote]').val(); //비고
					
					var json = {gNo:{gNo:gNo}, wDay:wDay, wQy:wQy, wResult:wResult, wMemo:wMemo, wNote:wNote};
					var data = JSON.stringify(json);		
					
					
					
					
					
					
					
					
					// repaint(res); 다시그림
				})
			
			
			
		</script>
	</div>
	
	<div class="divTitle">
		<div id="sectionOne">
			<div id="divDate2">
				생산일자 <input type="date"> ~ <input type="date">
				
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
					<button class="searchButton">조회</button>
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
								${plists.lNo[0].lLine}
							</td>
							
							<td><!-- 성명 -->
								<c:if test="${plists.mNo[0].mName == null}">
									<p>이름없음</p>
								</c:if>
								${plists.mNo[0].mName}
							</td>
							<td><!-- 품명 -->
								<%-- <select id="gNo" class="dddd" disabled>
									<c:forEach var="glists" items="${plists.wNo.gNo }">
										<option value="${glists.gNo}">${glists.gName}</option>
									</c:forEach>
								</select> --%>
								<input type="text" class="dddd" value="${plists.wNo.gNo.gName }" disabled="disabled">
							</td>
							<td><!-- 작업시간 -->
								<input type="text" class="dddd" value="${plists.pWorktime }" disabled="disabled">
							</td>
							<td><!-- 생산수량 -->
								<input type="text" id="result1" class="dddd" value="${plists.pQy }" disabled="disabled">
							</td>
							<td><!-- 불량내역 -->
								<input type="text" id="result2" class="badnessInput" value="${plists.bNo }" disabled="disabled">
							</td>
							<td><!-- 가공 -->
								<input type="text" class="badnessInput" value="${plists.bNo[0].bProcess}" disabled="disabled">
							</td>
							<td><!-- 셋업 -->
								<input type="text" class="badnessInput" value="${plists.bNo[0].bSetup }" disabled="disabled">
							</td>
							<td><!-- 불량내역 -->
								<input type="text" id="result2" class="badnessInput" value="${plists.bNo[0].bMaterial }" disabled="disabled">
							</td>
							<td><!-- 비고 -->
								<input type="text" id="result2" class="dddd" value="${plists.bNo[0].bEtc }" disabled="disabled">
							</td>
							<td>
								<button>등록</button>
								<button>삭제</button>
								<button>수정</button>
							</td>
						</tr>
					</c:forEach>	
				</tbody>
			</table>
		</div>
		
</section>
<%@ include file="include/footer.jsp" %>