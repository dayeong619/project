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
		height: 40px;
		text-align: center;
	}
	tbody{
		background-color: white;
	}
	table td{
		border:1px solid black;
	}
	.tableTrs td:nth-child(1), #tableScroll table td:nth-child(1){ /* 선택 */
		width: 37px;
	}
	.tableTrs td:nth-child(2), #tableScroll table td:nth-child(2){ /* No */
		width: 28px;
	}
	.tableTrs td:nth-child(3), #tableScroll table td:nth-child(3){ /* 입고일자 */
		width: 156px;
	}
	.tableTrs td:nth-child(4), #tableScroll table td:nth-child(4){ /* 품명 */
		width: 156px;
	}
	.tableTrs td:nth-child(5), #tableScroll table td:nth-child(5){ /* 입고수량 */
		width: 150px;
	}
	.tableTrs #success, .tableTrs #success2{
		width: 40px;
	}
	.tableTrs #tdnth5{
		width: 160px;
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
		width: 430px;
	}
	table #input1css{ /* 선택*/
		width: 30px;
	}
	table #input2css{
		width: 40px;
		font-size: 14px;
	}
	
	
	#tabletdtd{
		font-size: 10px;
		color:red;
		text-align: right; /* 안먹으면 지우기 */
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
	#insertView{ /* 신규클릭시 나오는 입고등록 */
		z-index:100;
		position:fixed;
		left:0;
		top:80px;
		width:100%;
		height: 100%;
		background: rgba(0,0,0,0.7);
		padding:20px 20%;
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
	#tableScroll{
		width: 96%;
		height:500px;
		overflow-y:auto; /* 세로축만 스크롤 나와랏 */
		overflow-x:hidden;
		margin-top: -10px;
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
</style>
<section>
	<div class="divTitle2" id="">
		<div id="left"><h3>생산일지관리</h3></div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="ClassButtonTop" id="insert">신규</button>
			<button class="ClassButtonTop" id="modify">수정</button>
			<button class="ClassButtonTop" id="delete">삭제</button>
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
			
			
			$(document).on("click", "#insertViewinsert", function(){ /* 입고창에서 등록*/
				var wDay = $('input[name=wDay]').val(); //입고일자
				var gNo = $('#gNo option:selected').val(); //제품번호
				var wQy = $('input[name=wQy]').val(); //입고수량
				var wResult = $('input[name=wResult]').val(); //true, false
				var wMemo = $('textarea[name=wMemo]').val(); //조치내용
				var wNote = $('textarea[name=wNote]').val(); //비고
				console.log(gNo);				
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
					dataType:"text",
					success:function(res){
						console.log(res);
						if(res == "success"){
							alert("등록되었습니다.");
						}
						$("#insertView").hide();
					}
				})
			})
			
			
			 $(document).on("click", "button#delete", function(){ /* 입고정보삭제 */
					
					var wNo = $('input:radio[name=wNo]:checked').val();
				 	var $this = $(this);
				 	var json = {wNo:wNo};
				 	var data = JSON.stringify(json);
				 	
				 	alert("삭제하시겠습니까");
				 	
					 $.ajax({
						url:"warehousing/"+wNo,
						type:"put",
						headers:{
							"Content-Type":"application/json"
						},
						data:data,
						dataType:"text",
						success:function(res){
							console.log(res);
							
							if(res == "success"){ //그것만 지우거나 다시그리긩.
								wNo.parent().remove(); 
							//한번 비우고 다시 그리기?
							}
						}
					})
				}) 
			
		
			
			
			
		</script>
	</div>
	<div id="insertView"> <!-- 신규창 -->
		<div id="insertViewBackground">
			<div id="insertViewTitle">
				<span id="spaninsert">생산일지등록</span>
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
					<!-- <input type="text" name="gName" class="insertViewInput"> -->
					<select id="gNo">
						<c:forEach var="glists" items="${glist }">
							<option value="${glists.gNo}">${glists.gName}</option>
						</c:forEach>
					</select>
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
					<textarea name="wMemo" class="insertViewInput"></textarea>
				</p>
				<p>
					<label>비고</label>
					<textarea name="wNote" class="insertViewInput"></textarea>
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
			&nbsp;&nbsp;&nbsp;&nbsp;제품명 
			
			<select id="gNo">
				<c:forEach var="glists" items="${glist }">
					<option value="${glists.gNo}">${glists.gName}</option>
				</c:forEach>
			</select>
			&nbsp;&nbsp;&nbsp;&nbsp;작업자 
			<input type="text" id="workname">
			<button class="searchButton">조회</button>
	</div> 
	</div>
	</div>
		<div class="divTitle2" id="tableBackGround"><!-- 테이블 메뉴 고정 -->
		<table>
			<tr class="tableTrs">
				<td rowspan="2">라인</td>
				<td rowspan="2"><input type="checkbox" disabled="disabled"></td>
				<td rowspan="2">성 명</td>
				<td rowspan="2">제품명</td>
				<td rowspan="2">작업 시간</td>
				<td rowspan="2" id="tdnth5">생산 수량</td>
				<td colspan="5" id="tdContent">불량내역 <span id="tabletdtd">*불량이 있을 경우만 표기</span></td>
				<td rowspan="2" id="tdEtc">비고</td>
			</tr>
			<tr class="tableTrs">
				<td id="success">가공</td>
				<td id="success2">셋업</td>
				<td>소재</td>
				<td>기타</td>
				<td>계</td>
			</tr>
		</table>	
				<!-- foreach 돌려서 데이터 있는만큼 보이게 해야됨.. -->
	<div id="tableScroll">	
		<table>
			<c:forEach var="plists" items="${plist }">
				<tr>
					<td>${plists.lNo[0].lLine}</td><!-- list형식으로 넣을라면 [0] -->
					<td><input type="radio" name="pNo" value="${plists.pNo}"></td>
					<td>${plists.pWorkname }</td>
					<td>${plists.wNo.gNo.gName }제품명</td>
					<td>${plists.pWorktime }</td>
					<td>${plists.pQy }</td>
					<td>${plists.bNo }</td>
					<td>${plists.bNo }</td>
					<td>${plists.bNo }</td>
					<td>${plists.bNo }</td>
					<td>${plists.bNo }합계</td>
					<td>${plists.pNote }</td>
				</tr>
			</c:forEach>		
		</table>
	</div>		
</div>
		
</section>
<%@ include file="include/footer.jsp" %>