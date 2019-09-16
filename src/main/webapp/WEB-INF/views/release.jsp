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
	table td:nth-child(1){ /* No */
		width: 40px;
	}
	table td:nth-child(2){ /* 출하 일자 */
		width: 150px;
	}
	table td:nth-child(3){ /* lot no */
		width: 150px;
	}
	table td:nth-child(4){ /* 품명 */
		width: 150px;
	}

	table tr{
		border:1px solid black;
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
		<div id="left"><h3>전표등록</h3></div>
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
	<div>
		<table>
			<tr>
				<td>No</td>
				<td>출하일자</td>
				<td>Lot no</td>
				<td>품 명</td>
				<td>작업일</td>
				<td>출하수량</td>
			</tr>
				<!-- foreach 돌려서 데이터 있는만큼 보이게 해야됨.. -->
			<tr>
				<td>1</td>
				<td>2019-09-16</td>
				<td>20190916_01</td>
				<td>TLE GAMMA</td>
				<td>2019-09-01</td>
				<td>1500</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
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