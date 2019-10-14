<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	thead{
		position: relative;
	}
	tbody{
		overflow-y:auto; /* 세로축만 스크롤 나와랏 */
		overflow-x:hidden;
		height: 605px;
		position:absolute;
		top:100;
		left:50;
	}
	tbody tr{
		background-color: white;
		height: 30px;
	}
	table td{
		border:1px solid black;
	}
	thead td:nth-child(1), tbody td:nth-child(1){ 
		width: 50px;
	}
	thead td:nth-child(2), tbody td:nth-child(2){ 
		width: 120px;
	}
	thead td:nth-child(3), tbody td:nth-child(3){
		width: 120px;
	}
	thead td:nth-child(4), tbody td:nth-child(4){ 
		width: 100px;
	}
	thead td:nth-child(5), tbody td:nth-child(5){ 
		width: 160px;
	}
	thead td:nth-child(6), tbody td:nth-child(6){ 
		width: 200px;
	}
	thead td:nth-child(7), tbody td:nth-child(7){ 
		width: 140px;
	} 
	tbody .badnessInput{
		width:56px; 
		height:60px;
		border:none;
		background-color: white;
		text-align: center;
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
		width:55%;
		border-top:2px solid #ccc;
		border-bottom:2px solid #ccc;
		background-color: white;
	}
	.divTitle2{ /*중앙정렬하는 div클래스 */
		width: 85%;
		height:50px;
		margin:0 auto;
	}
	.divTitle2 h3{
		padding-top:15px;
	}
	#left{
		overflow:hidden;
		float: left;
		width: 900px;
	}
	#divDate2{
		width: 100%;
		height: 50px;
		padding-left:20px;
		line-height:50px;
	} 
	
	.dddd{
		height: 60px;
		border:none;
		background-color: white;
		text-align: center;
	}	
	table thead #tabletdtd{
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
	#oneYear{
		color: #E0FFFF;
		font-size: 11px;
	}
	#insert{
		width: 90px;
  	    height: 35px;
  	    font-size: 15px;
	}
	.mNameClass:hover {
		cursor: pointer;
	}
	.workerView{
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
	.workerView .workerModify{
		width: 60px;
		height: 30px;
		color:black;
		background-color: #ccc;
		border:1px solid gray;
	}
	.workerView .workerDelete{
		width: 60px;
		height: 30px;
		color:black;
		background-color:#ccc;
		border:1px solid gray;
	}
	.workerView .workerClose{
		width: 60px;
		height: 30px;
		color:black;
		background-color:#ccc;
		border:1px solid gray;
	}
	.workerView .worketModifyCF{
		width: 60px;
		height: 30px;
		color:black;
		background-color:#ccc;
		border:1px solid gray;
		display: none;
	}
	.workerView .workerViewBackground{
		width: 600px;
		height: 550px;
		background-color: white;
		color:black;
	}
	.workerView #spaninsert2{
		font-size: 20px;
		font-weight: bold;
	}
	.workerView .workerViewTitle{
		height: 50px;
		padding-top:10px;
	}
	.workerView label{
		width: 200px;
		height: 50px;
		display:inline-block;
	}
	.workerView .insertViewInput{
		width:300px; 
		height: 30px;
		background-color: white;
		border:none;
		font-size: 18px;
	}
	.workerView .insertViewcontent{
		width: 570px;
		margin-left:10px;
		padding-left:10px;	
		padding-top:20px;
		border-top:2px solid #ccc;	
		border-bottom:2px solid #ccc;	
	}
	
	#divDate2 #gNoSearch, #divDate2 #searchInput, #divDate2 #searchInput2, #divDate2 #dNo{
		height: 27px !important; 
	}
	#insertViewModify{
		display:none;
	}
	#divDate2 #searchInput, #spanMM, #searchInput2, #divDateSearchBtn, #divDate2 #dNo, #divDate2 .searchButton{
		display: none;
	}
	.searchButton1, .searchButton{
		width: 60px;
		height: 30px;
	}
