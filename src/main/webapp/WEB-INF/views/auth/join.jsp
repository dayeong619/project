<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp" %>
<style>
	#container{
		width:40%;
		margin:0 auto;
	}
	section{
		width: 100%;
		margin-top:50px;
	}
	div label{
		display:inline-block;
		width: 150px;
		height: 50px;
	}
	div input, div select{
		width:230px;
		height: 30px;
		border:1px solid #ccc;
	}
	div select{
		width: 230px;
	}
	#submitbutton{
		width: 230px;
		height: 50px;
		margin-left:160px;
		font-size:15px;
		background: #B0C4DE;
	}
	button{
		width: 70px;
		height: 30px;
	}
	#divInput{
		position: relative;
	}
	#divInput #idck{
		position:absolute;
		top:0;
		left: 390px;
	}
	#divInput #span1{
		position:absolute;
		top:35px;
		left:335px;
		font-size: 12px;
		color:#ccc;
	}
	#divInput2{
		position: relative;
	}
	#span2{
		position:absolute;
		top:35px;
		left:335px;
		font-size: 12px;
		color:#ccc;
	}
	input::placeholder{
		font-size: 13px;
	}
</style>
<section>
	<div id="container">
	<form action="join" method="post" id="f1" >
		<div id="divInput">
			<label>아이디</label>
			<input type="text" name="mId" id="userid"> <!-- <button type="button" id="idck">중복체크</button><br> -->
			<span id="span1">4~20자의 영문,숫자만 사용 가능</span>
		</div>
		<div id="divInput2">
			<label>비밀번호</label>
			<input type="password" name="mPw" id="userpw">
			<span id="span2">4~20자의 영문,숫자만 사용 가능</span>
		</div>
		<div>
			<label>이름</label>
			<input type="text" name="mName">
		</div>
		<div>
			<label>생년월일</label>
			<input type="text" name="mBirth" placeholder=" 8자리 ex) 19910619">
		</div>
		<div>
			<label>이메일</label>
			<input type="text" name="mEmail">
		</div>
		<div>
			<label>연락처</label>
			<input type="text" name="mTel" placeholder=" 11자리 ex) 01055431491">
		</div>
		<div>
			<label>입사일</label>
			<input type="date" name="mEnterday"  placeholder=" 8자리 ex) 20190918">
		</div>
		<div>
			<label>담당부서</label>
			<select name="dNo">
				<c:forEach var="list" items="${dlist}">
					<option>${list.dNo}</option>
				</c:forEach>
			</select>
		</div>
		<div>
			<label>담당직책</label>
			<select name="tNo">
				<c:forEach var="lists" items="${tlist}">
					<option>${lists.tNo}</option>
				</c:forEach>
			</select>
		</div>
		<div>
			<input type="submit" value="회원가입" id="submitbutton">
		</div>
	</form>
	</div>
	
</section>
</body>
</html>