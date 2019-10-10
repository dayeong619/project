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
		width: 90%;
	}
	tbody tr{
		background-color: white;
		height: 30px;
	}
	table td{
		border:1px solid black;
	}
	thead td:nth-child(1), tbody td:nth-child(1){ /* 이름 */
		width: 80px;
	}
	thead td:nth-child(2), tbody td:nth-child(2){ /* 생년월일 */
		width: 140px;
	}
	thead td:nth-child(3), tbody td:nth-child(3){ /* 연락처 */
		width: 140px;
	}
	thead td:nth-child(4), tbody td:nth-child(4){ /* 주소 */
		width: 400px;
	}
	thead td:nth-child(5), tbody td:nth-child(5){ /* 작업자등록일 */
		width: 140px;
	}
	thead td:nth-child(6), tbody td:nth-child(6){ /* 작업자인증일 */
		width: 140px;
	}
	thead td:nth-child(7), tbody td:nth-child(7){ /* 생산실적 */
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
		height: 500px;
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
	
	
	
</style>
<section>
	<div class="divTitle2">
		<div>
			<h3>작업자현황</h3>
			생산팀만 보임
		</div>
	</div>
	<div class="divTitle">
		<div id="sectionOne">
			<div id="divDate2">
				<div id="left">
					이름검색 <input type="text" name="pName" id="searchName"><button id="workerSearch">검색</button>
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
					<input type="text" name="mName" class="insertViewInput">
				</div>
				<div>
					<label>생년월일</label>
					<input type="text" name="mBirth" placeholder=" 8자리 ex) 19910619" class="insertViewInput">
				</div>
				<div>
					<label>연락처</label>
					<input type="text" name="mTel" placeholder=" 11자리 ex) 01055431491" class="insertViewInput">
				</div>
				<div>
					<label>주소</label>
					<input type="text" name="mAddr" placeholder=" 대구광역시 서구 국채보상로" class="insertViewInput">
				</div>
				<div>
					<label>등록일</label>
					<input type="date" name="mEnterday" id="nowDate" placeholder=" 8자리 ex) 20190918">
				</div>
				<div>
					<label>작업자인증일</label>
					<input type="date" name="mConfirm" id="nowDate2" placeholder=" 8자리 ex) 20190918">
				</div>
			</div>
		</div>
	</div>
		<div class="divTitle2" id="tableBackGround"><!-- 테이블 시작 테이블 시작 테이블 시작 -->
			<table>
				<thead>
					<tr class="tableTrs">
						<td rowspan="2">이름</td>
						<td rowspan="2">생년월일</td>
						<td rowspan="2">연락처</td>
						<td rowspan="2">주소</td>
						<td rowspan="2">작업자등록일</td>
						<td rowspan="2">작업자인증일<br><span id="oneYear">(1년마다 갱신)</span></td>
						<td rowspan="2">생산실적</td>
					</tr>
				</thead>
				<tbody id="tableScroll">
					<c:forEach var="lists" items="${list}">
						<tr>
							<td>
								<input type="hidden" name="mNo" value="${lists.mNo}">
								<div class="mNameClass">${lists.mName}</div>
								
		<div class="workerView"> <!-- 작업자볼래작업자볼래작업자볼래작업자볼래작업자볼래작업자볼래작업자볼래작업자볼래작업자볼래 -->
		<div class="workerViewBackground">
			<div class="workerViewTitle">
			
				<span id="spaninsert2">${lists.mName}님 상세보기</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;
				<button class="workerModify">수정</button>
				<button class="worketModifyCF">수정확인</button>
				<button class="workerDelete">삭제</button>
				<button class="workerClose">닫기</button>
			</div>
			<div class="insertViewcontent">
				<div>
					<label>이름</label>
					<input type="text" name="mName" value="${lists.mName }" disabled="disabled" class="insertViewInput">
					<input type="hidden" name="mNo" value="${lists.mNo}">
				</div>
				<div>
					<label>생년월일</label>
					<input type="text" name="mBirth" value="${lists.mBirth }" disabled="disabled" class="insertViewInput">
				</div>
				<div>
					<label>연락처</label>
					<input type="text" name="mTel" value="${lists.mTel }" disabled="disabled" class="insertViewInput">
				</div>
				<div>
					<label>주소</label>
					<input type="text" name="mAddr" value="${lists.mAddr }" disabled="disabled" class="insertViewInput">
				</div>
				<div>
					<label>등록일</label>
					<input type="date" name="mEnterday" id="nowDate" value="${lists.mEnterday}" disabled="disabled" class="insertViewInput">
				</div>
				<div>
					<label>작업자인증일</label>
					<input type="date" name="mConfirm" id="nowDate2" value="${lists.mConfirm}" disabled="disabled" class="insertViewInput">
				</div>
			</div>
		</div>
	</div>
				
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
						</tr>
					</c:forEach>	
				</tbody>
			</table>
		</div>
	
</section>
<script>
	$(".mNameClass").mouseenter(function() {
		$(this).parent().parent().css("background-color", "AliceBlue");
		$(this).parent().parent().css("font-size", "17px");
	
	})
	$(".mNameClass").mouseleave(function() {
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
	
	function paint(res){
		$("#tableBackGround table tbody").empty();
		
		var str = "";
		
		
		for(var i=0; i<res.length; i++){
			str+= "<tr><td><input type='hidden' name='mNo' value'"+res[i].mNo+"'><div class='mNameClass'>"+res[i].mName+"</div>";
			str+= "<div class='workerView'><div class='workerViewBackground'><div class='workerViewTitle'>";
			str+= "<span id='spaninsert'>"+res[i].mName+"님 상세보기</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
			str+= "&nbsp;&nbsp;&nbsp;&nbsp;<button class='workerModify'>수정</button> <button class='worketModifyCF'>수정확인</button> <button class='workerDelete'>삭제</button>";
			str+= " <button class='workerClose'>닫기</button>";
			str+= "</div><div class='insertViewcontent'><div>";
			str+= "<label>이름</label><input type='text' name='mName' value='"+res[i].mName+"' disabled='disabled' class='insertViewInput'>";
			str+= "<input type='hidden' name='mNo' value='"+res[i].mNo+"' class='insertViewInput'></div><div>";
			str+= "<label>생년월일</label><input type='text' name='mBirth' value='"+res[i].mBirth+"' disabled='disabled' class='insertViewInput'></div>";
			str+= "<div><label>연락처</label><input type='text' name='mTel' value='"+res[i].mTel+"' disabled='disabled' class='insertViewInput'></div>";
			str+= "<div><label>주소</label><input type='text' name='mAddr' value='"+res[i].mAddr+"' disabled='disabled' class='insertViewInput'></div>";
			str+= "<div><label>등록일</label><input type='date' name='mEnterday' id='nowDate' value='"+res[i].mEnterday+"' disabled='disabled' class='insertViewInput'></div>";
			str+= "<div><label>작업자인증일</label><input type='date' name='mConfirm' id='nowDate2' value='"+res[i].mConfirm+"' disabled='disabled' class='insertViewInput'></div>";
			str+= "</div></div></div>";
			str+= "</td>"; //이름
			str+= "<td>"+res[i].mBirth+"</td>";  //생년월일
			str+= "<td>"+res[i].mTel+"</td>"; //연락처
			str+= "<td>"+res[i].mAddr+"</td>"; //주소
			str+= "<td>"+res[i].mEnterday+"</td>"; //작업자등록일
			str+= "<td>"+res[i].mConfirm+"</td>"; //작업자인증일
			str+= "<td><button class='tnProductResult'>보기</td></tr>"; //생산실적
				
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
	
	
	$(document).on("click", "#insertViewinsert", function(){ 			/*작업자등록창에서 등록*/
				var mName = $('input[name=mName]').val(); 
				var mBirth = $('input[name=mBirth]').val(); 
				var mTel = $('input[name=mTel]').val(); 
				var mAddr = $('input[name=mAddr]').val();
				var mEnterday = $('input[name=mEnterday]').val(); 
				var mConfirm = $('input[name=mConfirm]').val(); 
							
				var json = {mName:mName, mBirth:mBirth, mTel:mTel, mAddr:mAddr, mEnterday:mEnterday, mConfirm:mConfirm};
				var data = JSON.stringify(json);
				// gNo(객체이름):{"키":"값"}
				
				$.ajax({
					url:"workerinsert",
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
						
						paint(res); 
					}
				})
	})
			
			
			
	// 작업자 상세보기		
	$(document).on("click", ".workerClose", function(){ //닫기버튼
		$(this).parent().parent().parent().fadeOut(300);
	})		
			
			
	$(document).on("click", ".mNameClass", function(){ // 작업자 상세보기 
		$(this).parent().find(".workerView").fadeIn(300); 
	})	
	
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
				$tr.remove(); 	//테이블에서 지우기					
			}
		})
	})
	
	$(document).on("click", ".workerModify", function(){ //작업자 수정
		$(this).parent().parent().find(".insertViewcontent").find(".insertViewInput").attr("disabled", false);
		$(this).css("display", "none");
		$(this).next(".worketModifyCF").css("display", "inline");
		
	})
	
	$(document).on("click", ".worketModifyCF", function(){ //작업자 진짜루짜루짜루 수정
		var $this = $(this);
		
		var mNo = $(this).parent().next().find('input[name=mNo]').val();
		var mName = $(this).parent().next().find('input[name=mName]').val(); 
		var mBirth = $(this).parent().next().find('input[name=mBirth]').val(); 
		var mTel = $(this).parent().next().find('input[name=mTel]').val(); 
		var mAddr = $(this).parent().next().find('input[name=mAddr]').val();
		var mEnterday = $(this).parent().next().find('input[name=mEnterday]').val(); 
		var mConfirm = $(this).parent().next().find('input[name=mConfirm]').val();
		
		var json = {mNo:mNo, mName:mName, mBirth:mBirth, mTel:mTel, mAddr:mAddr, mEnterday:mEnterday, mConfirm:mConfirm};
	 	var data = JSON.stringify(json);
		
	 	 $.ajax({
				url:"worker/modify/"+mNo,
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

