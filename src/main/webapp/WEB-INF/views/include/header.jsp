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
	.menu{
		width: 100%;
		height: 50px;
		position: absolute;
		top:10px;
		left:200px;
		margin-top:8px;
	}
	ul{
		list-style: none;
	}
	ul:after{
		display: block;
		content:"";
		clear: both;
	}
	
	.menu>li{
 		float:left;
  		width:6%;
  		height:50px;
  		text-align:center;
  		line-height:50px;
	}
	.tip{
  		position:absolute;
  		top:40px;
 		width:6%;
  		padding:5px;
  		background:#ccc;
  		color:#566;
	}
	.tip a:hover{
  		color:white;
	}
	.tip a{
  		display:block;
  		line-height:30px;
  		border-bottom:1px solid #aaa;
  		margin:5px 0;
  		padding-bottom:10px;
  		text-align:center;
	}
	.tip a:last-child{
  		border-bottom:none;
  		padding-bottom:0;
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
$(function(){
	$(".tip").hide();
	$(".menu li")
	.mouseenter(function(){ $(this).children(".tip").stop().slideDown(300);})
	.mouseleave(function(){ $(this).children(".tip").stop().slideUp(300);})
	$(".menu2 li").click(function(){ $(this).children(".tip").slideToggle(300);})
	
})


</script>
</head>
	<header>
		<div id="headerRelative">
			<div id="logo"><img src="${pageContext.request.contextPath}/resources/images/shlogo.png"></div><!-- 맨 왼쪽에 위치. 회사로고-->
		
				<ul class="menu">
					<li>
						<a href="#">제품관리 </a>
						<ul class="tip">
							<li><a href="#">제품현황</a></li>
							<li><a href="#">제품수정</a></li>
						</ul>
					</li>
					<li>
						<a href="#">입고관리 </a>
						<ul class="tip">
							<li><a href="#">수입검사등록</a></li>
							<li><a href="#">재고확인</a></li>
						</ul>
					</li>
					<li>
						<a href="#">생산관리 </a>
						<ul class="tip">
							<li><a href="#">생산일지</a></li>
							<li><a href="#">생산현황</a></li>
						</ul>
					</li>
					<li>
						<a href="#">출고관리 </a>
						<ul class="tip">
							<li><a href="#">전표등록</a></li>
							<li><a href="#">출고검색</a></li>
						</ul>
					</li>
					<li>
						<a href="#">인사관리 </a>
						<ul class="tip">
							<li><a href="#">부서관리</a></li>
							<li><a href="#">사원별생산현황</a></li>
						</ul>
					</li>
				</ul>

			<div id="mypage"><img src="${pageContext.request.contextPath}/resources/images/mypage.png"></div> <!-- 맨 오른쪽에 위치. 누르면 마이페이지, 등등 -->
		</div>
	</header>
	<div id="headerborder"></div>
<body>
