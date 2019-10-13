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
	}
	table td{
		border:1px solid black;
	}
	.tableTrs {
    	background-color: #7d97a5;
    	color: white;
    	font-size:20px;
    	height: 40px;
	}
	thead td:nth-child(1),tbody td:nth-child(1){ 
		width: 100px;
	}
	thead td:nth-child(2), tbody td:nth-child(2){ 
		width: 140px;
	}
	thead td:nth-child(3), tbody td:nth-child(3){ 
		width: 146px;
	}
	thead td:nth-child(4), tbody td:nth-child(4){
		width: 140px;
	}
	thead td:nth-child(5), tbody td:nth-child(5){ 
		width: 140px;
	}
	thead td:nth-child(6), tbody td:nth-child(6){ 
		width: 140px;
	}
	thead td:nth-child(7), tbody td:nth-child(7){ 
		width: 140px;
	}
	thead td:nth-child(8), tbody td:nth-child(8){ 
		width: 140px;
	}
	thead td:nth-child(9), tbody td:nth-child(9){ 
		width: 140px;
	}
	thead td:nth-child(10), tbody td:nth-child(10){ 
		width: 140px;
	}
	
	tbody td{ 
		height: 70px;
	}
	.divTitle{ 
		width:85%;
		height: 50px;
		margin:0 auto;
	}
	.divTitle2 h3{
		margin-left:160px;
		display: inline;
	}
	.divTitle2{ /*중앙정렬하는 div클래스 */
		width: 85%;
		height:50px;
		margin:0 auto;
	}
	#left{
		overflow:hidden;
		float: left;
		width: 100%;
		padding-top:15px;
	}

	
	/* .dddd{ 인풋쓸꺼면 넣으면됨
		height: 60px;
		border:none;
		background-color: white;
		text-align: center;
	} */
		
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
		height: 700px;
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
	#BadnessTable {
		height: 100px;	
	}
	#BadnessTable .BadnessTableInput{
		width: 50px;
	}
	#BadnessTable tr:nth-child(1) td:nth-child(1), #BadnessTable tr:nth-child(1) td:nth-child(2), #BadnessTable tr:nth-child(1) td:nth-child(3){
		width: 70px;
		border:1px solid #ccc;
	}
	#BadnessTable tr:nth-child(1) td:nth-child(4){
		width: 70px;
		border:1px solid #ccc;
	}
	#pBadness{
		display: inline;
	}
	#insertViewTitle #insertViewModify,#insertViewTitle #insertViewModiCon,#insertViewTitle #insertViewDelete{
		display: none;
		width: 60px;
		height: 30px;
		color:white;
		background-color: #365c89;
		border:1px solid #ccc;
	}
