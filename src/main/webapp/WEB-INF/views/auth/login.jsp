<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp" %>
<style>
	#container{
		width:30%;
		margin:0 auto;
	}
	section{
		width: 100%;
		margin-top:150px;
	}
	.divinp{
		width: 460px;
		height: 70px;
		margin:0 auto;
	}
	div input{
		width:300px;
		height: 50px;
		border:1px solid #ccc;
		padding-left:20px;
	}
	#submitbutton{
		width: 320px;
		height: 50px;
		font-size: 20px;
		background:#B0C4DE;
	}
	#loginmenu{
		font-size: 12px;
		padding-left: 100px;
		
	}
	#loginmenu a{
		color:#4d636f; 
	}
</style>
<section>
	
	<div id="container">
	<form action="loginPost" method="post">
	
		<div class="divinp">
			<input type="text" name="userid" id="userid" placeholder=" 아이디">
		</div>
		<div class="divinp">
			<input type="password" name="userpw" id="userpw"  placeholder=" 비밀번호">
		</div>
		<div class="divinp">
			<input type="submit" value="로그인" id="submitbutton">
		</div>
	</form>
	<div id="loginmenu">
		<a href="">회원가입</a>&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;<a href="">아이디찾기</a>&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;<a href="">비밀번호찾기</a>
	</div>	
	</div>
	<c:if test="${error == 'notMatch'}">
		<script>
			setTimeout(function(){
				alert("아이디와 비밀번호가 일치하지 않습니다.");
			}, 100); 
		</script>
		<%
			session.removeAttribute("error");
		%> 
	</c:if>
	
	
	
	
	
	
	
	
</section>
</body>
</html>