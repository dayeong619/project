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
		width: 46%;
	}
	
	table td{
		border:1px solid black;
	}
	thead td:nth-child(1), tbody td:nth-child(1){ /* 선택 */
		width: 40px;
	}
	thead td:nth-child(2), tbody td:nth-child(2){ /* No */
		width: 240px;
	}
	thead td:nth-child(3), tbody td:nth-child(3){ /* 입고일자 */
		width: 120px;
	}
	thead td:nth-child(4), tbody td:nth-child(4){ /* 품명 */
		width: 120px;
	}
	thead td:nth-child(5), tbody td:nth-child(5){ /* 입고수량 */
		width: 140px;
	}
	tbody td{
		height: 40px;
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
		background-color: #ccc;
	}
	#divDate2 #gNoSearch, #divDate2 #searchInput, #divDate2 #searchInput2, #divDate2 #gNo{
		height: 27px !important; 
	}
</style>
<section>
	<div class="divTitle2">
		<div id="left"><h3>제품현황</h3></div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="ClassButtonTop" id="insert">신규</button>
			<button class="ClassButtonTop" id="delete">삭제</button>
			<button class="ClassButtonTop" id="modify">수정</button>
	</div>
	<div id="insertView"> <!-- 신규창 -->
		<div id="insertViewBackground">
			<div id="insertViewTitle">
				<span id="spaninsert">제품등록</span>
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
						<td> </td>
						<td>제품명</td>
						<td>공급사</td>
						<td>고객사</td>
						<td>제품등록일</td>
					</tr>
				</thead>
				<tbody id="tableScroll">
				<c:forEach items="${glist }" var="g">
					<tr>
						<td><input type="radio" name="gNo" value="${g.gNo }"></td>
						<td>${g.gName }</td>
						<td>${g.gLocation }</td>
						<td>${g.gClient }</td>
						<td><fmt:formatDate value="${g.gDay }" pattern="yyyy-MM-dd"/></td>
					</tr>
				</c:forEach>	
				</tbody>
			</table>
		</div>
</section>
<script>
	/* 라뒤오버튼 눌렀을때 배경색 잡는거 */
	$(document).on("click", "input:radio[name=gNo]:checked", function(){ 
		var radioBtnUnchecked = $('tbody input:radio[name=gNo]');
		radioBtnUnchecked.parent().parent().removeClass("classInputColor");
		
		var radioBtn = $('input:radio[name=gNo]:checked');
		radioBtn.parent().parent().addClass("classInputColor");
		 
	})
	
	function repaint(res){
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
				str+="<c:forEach items='"+res+"' var='g'><tr>";
				str+="<td><input type='radio' name='gNo' value='"+res[i].gNo+"'></td>";	
				str+="<td>"+res[i].gName+"</td>";	
				str+="<td>"+res[i].gLocation+"</td>";	
				str+="<td>"+res[i].gClient+"</td>";	
				var date = new Date(res[i].gDay);
				var gDay = getFormatDate(date);
				str+="<td>"+gDay+"</td>";	
				str+="</tr></c:forEach>";	
			}
			$("#tableBackGround table tbody").append(str);
				
	}
	
	//제품 삭제
	 $(document).on("click", "button#delete", function(){ 
					
					var gNo = $('input:radio[name=gNo]:checked').val();
				 	var $this = $(this);
				 	var json = {gNo:gNo};
				 	var data = JSON.stringify(json);
				 	
				 	if( gNo == null){ //라디오 체크하지 않고 삭제를 눌렀을 때 
						alert("삭제할 정보를 체크하세요.");	
						return;
				 	}
				 	
				 	var confi = confirm("삭제하시겠습니까"); 
				 	if(confi == false){ //취소 누르면 원래 화면으로 돌아감
				 		return;
				 	}
				 	
					 $.ajax({
						url:"goods/"+gNo,
						type:"put",
						headers:{
							"Content-Type":"application/json"
						},
						data:data,
						dataType:"json",
						success:function(res){
							console.log(res);
							repaint(res);
						}
					})
				}) 
</script>
<%@ include file="include/footer.jsp" %>