</style>
<section>
	<div class="divTitle2" id="left">
		<h3>생산일지</h3>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button id="productInsert">등록</button>
	</div>
	<div class="divTitle">
		<div id="insertView"> <!-- 신규창 -->
		<div id="insertViewBackground">
			<div id="insertViewTitle">
				<span id="spaninsert">생산일지등록</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
				<input type="submit" value="등록" id="insertViewinsert">
				<input type="submit" value="수정" id="insertViewModify">
				<input type="submit" value="수정확인" id="insertViewModiCon">
				<input type="submit" value="삭제" id="insertViewDelete">
				<input type="reset" value="취소" id="insertViewReset">
			</div>
			<div id="insertViewcontent">
				<p>
					<input type="hidden" name="pNo" id="hiddenPno" value="">
					<label>입고일자</label>
					<input type="Date" name="pWorkday" id="nowDate" class="insertViewInput">
				</p>
				<p>
					<label>구분</label>
					<input type="radio" id="radio1" name="pSection" value="true" checked="checked">주간
					&nbsp;&nbsp;&nbsp;
					<input type="radio" id="radio0" name="pSection" value="false">야간
				</p>
				<p>
					<label>작업자</label>
					<select name="mNo" class="insertViewInput" id="mNo">
						<c:forEach items="${mlist }" var="m">
							<option value="${m.mNo }">${m.mName }</option>
						</c:forEach>
					</select>
				</p>
				<p>
					<label>라인</label>
					<select name="lNo" class="insertViewInput">
					<c:forEach var="L" items="${Llist }">
							<option value="${L.lNo }">${L.lLine }</option>
						</c:forEach>
					</select>
				</p>
				<p>
					<label>입고번호</label>
					<!-- <input type="text" name="gName" class="insertViewInput"> -->
					<select class="insertViewInput" name="wNo" id="wNo">
						<c:forEach var="w" items="${wList }">
							<option value="${w.wNo}">W${w.wNo} (${w.gNo.gName})</option>
						</c:forEach>
					</select>
				</p>
				<p>
					<label>작업시간</label>
					<input type="text" name="pWorktime" class="insertViewInput" value="08:00-20:00">
				</p>
				<p>
					<label>생산수량</label>
					<input type="text" name="pQy" class="insertViewInput">
				</p>
				<p>
					<label>비고</label>
					<textarea name="pNote" class="insertViewInput"></textarea>
				</p>
				<p id="pBadness">*불량발생 시 입력</p>
				<table id="BadnessTable">
					<tr>
						<td>가공불량</td>
						<td>셋업불량</td>
						<td>소재불량</td>
						<td>기타불량</td>
					</tr>
					<tr>
						<td><input type="text" name="bProcess" class="BadnessTableInput" value="0"></td>
						<td><input type="text" name="bSetup" class="BadnessTableInput" value="0"></td>
						<td><input type="text" name="bMaterial" class="BadnessTableInput" value="0"></td>
						<td><input type="text" name="bEtc" class="BadnessTableInput" value="0"></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	</div>
		<div class="divTitle2" id="tableBackGround"><!-- 테이블 시작 div -->
			<table>
				<thead>
					<tr class="tableTrs">
						<td>날짜</td>
						<c:forEach var="L" items="${Llist }">
							<td data-lno="${L.lNo }">${L.lLine }</td>
						</c:forEach>
					</tr>
				</thead>
				<tbody id="tableScroll">
					<c:forEach items="${gu }" var="g">
						<tr>
							<td>
								<fmt:formatDate value="${g }" pattern="yyyy-MM-dd" var="gubun"/>
									${gubun }
							</td>
							<c:forEach var="i" begin="1" end="${Llist.size() }">
								<td></td>
							</c:forEach>
							</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