</style>
<section>
	<div class="divTitle2">
		<div>
			<h3>전체 사원 현황</h3>
		</div>
	</div>
<div class="divTitle">
		<div id="sectionOne">
			<div id="divDate2">
			<select id="gNoSearch" onchange="category(this)"><!-- 검색하는 셀렉트박스 -->
				<option value="12">검색</option>
				<option value="1">이름</option>
				<option value="2">부서별 </option>
			</select>
				&nbsp;&nbsp;<input type="text" id="searchInput" name="startday" placeholder="1자이상 입력"> 
				<button class="searchButton1" id="divDateSearchBtn">검색</button>
				<select id="dNo">
						<option value="0">선택하세요</option>
						<c:forEach var="d" items="${dlist }">
							<option value="${d.dNo}">${d.dName}</option>
						</c:forEach>
					</select>
				<button class="searchButton">검색</button>	
			</div> 
		</div>
	</div>	
		<div class="divTitle2" id="tableBackGround"><!-- 테이블 시작 테이블 시작 테이블 시작 -->
			<table>
				<thead>
					<tr class="tableTrs">
						<td>순번</td>
						<td>이름</td>
						<td>부서</td>
						<td>직책</td>
						<td>연락처</td>
						<td>이메일</td>
						<td>아이디</td>
					</tr>
				</thead>
				<tbody id="tableScroll">
					<c:forEach var="lists" items="${list}">
						<tr>
							<c:set var="sum" value="${sum+1}"/><!-- 번호 매기기 -->
							<td>
								${sum}
							</td>
							<td>
								<input type="hidden" name="mNo" value="${lists.mNo}">
								<div class="mNameClass">${lists.mName}</div>
								<div class="workerView"> 
									<div class="workerViewBackground">
										<div class="workerViewTitle">
											<span id="spaninsert2">${lists.mName}님 상세보기</span>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;
											<c:if test="${Auth.tNo != '3' }">
												<button class="workerModify">수정</button>
												<button class="worketModifyCF">수정확인</button>
												<button class="workerDelete">삭제</button>
											</c:if>
											<button class="workerClose">닫기</button>
										</div>
										<div class="insertViewcontent">
											<div>
												<input type="hidden" name="mNo" value="${lists.mNo}">
												<label>이름</label>
												<input type="text" name="mName" value="${lists.mName }" disabled="disabled" class="insertViewInput">
											</div>
											<div>
												<label>부서</label>
												<select id="dNo" class="insertViewInput" disabled>
													<c:forEach var="d" items="${dlist}">
														<option value="${d.dNo}">${d.dName}</option>
													</c:forEach>
												</select>
											</div>
											<div>
												<label>직책</label>
												<select id="tNo" class="insertViewInput" disabled>
													<c:forEach var="t" items="${tlist}">
														<option value="${t.tNo}">${t.tName}</option>
													</c:forEach>
												</select>
											</div>
											<div>
												<label>생년월일</label>
												<input type="text" name="mBirth" value="${lists.mBirth}" disabled="disabled" class="insertViewInput">
											</div>
											<div>
												<label>연락처</label>
												<input type="text" name="mTel" value="${lists.mTel }" disabled="disabled" class="insertViewInput">
											</div>
											<div>
												<label>이메일</label>
												<input type="text" name="mEmail"value="${lists.mEmail}" disabled="disabled" class="insertViewInput">
											</div>
											<div>
												<label>주소</label>
												<input type="text" name="mAddr" value="${lists.mAddr}" disabled="disabled" class="insertViewInput">
											</div>
											<div>
												<label>입사일</label>
												<input type="date" name="mEnterday" value="${lists.mEnterday}" disabled="disabled" class="insertViewInput">
											</div>
										</div>
									</div>
								</div>
							</td>
							<td>
								<input type="hidden" name="dNo" value="${lists.dNo.dNo}">
								${lists.dNo.dName}
							</td>
							<td>
								<input type="hidden" name="tNo" value="${lists.tNo.tNo}">
								${lists.tNo.tName}
							</td>
							<td>
								${fn:substring(lists.mTel, 0, 3) }-${fn:substring(lists.mTel, 3, 7) }-${fn:substring(lists.mTel, 7, 11) }
							</td>
							<td>
								<c:if test="${lists.mEmail == null}">
									없음   
								</c:if>
								${lists.mEmail}
							</td>
							<td>
								<c:if test="${lists.mId == null}">
									 없음  
								</c:if>
								${lists.mId}
							</td>
						</tr>
					</c:forEach>	
				</tbody>
			</table>
		</div>
	
