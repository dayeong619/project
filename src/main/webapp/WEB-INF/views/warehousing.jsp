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
		background-color: white;
		display: block;
		overflow-y:auto; /* 세로축만 스크롤 나와랏 */
		overflow-x:hidden;
		height: 605px;
		width: 91%;
	}
	
	table td{
		border:1px solid black;
	}
	thead td:nth-child(1){ /* 선택 */
		width: 41px;
	}
	thead td:nth-child(2){ /* No */
		width: 31px;
	}
	thead td:nth-child(3){ /* 입고일자 */
		width: 169px;
	}
	thead td:nth-child(4){ /* 품명 */
		width: 169px;
	}
	thead td:nth-child(5){ /* 입고수량 */
		width: 169px;
	}
	thead td:nth-child(6){ /* 검사결과 */
		width: 160px;
	}
	thead #success, .tableTrs #success2{
		width: 80px;
	}
	tbody td:nth-child(1){ /*                 여기서부터 tbody */
		width: 40px;
	}
	tbody td:nth-child(2){ /* No */
		width: 31px;
	}
	tbody td:nth-child(3){ /* 입고일자 */
		width: 169px;
	}
	tbody td:nth-child(4){ /* 품명 */
		width: 169px;
	}
	tbody td:nth-child(5){ /* 입고수량 */
		width: 170px;
	}
	tbody td:nth-child(6){ /* 검사결과:합격 */
		width: 80px;
	}
	tbody td:nth-child(7){ /* 검사결과:불합격 */
		width: 80px;
	}
	tbody td:nth-child(8){ /* 조치내용*/
		width: 403px;
	}
	
	tbody td:nth-child(9){ /* 비고 */
		width: 390px;
	}
	
	tbody #success, .tableTrs #success2{
		width: 80px;
	}
	#tdContent{
		width: 401px;
	}
	#tdEtc{
		width: 401px;
	}
	#tableScroll #result1, table #result2{/* 합격,불합격 인풋태그  */
		width: 80px;
		text-align: center;
	}
	
	.divTitle{ 
		width:85%;
		height: 50px;
		margin:0 auto;
		
	}
	#sectionOne{
		width:86%;
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
	}	
	#tdContent #tabletdtd{ /* 불량발생시 조치 */
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
	#modifyView{
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
	.ClassButtonTop #insert{
		margin-left: 440px;
	}
	.ClassButtonTop{ /* 크기조정 */
		width: 60px;
		height: 30px;
		margin-top:10px;
	}
	.ClassButtonTop button#insert{
		background-color:#0082a8;
	}
	.searchButton, #divDateSearchBtn{
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
	#divDate2 #searchInput, #spanMM, #searchInput2, #divDateSearchBtn, #divDate2 #gNo, #divDate2 .searchButton{
		/* visibility: hidden; */
		display: none;
	}
	#radioSearch, #radioSearchGno{
		width: 12px;
		height: 12px;
		border-radius: 10px;
		border:1px solid darkgray;
		focus:none;
	}
	.classInputColor{
		background-color: #B0C4DE;
	}
	#divDate2 #gNoSearch, #divDate2 #searchInput, #divDate2 #searchInput2, #divDate2 #gNo{
		height: 27px !important; 
	}
