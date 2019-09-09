<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<style>
	#sectionDiv{
		width: 100%;
		height: 50px;
	}
	table{
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
	table 
	#tabletdtd{
		font-size: 10px;
		color:red;
		text-align: right; /* 안먹으면 지우기 */
	}
	#tableScroll{
		/* overflow: scroll; */
	}
</style>
<section>
	<h3>생산일지</h3>
	<div id="sectionDiv">
		<div id="left">
			<p>일자 : 2019년 09월 09일</p>
			<p>구분 : 주/야</p>
		</div>
		<div id="right">
			<button>검색</button>
			<button>등록</button>
			<button>수정</button>
		</div>
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
			<tr>
				<td>A</td>
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