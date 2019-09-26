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
	.tableTrs td:nth-child(1){ /* 선택 */
		width: 41px;
	}
	.tableTrs td:nth-child(2){ /* No */
		width: 31px;
	}
	.tableTrs td:nth-child(3){ /* 입고일자 */
		width: 169px;
	}
	.tableTrs td:nth-child(4){ /* 품명 */
		width: 169px;
	}
	.tableTrs td:nth-child(5){ /* 입고수량 */
		width: 169px;
	}
	.tableTrs td:nth-child(6){ /* 검사결과 */
		width: 160px;
	}
	.tableTrs #success, .tableTrs #success2{
		width: 80px;
	}
	/* 테이블 경계 지우는거 */
	/* #tableMenu tr:nth-last-child(){ 
		border-bottom:none;
	} */
	/* #tableScroll table tr:first-child{
		border-top:none;
	} */
	
	/* .tableTrs #tdnth5{
		width: 160px;
	} */
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
	table #wmemo1css, table #wmemo2css{ /* 조치내용, 비고 */
		width: 401px;
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
	#tableMenu{
		width: 95%;
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
		padding:20px 400px;
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
		<div id="left"><h3>수입검사관리</h3></div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="ClassButtonTop" id="insert">신규</button>
			<button class="ClassButtonTop" id="modify">수정</button>
			<button class="ClassButtonTop" id="delete">삭제</button>
		<script>
		
			$(document).on("click", "button#modify", function(){ /* 수정 클릭시 인풋창 활성화 */
				var $input = $('input:radio[name=wNo]:checked');
				$input.parent().find(".dddd").removeAttr("disabled");
				var $input = $('input:radio[name=wNo]:checked').val();
			
			
			})	
		
	
			
			$("#insert").click(function(){ /* 신규 클릭시 입력창 나옴  */
				$("#insertView").fadeIn(300);
			})

			
			$(document).on("click", "#insertViewReset", function(){
				$(this).parents().find("#insertView").fadeOut(300);
			})
			
			$(document).on("click", "#insertViewReset", function(){
				$(this).parents().find("#insertView").fadeOut(300);
			})
			
			function repaint(obj){
				$("#tableScroll table").empty();
				
				$(obj).each(function(i,res){
					
					var str="";
					var date = new Date(res.wDay);
					res.wDay = date.getFullYear()+"-"+(1+date.getMonth())+"-"+date.getDate();
					
					str+= "<tr><td><p id='input2css'>"+res.wNo+"</p></td>";
					str+= "<td><input type='radio' id='input1css' name='wNo' value='"+res.wNo+"'></td>"; //입고번호
					str+= "<td>";
					str+= "<input type='text' value='"+res.wDay+"'disabled='disabled' class='dddd'></td>"; //입고일
					str+= "<td><input type='text' class='dddd' value='"+res.gNo.gName+"'disabled='disabled'></td>"; //품명
					str+= "<td><inpyt type='text' class='dddd' value='"+res.wQy+"'disabled='disabled'></td>"; //입고수량
					str+= "<td><inpyt type='text' id='result1' class='dddd' value='"+res.wResult+" == true ? o:a'disabled='disabled'></td>"; //합격
					str+= "<td><inpyt type='text' id='result2' class='dddd' value='"+res.wResult+" == false ? a:o'disabled='disabled'></td>"; //불합격
					if(res.wMemo == null){
						res.wMemo = "";
					}
					if(res.wNote == null){
						res.wNote = "";
					}
					str+= "<td><input type='text' id='wmemo1css' class='dddd' value='"+res.wMemo+"'disabled='disabled'></td>";
					str+= "<td><input type='text' id='wmemo2css' class='dddd' value='"+res.wNote+"'disabled='disabled'></td></tr>";
						
					$("#tableScroll table").append(str);
				})
				
			}
			
			
			 function ListAll(){
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
					
					
					
					
					
					
					
					
					// repaint(res); //다시그림
				})
			
			
			
		</script>
	</div>
	<div id="insertView"> <!-- 신규창 -->
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
		<div class="divTitle2" id="tableBackGround"><!-- 테이블 메뉴 고정 -->
		<table id="tableMenu">
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
				<td id="success">합격</td>
				<td id="success2">불합격</td>
			</tr>
		</table>	
				<!-- foreach 돌려서 데이터 있는만큼 보이게 해야됨.. -->
		<div id="tableScroll">	
			<table>
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
</div>
		
</section>
<%@ include file="include/footer.jsp" %>