</style>
<section>
	<div class="divTitle2" id="">
		<div id="left"><h3>수입검사관리</h3></div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="ClassButtonTop" id="insert">신규</button>
			<button class="ClassButtonTop" id="delete">삭제</button>
			<button class="ClassButtonTop" id="modify">수정</button>
				<!-- <button class="ClassButtonTop" id="delete">수정확인</button>
				<button class="ClassButtonTop" id="delete">수정취소</button> -->
	</div>
		<script>
		
			$(document).on("click", "button#modify", function(){ /* 수정 클릭시 인풋창 활성화 */
				/* var radioBtn = $('input:radio[name=wNo]:checked');
				radioBtn.parent().parent().find(".dddd").attr("disabled", false);
				//수정확인 버튼 생기게?
				
				var $input = $('input:radio[name=wNo]:checked').val(); */
				$("#modifyView").fadeIn(300);
			
			})	
			
			
			
			/* 라뒤오버튼 눌렀을때 배경색 잡는거 */
			 $(document).on("click", "input:radio[name=wNo]:checked", function(){ 
				 var radioBtnUnchecked = $('tbody input:radio[name=wNo]');
					radioBtnUnchecked.parent().parent().removeClass("classInputColor");
					radioBtnUnchecked.parent().parent().find(".dddd").removeClass("classInputColor");
				 var radioBtn = $('input:radio[name=wNo]:checked');
				
				radioBtn.parent().parent().addClass("classInputColor");
				radioBtn.parent().parent().find(".dddd").addClass("classInputColor");
				/* var radioBtnUnchecked = $('tbody input:radio[name=wNo]');
				radioBtnUnchecked.parent().parent().removeClass("classInputColor");
				radioBtnUnchecked.parent().parent().find(".dddd").removeClass("classInputColor"); */
				 
			})
			
			 
			 
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
					
					res.wDay = date.getFullYear()+"-"+("0"+(1+date.getMonth())).slice(-2)+"-"+("0"+date.getDate()).slice(-2);
					
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
				var wResult = $('select[name=wResult]').val(); //true, false
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
				 	
				 	if( wNo == null){ //라디오 체크하지 않고 삭제를 눌렀을 때 
						alert("삭제할 정보를 체크하세요.");	
						return;
				 	}
				 	var confi = confirm("삭제하시겠습니까"); 
				 	if(confi == false){ //취소 누르면 원래 화면으로 돌아감
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
	<div id="insertView"> <!-- 신규창 -->
		<div id="insertViewBackground">
			<div id="insertViewTitle">
				<span id="spaninsert">수입검사등록</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="등록" id="insertViewinsert">
				<input type="reset" value="취소" id="insertViewReset">
			</div>
			<div id="insertViewcontent">
				<p>
					<label>입고일자</label>
					<input type="Date" name="wDay" id="nowDate" class="insertViewInput">
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
	<div id="modifyView"> <!-- 수정창ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt -->
		<div id="ModifyViewBackground">
			<div id="ModifyViewTitle">
				<span id="Modifyspaninsert">수입검사등록</span>
				<input type="submit" value="등록" id="ModifyViewinsert">
				<input type="reset" value="취소" id="ModifyViewReset">
			</div>
			<div id="ModifyViewcontent">
				<p>
					<label>입고일자</label>
					<input type="Date" name="wDay" id="nowModifyDate" class="insertViewInput">
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
			
			<select id="gNoSearch" onchange="category(this)"><!-- 검색하는 셀렉트박스 -->
				<option>검색</option>
				<option value="1">입고일자</option>
				<option value="2">제품명</option>
			</select>
			
				&nbsp;&nbsp;<input type="date" id="searchInput" name="startday" placeholder="시작날짜"> 
				<span id="spanMM">~</span> 
				<input type="date" id="searchInput2" name="endday">
				<button class="searchButton1" id="divDateSearchBtn">검색</button>
		
		
				<select id="gNo">
						<option value="0">ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ</option>
						<c:forEach var="glists" items="${glist }">
							<option value="${glists.gNo}">${glists.gName}</option>
						</c:forEach>
					</select>
				<button class="searchButton">검색</button>	
		
					
							
			</div> 
		</div>
	</div>
		<div class="divTitle2" id="tableBackGround"><!-- 테이블 시작 div -->
			<table>
				<thead>
					<tr class="tableTrs">
						<td rowspan="2"> </td>
						<td rowspan="2"><input type="radio" disabled="disabled"></td>
						<td rowspan="2">입고 일자</td>
						<td rowspan="2">품명</td>
						<td rowspan="2">입고 수량</td>
						<td colspan="2" id="tdnth5">검사 결과</td>
						<td rowspan="2" id="tdContent">조치 내용 <span id="tabletdtd">*불량 발생시 조치</span></td>
						<td rowspan="2" id="tdEtc">비고</td>
					</tr>
					<tr class="tableTrs">
						<td id="success">합격</td>
						<td id="success2">불합격</td>
					</tr>
				</thead>
				<tbody id="tableScroll">
					<c:forEach var="wlists" items="${wlist}">
						<tr>
							<td><!-- wNo 입고번호순서-->
								<p id="input2css">${wlists.wNo }</p>
							</td>
							<td><!-- 체크박스 -->
								<input type="radio" id="input1css" name="wNo" value="${wlists.wNo}">
							</td>
							<td><!-- wDay 입고일자 -->
								<fmt:formatDate value="${wlists.wDay}" var="wDay" pattern="yyyy-MM-dd"/>	
								<input type="text" value="${wDay}" disabled="disabled" class="dddd">
							</td>
							<td><!-- 품명 -->
								<select id="gNo" class="dddd" disabled>
									<c:forEach var="glists" items="${glist }">
										<option value="${glists.gNo}">${glists.gName}</option>
									</c:forEach>
								</select>
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
								<input type="text" class="dddd" value="${wlists.wMemo }" disabled="disabled">
							</td>
							<td><!-- 비고 -->
								<input type="text" class="dddd" value="${wlists.wNote }" disabled="disabled">
							</td>
						</tr>
					</c:forEach>	
				</tbody>
			</table>
		</div>
</section>
<script>

	
	function category(e){
		if(e.value == 1){
			$("input[name=startday]").css("display", "inline");
			$("#spanMM").css("display", "inline");
			$("#searchInput2").css("display", "inline");
			$("#divDateSearchBtn").css("display", "inline");
			
			$("#divDate2 #gNo").css("display", "none");
			$(".searchButton").css("display", "none");
			
		}else if(e.value == 2){
			$("input[name=startday]").css("display", "none");
			$("#spanMM").css("display", "none");
			$("#searchInput2").css("display", "none");
			$("#divDateSearchBtn").css("display", "none");
			
			$("#divDate2 #gNo").css("display", "inline");
			$(".searchButton").css("display", "inline");
		}
		
	}

	function paint(res){
		$("#tableBackGround table tbody").empty();
		
		var str = "";
		
		function getFormatDate(date){ 
			var year = date.getFullYear(); //yyyy 
			var month = (1 + date.getMonth()); //M 
			month = month >= 10 ? month : '0' + month; //month 두자리로 저장
			var day = date.getDate(); //d 
			day = day >= 10 ? day : '0' + day; //day 두자리로 저장 
			return year + '-' + month + '-' + day; 
		}
		
		for(var i=0; i<res.length; i++){
			str+= "<tr><td><p id='input2css'>"+res[i].wNo+"</p></td>";
			str+= "<td><input type='radio' id='input1css' name='wNo' value='"+res[i].wNo+"'></td>"; //입고번호
			var date = new Date(res[i].wDay);
			var wDay = getFormatDate(date);
			str+= "<td><input type='text' value='"+wDay+"'disabled='disabled' class='dddd'></td>";  //입고일
			str+= "<td><select id='gNo' class='dddd' disabled>"; 
			str+= "<option value='"+res[i].gNo.gNo+"'>"+res[i].gNo.gName+"</option>";
			str+= "</select>";
			str+= "<td><input type='text' class='dddd' value='"+res[i].wQy+"'disabled='disabled'></td>"; //입고수량
			var r1 = (res[i].wResult == 1) ? 'o':''; 
			str+= "<td><input type='text' id='result1' class='dddd' value='"+r1+"'disabled='disabled'></td>"; //합격
			var r2 = (res[i].wResult == 0) ? 'o':''; 
			str+= "<td><input type='text' id='result2' class='dddd' value='"+r2+"'disabled='disabled'></td>"; //불합격
			var r3 = (res[i].wMemo == null) ? '':'';
			str+= "<td><input type='text' id='wmemo1css' class='dddd' value='"+r3+"'disabled='disabled'></td>";
			var r4 = (res[i].wNote == null) ? '':'';
			str+= "<td><input type='text' id='wmemo2css' class='dddd' value='"+r4+"'disabled='disabled'></td></tr>";
				
		}
		$("#tableBackGround table tbody").append(str);
	}
	
		$(document).on("click", "button.searchButton", function(){ //조회버튼 클릭시
			//조회 누르면 셀렉트하기
			/* var $searchInput = $("#searchInput").val();
			var $searchInput2 = $("#searchInput2").val(); */
			
			var gNo = $("#divDate2 #gNo").val(); //찾고싶은 제품명이 숫자로 들어옴 
			
			if( gNo == null){ //값이 없으면  
				alert("제품을 선택하세요.");	
				return;
		 	}
			if( gNo == 0){ //값이 없으면  
				alert("제품을 선택하세요.");	
				return;
		 	}
			$.ajax({
				url:"warehousing/"+gNo,
				type:"get",
				dataType:"json",
				success:function(res){
					console.log(res);
					if(res.length == 0){
						alert("입고내역이 없습니다.");
					}
					paint(res);
					
					
					
					
				}
			})
			
		})
	
	$(document).on("click", "button.searchButton1", function(){
		var startday = $("#searchInput").val();
		var endday = $("#searchInput2").val();
		
		if(startday == ""){
			alert("시작날짜를 입력하세요");	
			return;
		}
		if(endday == ""){
			alert("종료날짜를 입력하세요");
			return;
		}
		
		$.ajax({
			url:"warehousing/"+startday+"/"+endday,
			type:"get",
			dataType:"json",
			success:function(res){
				console.log(res);
				
				paint(res);
				
				if(res.length == 0){
					alert("입고내역이 없습니다.");
				}
				
			}
		})
		
	})
	
</script>
<%@ include file="include/footer.jsp" %>





