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
	}
	#right{
	
	
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



</style>
<section>
	<div class="divTitle2" id="">
		<div id="left"><h3>수입검사관리</h3></div>
		<div id="right">
			<button>조회</button>
			<button>신규</button>
			<button id="modify">수정</button>
		</div>
		<script>
			$("#modify").click(function(){
				$(".dddd").removeAttr("disabled");
			})
		</script>
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
			<input type="text" id="workname"><%-- <img src="${pageContext.request.contextPath}/resources/images/Loupe.png" class="imgLoupe"> --%>
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