</section>
<script>
	
	$(document).on("click", "tbody td div", function(){ //상세보기 창 띄우기
		$("#insertView").find("#insertViewinsert").css("display", "none");
		$("#insertView").find("#insertViewModify").css("display", "inline");
		$("#insertView").find("#insertViewDelete").css("display", "inline");
		$("#insertView").find("#spaninsert").text("상세보기");
		var $this =$(this).parents().find("#insertView").find("#insertViewcontent");
 		var pNo= $(this).parent().find("#hiddenPNO").val(); //span에 있는 value값
		/* $("#insertView").find("#hiddenPno").val(pno); //띄운창에 spanV값 넣어라 */
		

		$.ajax({
			url:"product/modifypNo/"+pNo,
			type:"get",
			dataType:"json",
			success:function(res){
				console.log(res);
				//검색된 리스트 하나만 와서 뿌려주긔 
				
				$("#insertView").fadeIn(300);
				
				var str="";
				
				$(res).each(function(i, obj) {
					var workDay = new Date(obj.pWorkday);
					var pWorkDay = getFormatDate(workDay); //입고일자
					$this.find("#nowDate").val(pWorkDay); 
					
					var mNo = obj.mNo.mNo;//작업자 이름 다시 넣어줘야됭.
					$this.find("select[name=mNo]").val(mNo).prop("selected", true);
					
					var lNo = obj.lNo.lNo; //라인
					$this.find("select[name=lNo]").val(lNo).prop("selected", true);
					
					var wNo = obj.wNo.gNo.gNo; //제품명
					$this.find("#wNo").val(wNo).prop("selected", true);
					//$this.find("#wNo option:eq(wNo)").prop("selected", true);
					
					var pWorktime = obj.pWorktime; //작업시간
					$this.find("input[name=pWorktime]").val(pWorktime);
					
					var pQy = obj.pQy;//생산수량
					$this.find("input[name=pQy]").val(pQy);
					
					var pNote = obj.pNote;//비고
					$this.find("input[name=pNote]").val(pNote);
					
					var bProcess = obj.bProcess; //가공불량
					$this.find("input[name=bProcess]").val(bProcess);
					
					var bSetup = obj.bSetup; //셋업불량
					$this.find("input[name=bSetup]").val(bSetup);
					
					var bMaterial = obj.bMaterial; //소재불량
					$this.find("input[name=bMaterial]").val(bMaterial);
					
					var bEtc = obj.bEtc; //기타불량
					$this.find("input[name=bEtc]").val(bEtc);
				})
					
				//제품명이 제대로 안들어옴. 10/11 18:37 
				//원인: 처음에 깔리는 제품명이 입고입장에서 받아온 리스트라서 번호가 다름.내가 지금뿌리는 리스트에 입고번호랑 ,,ㅠㅠ 
					
				           
				
				
				
				
				
				
			}
		})
		
		
		
		
		
		
		
	})
	
	$(document).on("click", "#insertViewModify", function(){
		var $this = $(this); //수정버튼
		var $parent =$this.parent().next();
		var pNo = $this.parent().next().find('input[name=pNo]').val(); //검색할 pNo번호 
		
		
		
		
		
		
		
	})
	
	/* $(document).on("click", "#insertViewModify", function(){ //상세보기에서 수정버튼 클릭시
		var $this = $(this);
		var pNo = $this.parent().next().find('input[name=pNo]').val();
		
		var pWorkday = $this.parent().parent().find("#insertViewcontent").find('input[name=pWorkday]').val(); //일자
		var pSection = $this.parent().parent().find("#insertViewcontent").find('input:radio[name=pSection]:checked').val();//구분 주/야
		var mNo = $this.parent().parent().find("#insertViewcontent").find('select[name=mNo]').val(); //성명 번호
		var lNo = $this.parent().parent().find("#insertViewcontent").find('select[name=lNo]').val(); //해당라인
		var wNo = $this.parent().parent().find("#insertViewcontent").find('select[name=wNo]').val(); //픔명 번호
		var pWorktime = $this.parent().parent().find("#insertViewcontent").find('input[name=pWorktime]').val(); //작업시간
		var pQy = $this.parent().parent().find("#insertViewcontent").find('input[name=pQy]').val(); //생산수량
		var pNote = $this.parent().parent().find("#insertViewcontent").find('textarea[name=pNote]').val();//비고
		
		var bProcess = $this.parent().parent().find("#insertViewcontent").find('input[name=bProcess]').val();//가공
		var bSetup = $this.parent().parent().find("#insertViewcontent").find('input[name=bSetup]').val();//셋업
		var bMaterial = $this.parent().parent().find("#insertViewcontent").find('input[name=bMaterial]').val();//소재
		var bEtc = $this.parent().parent().find("#insertViewcontent").find('input[name=bEtc]').val();//기타
		
		var json = {pWorkday:pWorkday, pSection:pSection,mNo:{mNo:mNo},lNo:{lNo:lNo},wNo:{wNo:wNo},pWorktime:pWorktime,pQy:pQy,pNote:pNote,bProcess:bProcess,bSetup:bSetup,bMaterial:bMaterial,bEtc:bEtc}; 
		var data = JSON.stringify(json); 
	
		$.ajax({
			url:"product/modify/"+pNo,
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
				paint(res); 
				
			}
		})
	
	}) */
	
	
	
	
	function refresh(){
		$.ajax({
			url:"product/ListAll",
			type:"get",
			dataType:"json",
			success:function(res){
				console.log(res);
				
				$(res).each(function(i, obj) {
					var workDay = new Date(obj.pWorkday);
					var sWorkDay = getFormatDate(workDay);
					var $tr = $("td:contains('"+sWorkDay+"')").parent();
					var $target = $tr.find("td:eq("+obj.lNo.lNo+")");
					var $input = "<input type='hidden' name='pNo' id='hiddenPNO' value='"+obj.pNo+"'>";
					var $span = "<div>";
					$target.append($input+$span+obj.wNo.gNo.gName+obj.pQy+"<br>");
					//pNo 가 있어서 클릭하면 상세보기로 
				
				})
			}
		})
	}
	
	
	


	$(document).on("mouseenter", "#tableScroll td div", function(){
		$(this).parent().css("background-color", "AliceBlue");
		$(this).parent().find("td:nth-child(1)").css("background-color", "white");
		$(this).css("cursor", "pointer");
		$(this).css("text-decoration", "underline");
	})
	
	$(document).on("mouseleave", "#tableScroll td div", function(){
		$(this).parent().css("background-color", "white");
		$(this).css("text-decoration", "none");
	})

	$(document).on("click", "#productInsert", function(){ // 작업일지 등록할 창 뜨게 해줄께
		document.getElementById("nowDate").valueAsDate = new Date();
		$("#insertView").fadeIn(300);
		
	})
	$(document).on("click", "#insertViewReset", function(){ //작업일 등록할 창에서 취소 눌러
		$("#insertView").fadeOut(300);
	})
	
	$(document).on("click", "#insertViewinsert", function(){ //작업일 등록할 창에서 등록 눌렀어
		var $this = $(this); //등록버튼
		
		var pWorkday = $this.parent().parent().find("#insertViewcontent").find('input[name=pWorkday]').val(); //일자
		var pSection = $this.parent().parent().find("#insertViewcontent").find('input:radio[name=pSection]:checked').val();//구분 주/야
		var mNo = $this.parent().parent().find("#insertViewcontent").find('select[name=mNo]').val(); //성명 번호
		var lNo = $this.parent().parent().find("#insertViewcontent").find('select[name=lNo]').val(); //해당라인
		var wNo = $this.parent().parent().find("#insertViewcontent").find('select[name=wNo]').val(); //픔명 번호
		var pWorktime = $this.parent().parent().find("#insertViewcontent").find('input[name=pWorktime]').val(); //작업시간
		var pQy = $this.parent().parent().find("#insertViewcontent").find('input[name=pQy]').val(); //생산수량
		var pNote = $this.parent().parent().find("#insertViewcontent").find('textarea[name=pNote]').val();//비고
		
		var bProcess = $this.parent().parent().find("#insertViewcontent").find('input[name=bProcess]').val();//가공
		var bSetup = $this.parent().parent().find("#insertViewcontent").find('input[name=bSetup]').val();//셋업
		var bMaterial = $this.parent().parent().find("#insertViewcontent").find('input[name=bMaterial]').val();//소재
		var bEtc = $this.parent().parent().find("#insertViewcontent").find('input[name=bEtc]').val();//기타
		
		var json = {pWorkday:pWorkday, pSection:pSection,mNo:{mNo:mNo},lNo:{lNo:lNo},wNo:{wNo:wNo},pWorktime:pWorktime,pQy:pQy,pNote:pNote,bProcess:bProcess,bSetup:bSetup,bMaterial:bMaterial,bEtc:bEtc}; 
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
				$this.parent().parent().parent().hide();
				$("tbody td").not("tbody td:nth-child(1)").empty();
				
				$(res).each(function(i, obj) {
					var workDay = new Date(obj.pWorkday);
					var sWorkDay = getFormatDate(workDay);
					var $tr = $("td:contains('"+sWorkDay+"')").parent();
					var $target = $tr.find("td:eq("+obj.lNo.lNo+")");
					var $input = "<input type='hidden' name='pNo' value='"+obj.pNo+"'>";
					$target.append($input+obj.wNo.gNo.gName+obj.pQy+"<br>");
				
				})
				
				
			}
		})
		
		
		
		
		
		
		
	})
	
	function getFormatDate(date){ 
		var year = date.getFullYear(); //yyyy 
		var month = (1 + date.getMonth()); //M 
		month = month >= 10 ? month : '0' + month; //month 두자리로 저장
		var day = date.getDate(); //d 
		day = day >= 10 ? day : '0' + day; //day 두자리로 저장 
		return year + '-' + month + '-' + day; 
	}
	
	/* 처음에 리스트 불러오는 아작스  */
	$(document).ready(function(){ 
		refresh();
	})

</script>
<%@ include file="include/footer.jsp" %>








