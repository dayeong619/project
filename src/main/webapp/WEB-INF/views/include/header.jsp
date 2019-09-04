<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@media screen and (min-width:1200px){
	header{
		width: 100%;
		height: 20%;
	}
	#navnav{
		list-style: none;
	}
	#navnav li{
		float: left;
		width: 6%;
		height: 100%;
	}
	a{
		text-decoration: none;
		color:black;
	}
	#logo{
		position: relative;
	}
	#mypage{
		position: absolute;
		top:0;
		right:0;
	}
	#headerborder{
		border: 2px solid #ccc;		
	}
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
</script>
</head>
	<header>
		<div id="logo">서일정밀</div><!-- 맨 왼쪽에 위치. 회사로고-->
		<div id="mypage">※</div> <!-- 맨 오른쪽에 위치. 누르면 마이페이지, 등등 -->
		<nav>
			<ul id="navnav">
				<li><a href="">제품관리 ∨</a></li>
				<li><a href="">입고관리 ∨</a></li>
				<li><a href="">생산관리 ∨</a></li>
				<li><a href="">출고관리 ∨</a></li>
				<li><a href="">인사관리 ∨</a></li>
			</ul>
		</nav>
	</header>
	<div id="headerborder"></div>
<body>
