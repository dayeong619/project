<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<style>
	table{
		clear:both;
		border:1px solid black;
		border-collapse:collapse;
		margin-top:10px;
		width: 900px;
		height: 500px;
		text-align: center;
	}
	table td{
		border:1px solid black;
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
	
	#divTitle{
		height: 30px;
		background-color: #E6FFFF;
	}
	#left{
		overflow:hidden;
		float: left;
		width: 800px;
	}
	#right{
	
	
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
	
</style>
<section>
	<div id="divTitle">
		<div id="left"><h3>생산일지</h3></div>
		<div id="right">
			<button>조회</button>
			<button>신규</button>
			<button>수정</button>
		</div>
	</div>
		
	<div id="divDate">
		생산일자<input type="text">~<input type="text">
		구분		
		<select>
			<option>주/야</option>
			<option>주간</option>
			<option>야간</option>
		</select>
	</div>
	<div id="divDate2">
			거래처
			<select>
				<option>ㅡㅡㅡㅡㅡㅡㅡ</option>
				<option>Y&T</option>
				<option>신라공업</option>
			</select>
			품명
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
			작업자<input type="text"><img src="${pageContext.request.contextPath}/resources/images/Loupe.png" class="imgLoupe">
	</div> 
	<div id="tableScroll">
		<table>
			<tr>
				<td rowspan="2">라인</td>
				<td rowspan="2">성 명</td>
				<td rowspan="2">품 명</td>
				<td rowspan="2">작업 시간</td>
				<td rowspan="2">생산 수량</td>
				<td colspan="5">불량 내역 <span id="tabletdtd">*불량이 있을 경우만 표기</span></td>
				<td rowspan="2">비고</td>
			</tr>
			<tr>
				<td>가공</td>
				<td>셋업</td>
				<td>소재</td>
				<td>기타</td>
				<td>계</td>
			</tr>
				<!-- foreach 돌려서 데이터 있는만큼 보이게 해야됨.. -->
			<tr>
				<td>A</td>
				<td>김다영</td>
				<td>TLE GAMMA</td>
				<td>08:00~20:00</td>
				<td>520</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>B</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>C</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>D</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>E</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>F</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>G</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>H</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>합 계</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			
		</table>
	</div>


</section>















<%@ include file="include/footer.jsp" %>