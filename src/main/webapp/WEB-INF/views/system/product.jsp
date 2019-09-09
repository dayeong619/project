<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
	#sectionDiv{
		width: 100%;
		height: 50px;
	}
</style>
<section>
	<h2>
		생산일지
	</h2>
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
	<div>
		<table>
			<tr>
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
				<td></td>
			</tr>
			<tr>
				<td>라인</td>
				<td>성명</td>
				<td>품명</td>
				<td>작업시간</td>
				<td>생산수량</td>
				<td>가공</td>
				<td>셋업</td>
				<td>소재</td>
				<td>기타</td>
				<td>계</td>
				<td>비고</td>
			</tr>
			
		</table>
	</div>




</section>
<%@ include file="../include/footer.jsp" %>