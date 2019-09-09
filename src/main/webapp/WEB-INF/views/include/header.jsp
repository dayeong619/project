<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서흥정밀</title>
<style>

	*{
		margin:0;
		padding:0;
	}
	header{
		width: 100%;
		height:50px;
	}
	#headerRelative{
		width: 100%;
		height: 50px;
	}
	#logo img{
		width: 150px;
		height: 40px;
		position: absolute;
		top:10px;
		left:10px;
	}
	#navnav{
		width: 100%;
		height: 50px;
		list-style:none;
		position: absolute;
		top:10px;
		left:250px;
		margin-top:8px;
	}
	#navnav li{
		float: left;
		width: 5%;
		height: 50px;
	}
	a{
		text-decoration: none;
		color:black;
		font-weight: bold;
	}
	#mypage img{
		width:30px;
		height:30px;
		position: absolute;
		top:10px;
		right:50px;
	}
	
	#headerborder{
		width:100%;
		height:10px;
		border-bottom: 2px solid #ccc;	
	}
	section{
		width: 97%;
		height: 800px;
		margin:0 auto;
	}
	

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
</script>
</head>
	<header>
		<div id="headerRelative">
			<div id="logo"><img src="${pageContext.request.contextPath}/resources/images/shlogo.png"></div><!-- 맨 왼쪽에 위치. 회사로고-->
		
				<ul id="navnav">
					<li><a href="">제품관리 ∨</a></li>
					<li><a href="">입고관리 ∨</a></li>
					<li><a href="">생산관리 ∨</a></li>
					<li><a href="">출고관리 ∨</a></li>
					<li><a href="">인사관리 ∨</a></li>
				</ul>

			<div id="mypage"><img src="${pageContext.request.contextPath}/resources/images/mypage.png"></div> <!-- 맨 오른쪽에 위치. 누르면 마이페이지, 등등 -->
		</div>
	</header>
	<div id="headerborder"></div>
<body>
