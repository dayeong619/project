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
		background-color: white;
		overflow-y:auto; /* 세로축만 스크롤 나와랏 */
		overflow-x:hidden;
		height: 605px;
		position:absolute;
		top:100;
		left:50;
	}
	
	table td{
		border:1px solid black;
	}
	
	thead td:nth-child(1), tbody td:nth-child(1){ /* 선택 */
		width: 40px;
	}
	thead td:nth-child(2), tbody td:nth-child(2){ /* No */
		width: 40px;
	}
	thead td:nth-child(3), tbody td:nth-child(3){ /* 입고일자 */
		width: 240px;
	}
	thead td:nth-child(4), tbody td:nth-child(4){ /* 품명 */
		width: 120px;
	}
	thead td:nth-child(5), tbody td:nth-child(5){ /* 입고수량 */
		width: 120px;
	}
	thead td:nth-child(6), tbody td:nth-child(6){ /* 번호 */
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
		width:46%;
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
		width: 550px;
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
	#insertViewModify{
		display: none;
		width: 60px;
		height: 30px;
		color:black;
		background-color:white;
		border:1px solid #ccc;
	}
</style>
<section>

	<div class="divTitle2">
		<div id="left"><h3>제품현황</h3></div>
			<button class="ClassButtonTop" id="insert">신규</button>
		<div id="insertView"> <!-- 신규창 -->
		<div id="insertViewBackground">
			<div id="insertViewTitle">
				<span id="spaninsert">제품등록</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="등록" id="insertViewinsert">
				<input type="submit" value="수정" id="insertViewModify">
				<input type="reset" value="취소" id="insertViewReset">
			</div>
			<div id="insertViewcontent">
				<p>
					<label>등록일</label>
					<input type="Date" name="gDay" id="nowDate" class="insertViewInput">
				</p>
				<p>
					<label>제품명</label>
					<input type="text" name="gName" class="insertViewInput">
				</p>
				<p>
					<label>공급사</label>
					<input type="text" name="gLocation" class="insertViewInput">
				</p>
				<p>
					<label>고객사</label>
					<input type="text" name="gClient" class="insertViewInput">
				</p>
				
			</div>
		</div>
	</div>
			<button class="ClassButtonTop" id="delete">삭제</button>
			<button class="ClassButtonTop" id="modify">수정</button>
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
						<td>순번</td>
						<td><input type="radio" disabled="disabled"></td>
						<td>제품명</td>
						<td>공급사</td>
						<td>고객사</td>
						<td>제품등록일</td>
					</tr>
				</thead>
				<tbody id="tableScroll">
				<c:forEach items="${glist }" var="g">
					<c:set var="sum" value="${sum+1}"/>
					<tr>
						<td>
								${sum}
						</td>
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
				str+= "<td>"+(i+1)+"</td>";
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
						alert("삭제할 제품을 선택하세요.");	
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
		//제품등록창에서 취소버튼
		$(document).on("click", "#insertViewReset", function(){
				$(this).parents().find("#insertView").fadeOut(300);
			})
			
		//제품 등록
		$(document).on("click", "button#insert", function(){
			document.getElementById("nowDate").valueAsDate = new Date();
			$("#insertView").fadeIn(300);
		})
		$(document).on("click", "#insertViewinsert", function(){
			var gDay = $(this).parent().parent().find("#insertViewcontent").find('input[name=gDay]').val();
			var gName = $(this).parent().parent().find("#insertViewcontent").find('input[name=gName]').val();
			var gLocation = $(this).parent().parent().find("#insertViewcontent").find('input[name=gLocation]').val();
			var gClient = $(this).parent().parent().find("#insertViewcontent").find('input[name=gClient]').val();
			var json = {gDay:gDay, gName:gName, gLocation:gLocation, gClient:gClient};
			var data = JSON.stringify(json);
			
			$.ajax({
				url:"goodsinsert",
				type:"post",
				headers:{
					"Content-Type":"application/json"
				},
				data:data,
				dataType:"json",
				success:function(res){
					console.log(res); 
					$("#insertView").find(".insertViewInput").val("");
					$("#insertView").hide();
					
					 repaint(res);
				}
			})
			
		})
		//제품번호로 검색
		//수정 버튼 누르면 gNo가 들어와서 셀렉트해서 결과 res로 수정창 만들기
		$(document).on("click", "button#modify", function(){ 
			var gNo = $('input:radio[name=gNo]:checked').val();
			var $this = $(this);
			var $insertView = $this.parent().find("#insertView"); //나타날 수정창
			var BtnInsertHidden = $this.parent().find("#insertViewinsert").css("display", "none"); //숨겨야될 등록버튼
			var BtnModifyShow = $this.parent().find("#insertViewModify").css("display", "inline"); //보여야되는 수정버튼
			
			if( gNo == null){ //라디오 체크하지 않고 삭제를 눌렀을 때 
				alert("수정할 제품을 선택하세요.");	
				return;
		 	}
			
			$.ajax({
				url:"goods/"+gNo,
				type:"get",
				dataType:"json",
				success:function(res){
					console.log(res); 
					BtnInsertHidden
					BtnModifyShow
					$insertView.fadeIn(300);
					var str="";
					$(res).each(function(i, item){
						var date = new Date(res[i].gDay);
						gDay = date.getFullYear()+"-"+("0"+(1+date.getMonth())).slice(-2)+"-"+("0"+date.getDate()).slice(-2);
						$insertView.find("input[name=gDay]").val(gDay);
						
						var gName = res[i].gName;
						$insertView.find("input[name=gName]").val(gName);
						
						var gLocation = res[i].gLocation;
						$insertView.find("input[name=gLocation]").val(gLocation);
						
						var gClient = res[i].gClient;
						$insertView.find("input[name=gClient]").val(gClient);
						str+="<input type='hidden' name='gNo' value='"+res[i].gNo+"'>";
					})
					$insertView.find("#spaninsert").text("제품수정");
					$insertView.find("#insertViewcontent").prepend(str); //gNo숨기기
				}
			})
		})
		
		//제품 수정
		$(document).on("click", "#insertViewModify", function(){ 
			var gNo = $(this).parent().parent().find("#insertViewcontent").find('input[name=gNo]').val();
			var gDay = $(this).parent().parent().find("#insertViewcontent").find('input[name=gDay]').val();
			var gName = $(this).parent().parent().find("#insertViewcontent").find('input[name=gName]').val();
			var gLocation = $(this).parent().parent().find("#insertViewcontent").find('input[name=gLocation]').val();
			var gClient = $(this).parent().parent().find("#insertViewcontent").find('input[name=gClient]').val();
			var json = {gDay:gDay, gName:gName, gLocation:gLocation, gClient:gClient};
			var data = JSON.stringify(json);
			
			$.ajax({
				url: "goods/update/"+gNo,
				type: "put",
				headers:{
					"Content-Type":"application/json"
				},
				data:data,
				dataType:"json",
				success:function(res){
					console.log(res);
					$("#insertView").hide();
					repaint(res);
				}
			})		
					
					//창 숨기기 
					// repaint(res); 다시그림
		})

		
						
						
							
</script>
<%@ include file="include/footer.jsp" %>