</section>
<script>
	
	$(document).on("click", "button.searchButton1", function(){ //이름으로 조회
		var dName = $("#searchInput").val();
		
		if( dName == null){ 
			alert("이름을 입력하세요.");	
			return;
	 	}
		if( dName == ""){ 
			alert("이름을 입력하세요.");	
			return;
	 	}
		$.ajax({
			url:"manage/"+dName,
			type:"get",
			dataType:"json",
			success:function(res){
				console.log(res);
				if(res.length == 0){
					alert("검색결과가 없습니다.");
				}
				paint(res);
			}
		})
		
	})

	$(document).on("click", "button.searchButton", function(){ //부서 조회 
		
		var dNo = $("#divDate2 #dNo").val(); //찾고싶은 제품명이 숫자로 들어옴 
		
		if( dNo == null){ //값이 없으면  
			alert("부서를 선택하세요.");	
			return;
	 	}
		if( dNo == 0){ //선택하세요 선택했으면
			alert("부서를 선택하세요.");	
			return;
	 	}
		$.ajax({
			url:"management/"+dNo,
			type:"get",
			dataType:"json",
			success:function(res){
				console.log(res);
				if(res.length == 0){
					alert("검색결과가 없습니다.");
				}
				paint(res);
				
			}
		})
		
	})

	function category(e){
		if(e.value == 1){
			$("input[name=startday]").css("display", "inline");
			$("#spanMM").css("display", "inline");
			$("#searchInput2").css("display", "inline");
			$("#divDateSearchBtn").css("display", "inline");
			
			$("#divDate2 #dNo").css("display", "none");
			$(".searchButton").css("display", "none");
			
		}else if(e.value == 2){
			$("input[name=startday]").css("display", "none");
			$("#spanMM").css("display", "none");
			$("#searchInput2").css("display", "none");
			$("#divDateSearchBtn").css("display", "none");
			
			$("#divDate2 #dNo").css("display", "inline");
			$("#divDate2 #dNo").css("width", "166px");
			$(".searchButton").css("display", "inline");
			
		}else if(e.value == 12){
			$("input[name=startday]").css("display", "none");
			$("#spanMM").css("display", "none");
			$("#searchInput2").css("display", "none");
			$("#divDateSearchBtn").css("display", "none");
			$("#divDate2 #dNo").css("display", "none");
			$(".searchButton").css("display", "none");
			
		}
		
	}

	//사원삭제 "worker/{mNo}"
	$(document).on("click", ".workerDelete", function(){ //작업자 삭제
		var $tr = $(this).parent().parent().parent().parent().parent();
		var con = confirm("삭제하시겠습니까?");
		if(con == false){
			return;
		}
		
		var mNo = $('input[name=mNo]').val();
		
		var json = {mNo:mNo};
	 	var data = JSON.stringify(json);
		
		$.ajax({
			url:"worker/"+mNo,
			type:"put",
			headers:{
				"Content-Type":"application/json"
			},
			data:data,
			dataType:"json",
			success:function(res){
				console.log(res);
				$(".workerView").fadeOut(300);
				$tr.remove(); 		
				// 순번 다시 셋팅
				
			}
		})
	})
	

	//사람 이름 누르면 상세보기 지원
	$(document).on("click", ".mNameClass", function(){ // 작업자 상세보기 
		$(this).parent().find(".workerView").fadeIn(300); 
	
		var dNo = $(this).parent().parent().find("input[name=dNo]").val(); //dNo 값 다시 넣어주긔
		$(this).parent().parent().find(".workerView").find("#dNo").val(dNo).prop("selected", true);
		
		var tNo = $(this).parent().parent().find("input[name=tNo]").val(); //tNo 값 다시 넣어주긔
		$(this).parent().parent().find(".workerView").find("#tNo").val(tNo).prop("selected", true);
		
		
	})	


	$(document).on("mouseenter", ".mNameClass", function(){
		$(this).parent().parent().css("background-color", "AliceBlue");
		$(this).parent().parent().css("font-size", "17px");
	})
	
	$(document).on("mouseleave", ".mNameClass", function(){
		$(this).parent().parent().css("background-color", "white");
		$(this).parent().parent().css("font-size", "15px");
	})
	
	$(document).on("click", "button#insert", function(){
		document.getElementById("nowDate").valueAsDate = new Date();
		document.getElementById("nowDate2").valueAsDate = new Date();
		$("#insertView").fadeIn(300);
	})
	
			
	$(document).on("click", "#insertViewReset", function(){
		$(this).parents().find("#insertView").fadeOut(300);
	})
	
	
	
	/* function paint(res){
		$("#tableBackGround table tbody").empty();
		
		
		var str = "";
		
		for(var i=0; i<res.mlist.length; i++){
			if(res.mlist[i].mId == null){
				res.mlist[i].mId = "없음";
			}
			if(res.mlist[i].mEmail == null){
				res.mlist[i].mEmail = "없음";
			}
			str+= "<tr><td>"+(i+1)+"</td>";
			str+= "<td><input type='hidden' name='mNo' value'"+res.mlist[i].mNo+"'><div class='mNameClass'>"+res.mlist[i].mName+"</div>";
			str+= "<div class='workerView'><div class='workerViewBackground'><div class='workerViewTitle'>";
			str+= "<span id='spaninsert'>"+res.mlist[i].mName+"님 상세보기</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
			str+= "&nbsp;&nbsp;&nbsp;&nbsp;<button class='workerModify'>수정</button> <button class='worketModifyCF'>수정확인</button> <button class='workerDelete'>삭제</button>";
			str+= " <button class='workerClose'>닫기</button>";
			str+= "</div><div class='insertViewcontent'><div>";
			str+= "<input type='hidden' name='mNo' value='"+res.mlist[i].mNo+"'>";
			str+= "<label>이름</label><input type='text' name='mName' value='"+res.mlist[i].mName+"' disabled='disabled' class='insertViewInput'></div><div>";
			str+= "<label>부서</label><select id='dNo' class='insertViewInput' disabled>";
			for(var i=0; i<res.dlist.length; i++){
				str+= "<option value='"+res.dlist[i].dNo+"'>"+res.dlist[i].dName+"</option>";
			}
			str+= "</select></div>";
			str+= "<div><label>직책</label><select id='tNo' class='insertViewInput' disabled>";
			for(var i=0; i<res.tlist.length; i++){
				str+= "<option value='"+res.tlist[i].tNo+"'>"+res.tlist[i].tName+"</option>";
			}
			str+= "</select></div><div>";
			str+= "<label>생년월일</label><input type='text' name='mBirth' value='"+res.mlist[i].mBirth+"' disabled='disabled' class='insertViewInput'></div>";
			str+= "<div><label>연락처</label><input type='text' name='mTel' value='"+res.mlist[i].mTel+"' disabled='disabled' class='insertViewInput'></div>";
			str+= "<div><label>이메일</label><input type='text' name='mEmail' value='"+res.mlist[i].mEmail+"' disabled='disabled' class='insertViewInput'></div>";
			str+= "<div><label>주소</label><input type='text' name='mAddr' value='"+res.mlist[i].mAddr+"' disabled='disabled' class='insertViewInput'></div>";
			str+= "<div><label>입사일</label><input type='date' name='mEnterday' value='"+res.mlist[i].mEnterday+"' disabled='disabled' class='insertViewInput'></div>";
			
			str+= "</div></div></div>";
			str+= "</td>"; //이름
			
			str+= "<td><input type='hidden' name='dNo' value='"+res.mlist[i].dNo.dNo+"'>"+res.mlist[i].dNo.dName+"</td>"; 
			str+= "<td><input type='hidden' name='tNo' value='"+res.mlist[i].tNo.tNo+"'>"+res.mlist[i].tNo.tName+"</td>";
			//str+= "<td>"+(res[i].mTel).substring(0, 3)+"-"+(res[i].mTel).substring(3, 7)+"-"+(res[i].mTel).substring(7, 11)+"</td>";
			str+= "<td>"+res.mlist[i].mTel+"</td>"
			str+= "<td>"+res.mlist[i].mEmail+"</td>";
			str+= "<td>"+res.mlist[i].mId+"</td>";
		}
		$("#tableBackGround table tbody").append(str);
	} */
	
	function paint(res){
		$("#tableBackGround table tbody").empty();
		
		var str = "";
		
		for(var i=0; i<res.length; i++){
			if(res[i].mId == null){
				res[i].mId = "없음";
			}
			if(res[i].mEmail == null){
				res[i].mEmail = "없음";
			}
			str+= "<tr><td>"+(i+1)+"</td>";
			str+= "<td><input type='hidden' name='mNo' value'"+res[i].mNo+"'><div class='mNameClass'>"+res[i].mName+"</div>";
			str+= "<div class='workerView'><div class='workerViewBackground'><div class='workerViewTitle'>";
			str+= "<span id='spaninsert'>"+res[i].mName+"님 상세보기</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
			str+= "&nbsp;&nbsp;&nbsp;&nbsp;<button class='workerModify'>수정</button> <button class='worketModifyCF'>수정확인</button> <button class='workerDelete'>삭제</button>";
			str+= " <button class='workerClose'>닫기</button>";
			str+= "</div><div class='insertViewcontent'><div>";
			str+= "<input type='hidden' name='mNo' value='"+res[i].mNo+"'>";
			str+= "<label>이름</label><input type='text' name='mName' value='"+res[i].mName+"' disabled='disabled' class='insertViewInput'></div><div>";
			str+= "<label>부서</label><select id='dNo' class='insertViewInput' disabled><option value='"+res[i].dNo.dNo+"'>"+res[i].dNo.dName+"</option></select>";
			str+= "</div><div><label>직책</label><select id='tNo' class='insertViewInput' disabled><option value='"+res[i].tNo.tNo+"'>"+res[i].tNo.tName+"</option></select></div><div>";
			
			str+= "<label>생년월일</label><input type='text' name='mBirth' value='"+res[i].mBirth+"' disabled='disabled' class='insertViewInput'></div>";
			str+= "<div><label>연락처</label><input type='text' name='mTel' value='"+res[i].mTel+"' disabled='disabled' class='insertViewInput'></div>";
			str+= "<div><label>이메일</label><input type='text' name='mEmail' value='"+res[i].mEmail+"' disabled='disabled' class='insertViewInput'></div>";
			str+= "<div><label>주소</label><input type='text' name='mAddr' value='"+res[i].mAddr+"' disabled='disabled' class='insertViewInput'></div>";
			str+= "<div><label>입사일</label><input type='date' name='mEnterday' value='"+res[i].mEnterday+"' disabled='disabled' class='insertViewInput'></div>";
			
			str+= "</div></div></div>";
			str+= "</td>"; //이름
			
			str+= "<td><input type='hidden' name='dNo' value='"+res[i].dNo.dNo+"'>"+res[i].dNo.dName+"</td>"; 
			str+= "<td><input type='hidden' name='tNo' value='"+res[i].tNo.tNo+"'>"+res[i].tNo.tName+"</td>";
			//str+= "<td>"+(res[i].mTel).substring(0, 3)+"-"+(res[i].mTel).substring(3, 7)+"-"+(res[i].mTel).substring(7, 11)+"</td>";
			var mTel = res[i].mTel;
			var Tel = mTel.substring(0, 3)+"-"+mTel.substring(3, 7)+"-"+mTel.substring(7,11);
			str+= "<td>"+Tel+"</td>"
			str+= "<td>"+res[i].mEmail+"</td>";
			str+= "<td>"+res[i].mId+"</td>";
		}
		$("#tableBackGround table tbody").append(str);
	}
	
	
	
	
	$(document).on("click", "#workerSearch", function(){ /* 이름으로 검색 */
		var mName = $("#searchName").val();
		
		if(mName == null){
			alert("검색할 이름을 입력하세요");	
		}
		
		$.ajax({
			url:"worker/"+mName,
			type:"get",
			dataType:"json",
			success:function(res){
				console.log(res);
				if(res.length == 0){
					alert("검색된 정보가 없습니다.");
				}
				paint(res); 
			}
		})
		
	})
	
	
	
			
			
			
			
	$(document).on("click", ".workerClose", function(){ //상세보기 닫기버튼
		$(this).parent().parent().parent().fadeOut(300);
	})		
	
	$(document).on("click", ".workerModify", function(){ //상세보기에서 수정버튼 클릭시
		$(this).parent().parent().find(".insertViewcontent").find(".insertViewInput").attr("disabled", false);
		$(this).parent().parent().find(".insertViewcontent").find("input[name=mName]").attr("disabled", "disabled");
		$(this).parent().parent().find(".insertViewcontent").find(".insertViewInput").css("border", "1px solid #ccc");
		$(this).parent().parent().find(".insertViewcontent").find("input[name=mName]").css("border", "none");
		$(this).css("display", "none");
		$(this).next(".worketModifyCF").css("display", "inline");
		
	})
	
	$(document).on("click", ".worketModifyCF", function(){ //작업자 진짜루짜루짜루 수정
		var $this = $(this);
	
		var mNo = $(this).parent().next().find('input[name=mNo]').val();
		var mName = $(this).parent().next().find('input[name=mName]').val(); //이름
		var dNo = $(this).parent().next().find("#dNo").val(); //부서
		var tNo = $(this).parent().next().find("#tNo").val(); //직책
		var mBirth = $(this).parent().next().find('input[name=mBirth]').val(); //생년월일
		var mTel = $(this).parent().next().find('input[name=mTel]').val();  //연락처
		var mEmail = $(this).parent().next().find('input[name=mEmail]').val(); //이메일
		var mAddr = $(this).parent().next().find('input[name=mAddr]').val(); //주소
		var mEnterday = $(this).parent().next().find('input[name=mEnterday]').val(); //입사일
		
		var json = {mNo:mNo, mName:mName, mBirth:mBirth, dNo:{dNo:dNo}, tNo:{tNo:tNo}, mTel:mTel, mEmail:mEmail, mAddr:mAddr, mEnterday:mEnterday};
	 	var data = JSON.stringify(json);
		
	 	 $.ajax({
				url:"management/modify/"+mNo,
				type:"put",
				headers:{
					"Content-Type":"application/json"
				},
				data:data,
				dataType:"json",
				success:function(res){
					console.log(res);
					//수정확인버튼 없어지고 인풋 비활성화 시키기
					alert("수정되었습니다.");
					$this.parent().parent().parent().fadeOut(1000);
					/* $this.css("display", "none");
					$class.attr("disabled", true); */
					paint(res); 
					
				}
			})
	})
			
</script>
<%@ include file="include/footer.jsp" %>

