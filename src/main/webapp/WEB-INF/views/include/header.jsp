<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서흥정밀</title>
<style>
	body{
		overflow: hidden;
		overflow-y: auto; 
	}
	*{
		margin:0;
		padding:0;
	}
	header{
		width: 100%;
		height:80px;
	}
	#headerRelative{
		width: 100%;
		height: 80px;
		background-color: #3a4b53;
	}
	#logo img{ /* 회사로고  */
		width: 150px;
		height: 40px;
		position: absolute;
		top:15px;
		left:30px;
	}
	.menu{
		width: 100%;
		height: 50px;
		position: absolute;
		top:10px;
		left:200px;
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
  		color:#ccc;
  		font-weight: bold;
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
  		color:#3a4b53;
	}
	.tip a:last-child{
  		border-bottom:none;
  		padding-bottom:0;
	}
	a{
		text-decoration: none;
		color:#ccc ;
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
		height:3px;
		border-bottom: 3px solid #ccc;	
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
			<div id="logo"><a href="${pageContext.request.contextPath}">SH Company</a></div><!-- 맨 왼쪽에 위치. 회사로고-->
				<ul class="menu">
					<li>
						제품관리
						<ul class="tip">
							<li><a href="#" class="aa">제품관리</a></li>
							<li><a href="#"  class="aa">제품현황</a></li>
						</ul>
					</li>
					<li>
						입고관리 
						<ul class="tip">
							<li><a href="${pageContext.request.contextPath}/warehousing" class="aa">수입검사등록</a></li>
							<li><a href="${pageContext.request.contextPath}/warehousingChart" class="aa">입고통계</a></li>
						</ul>
					</li>
					<li>
						생산관리 
						<ul class="tip">
							<li><a href="${pageContext.request.contextPath}/product" class="aa">생산일지</a></li>
							<li><a href="#" class="aa">생산현황</a></li>
						</ul>
					</li>
					<li>
						출고관리 
						<ul class="tip">
							<li><a href="${pageContext.request.contextPath}/shipment" class="aa">출하전표등록</a></li>
							<li><a href="#" class="aa">출고현황</a></li>
						</ul>
					</li>
					<li>
						작업자관리 
						<ul class="tip">
							<li><a href="${pageContext.request.contextPath}/worker" class="aa">작업자관리</a></li>
							<li><a href="${pageContext.request.contextPath}/auth/join" class="aa">사원관리</a></li>
						</ul>
					</li>
				</ul>

			<div id="mypage"><img src="${pageContext.request.contextPath}/resources/images/mypage.png"></div> <!-- 맨 오른쪽에 위치. 누르면 마이페이지, 등등 -->
		</div>
	</header>
	<div id="headerborder"></div>
<body>
