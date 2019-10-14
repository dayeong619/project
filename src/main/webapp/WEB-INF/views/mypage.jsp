<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="include/header.jsp" %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5 {font-family: "Open Sans", sans-serif; color:#4d636f;}
	#warehousingTable, #shipmentTable{
		width:200px;
		height:200px;
		font-size: 10px;
		border-collapse: collapse;
	}
	#warehousingTable tbody{
		height: 100px;
		overflow: auto;
	}
	#wareFont, #wareFont2{
		color:#4d636f;
		font-weight: bold;
		margin-top: 10px;
		margin-bottom: 10px;
	}
	#insertView{ /* 나의정보 나의정보 ,ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */
		z-index:100;
		position:fixed;
		left:0;
		top:80px;
		width:100%;
		height: 87%;
		background: rgba(0,0,0,0.7);
		padding:60px 500px;
		display: none;
		color:#D5D5D5;
	}
	#insertViewBackground{
		width: 600px;
		height: 650px;
		background-color: white;
		color:black;
	}
	#spaninsert{
		font-size: 20px;
		font-weight: bold;
		margin-right: 250px;
	}
	#insertViewTitle{
		height: 50px;
		padding-left:10px;
		padding-top:10px;
	}
	#insertView #insertViewModify2{
		display: none;
		width: 70px;
		height: 30px;
		color:white;
		background-color: #365c89;
		border:1px solid #ccc;
	}
	#insertView #insertViewModify{
		width: 60px;
		height: 30px;
		color:white;
		background-color: #365c89;
		border:1px solid #ccc;
	}
	#insertView #insertViewReset{
		width: 60px;
		height: 30px;
		color:black;
		background-color:white;
		border:1px solid #ccc;
	}
	#insertView label{
		width: 200px;
		height: 50px;
		display:inline-block;
		padding-left: 90px;	
		font-weight: bold;
	}
	#insertView .insertViewInput{
		width:200px; 
		height: 30px;
		border:none;
		background-color: white;
	}
	#insertViewcontent{
		width: 570px;
		margin-left:10px;
		padding-left:10px;	
		border-top:2px solid #ccc;	
		border-bottom:2px solid #ccc;	
	}
	#insertViewcontent select{
		width: 204px;
		height: 34px;
		
	}
	
	.divDIV{
		width: 120px;
		height: 80px;
		float: left;
		border: 1px solid #ccc;
		margin-right: 10px;
		margin-bottom:10px;
		text-align: center;
	}
	#wawawa{
		overflow: hidden;
	}
	.divDIV .p{
		background-color: #becbd2;
		height: 30px;
		font-size: 17px;
		line-height: 30px;
	}
	
	
	
</style>
<body class="w3-theme-l5">

<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    <div class="w3-col m3">
      <!-- Profile -->
      <div class="w3-card w3-round w3-white">
        <div class="w3-container">
       	 <c:forEach var="mlists" items="${mlist }">
	         <h4 class="w3-center">
	         	<c:if test="${Auth.tNo == '4' }">
	         		관리자님, 반갑습니다.
	         	</c:if>
	         	<c:if test="${Auth.tNo != '4' }">
	         		${mlists.mId}님의 정보
	         	</c:if>
	         	
	         </h4>
	         <p class="w3-center">
	        	 <img src="${pageContext.request.contextPath}/resources/images/Man.png" class="w3-circle" style="height:106px;width:106px" alt="Avatar">
	         	<%-- <c:if test="${mlists.mPhoto == null }">
					사진없음			         	
	         	</c:if>
	         	<c:if test="${mlists.mPhoto != null }">
	         		<img src="${pageContext.request.contextPath}/resources/images/${mlists.mPhoto}" class="w3-circle" style="height:106px;width:106px" alt="Avatar">
	         	</c:if> --%>
	         </p>
	         <hr>
	         <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> ${mlists.mName}</p>
	         <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> 
	        	 ${mlists.dNo.dName} | ${mlists.tNo.tName}
	         </p>
	         <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> ${mlists.mEnterday }</p>
       	 </c:forEach>
        </div>
      </div>
      <br>
      
      <!-- Accordion -->
      <div class="w3-card w3-round">
        <div class="w3-white"><!--나의정보 누르면 내 정보 보이는 창 띄우기.  -->
          <button id="MyinfoBtn" onclick="myFunction('Demo1')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-circle-o-notch fa-fw w3-margin-right"></i>나의 정보</button>
          <div id="insertView"> <!-- 신규창  신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창 신규창-->
			<div id="insertViewBackground">
				<div id="insertViewTitle">
					<span id="spaninsert">&nbsp;&nbsp;&nbsp;${Auth.userid}님의 정보</span>
					<input type="submit" value="수정" id="insertViewModify">
					<input type="submit" value="수정확인" id="insertViewModify2">
					<input type="reset" value="닫기" id="insertViewReset">
				</div>
				<div id="insertViewcontent">
					<c:forEach items="${mlist }" var="m">
					<p>
						<input type="hidden" name="mNo" value="${m.mNo }">
						<label>이름</label>
						<input type="text" name="mName" value="${m.mName }" class="insertViewInput" disabled="disabled">
					</p>
					<p>
						<label>부서</label>
						<input type="text" name="dNo" value="${m.dNo.dName }" class="insertViewInput" disabled="disabled">
					</p>
					<p>
						<label>직책</label>
						<input type="text" name="tNo" value="${m.tNo.tName }" class="insertViewInput" disabled="disabled">
					</p>
					<p>
						<label>입사일</label>
						<input type="date" name="mEnterday" value="${m.mEnterday }" class="insertViewInput" disabled="disabled">
					</p>
					<p>
						<label>아이디</label>
						<input type="text" name="mId" value="${m.mId }" class="insertViewInput" disabled="disabled">
					</p>
					<p>
						<label>비밀번호</label>
						<input type="password" name="mPw" value="${m.mPw}" class="insertViewInput" disabled="disabled">
					</p>
					<p>
						<label>연락처</label>
						<input type="text" name="mTel" value="${m.mTel }" class="insertViewInput" disabled="disabled">
					</p>
					<p>
						<label>이메일</label>
						<input type="text" name="mEmail" value="${m.mEmail }" class="insertViewInput" disabled="disabled">
					</p>
					<p>
						<label>생년월일</label>
						<input type="text" name="mBirth" value="${m.mBirth }" class="insertViewInput" disabled="disabled">
					</p>
					<p>
						<label>주소</label>
						<input type="text" name="mAddr" value="${m.mAddr }" class="insertViewInput" disabled="disabled">
					</p>
					</c:forEach>
				</div>
			</div>
		</div>
          <button id="logOutBtn" onclick="myFunction('Demo2')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-calendar-check-o fa-fw w3-margin-right"></i>로그아웃</button>
          <script>
          	$("#logOutBtn").click(function(){
          		if(confirm("로그아웃 하시겠습니까?")){
          			location.href="auth/logout";
          		}
          	})
          	
          	$("#MyinfoBtn").click(function(){
          		$("#insertView").fadeIn(300);
          	})
          	$(document).on("click", "#insertViewReset", function(){
          		$("#insertView").fadeOut(300);
          		
          	})
          	$(document).on("click", "#insertViewModify", function(){
          		var $this = $(this);
          		$this.next().css("display", "inline"); //수정확인버튼 보이긔
          		$this.hide(); //수정버튼 숨기기
          		
          		//수정할 인풋만 활성화시키기 
          		var mPW = $this.parent().next().find("input[name=mPw]").attr("disabled", false);
          		mPW.css("border", "1px solid #ccc");
          		var mTel = $this.parent().next().find("input[name=mTel]").attr("disabled", false);
          		mTel.css("border", "1px solid #ccc");
          		var mEmail = $this.parent().next().find("input[name=mEmail]").attr("disabled", false);
          		mEmail.css("border", "1px solid #ccc");
          		var mBirth = $this.parent().next().find("input[name=mBirth]").attr("disabled", false);
          		mBirth.css("border", "1px solid #ccc");
          		var mAddr = $this.parent().next().find("input[name=mAddr]").attr("disabled", false);
          		mAddr.css("border", "1px solid #ccc");
          	})
          	$(document).on("click", "#insertViewModify2", function(){
          		var $this = $(this);
          		
          		var mNo = $this.parent().next().find("input[name=mNo]").val();
          		var mId = $this.parent().next().find("input[name=mId]").val();
          		var mPW = $this.parent().next().find("input[name=mPw]").val();
          		var mTel = $this.parent().next().find("input[name=mTel]").val();
          		var mEmail = $this.parent().next().find("input[name=mEmail]").val();
          		var mBirth = $this.parent().next().find("input[name=mBirth]").val();
          		var mAddr = $this.parent().next().find("input[name=mAddr]").val();
          		var json = {mPW:mPW, mTel:mTel, mEmail:mEmail, mBirth:mBirth, mAddr:mAddr};
    			var data = JSON.stringify(json);
    			
          		$.ajax({
    				url: "mypage/modify/"+mNo,
    				/* url: "mypage/modify/"+mNo+"/"+mId, */
    				type: "put",
    				headers:{
    					"Content-Type":"application/json"
    				},
    				data:data,
    				dataType:"json",
    				success:function(res){
    					console.log(res);
    					$this.hide();
    					$("#insertView").hide();
    					alert("정보가 수정되었습니다.");
    					
    					 //수정하고나서 창닫을껀지 아니면 창안닫고 수정된정보보여줄껀지
    				}
    			})	
          		
          	})
          </script>
         <!--  <button onclick="myFunction('Demo3')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-users fa-fw w3-margin-right"></i> My Photos</button> -->
          <div id="Demo3" class="w3-hide w3-container">
         <div class="w3-row-padding">
         <br>
           <div class="w3-half">
             <img src="/w3images/lights.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/nature.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/mountains.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/forest.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/nature.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/snow.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
         </div>
          </div>
        </div>      
      </div>
      <br>
      
      <!-- Interests --> 
      <div class="w3-card w3-round w3-white w3-hide-small">
        <div class="w3-container">
          <p>Interests</p>
          <p>
            <span class="w3-tag w3-small w3-theme-d5">News</span>
            <span class="w3-tag w3-small w3-theme-d4">W3Schools</span>
            <span class="w3-tag w3-small w3-theme-d3">Labels</span>
            <span class="w3-tag w3-small w3-theme-d2">Games</span>
            <span class="w3-tag w3-small w3-theme-d1">Friends</span>
            <span class="w3-tag w3-small w3-theme">Games</span>
            <span class="w3-tag w3-small w3-theme-l1">Friends</span>
            <span class="w3-tag w3-small w3-theme-l2">Food</span>
            <span class="w3-tag w3-small w3-theme-l3">Design</span>
            <span class="w3-tag w3-small w3-theme-l4">Art</span>
            <span class="w3-tag w3-small w3-theme-l5">Photos</span>
          </p>
        </div>
      </div>
      <br>
      
      <!-- Alert Box -->
     <!--  <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
        <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
          <i class="fa fa-remove"></i>
        </span>
        <p><strong>Hey!</strong></p>
        <p>People are looking at your profile. Find out who.</p>
      </div> -->
    
    <!-- End Left Column -->
    </div>
    
    <!-- Middle Column -->
    <div class="w3-col m7">
    
      <!-- <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
              <h6 class="w3-opacity">입고현황</h6>
              <p contenteditable="true" class="w3-border w3-padding">Status: Feeling Blue</p>
              <button type="button" class="w3-button w3-theme"><i class="fa fa-pencil"></i>  등록</button> 
            </div>
          </div>
        </div>
      </div> -->
      
      <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <span class="w3-right w3-opacity"><fmt:formatDate value="${gugu }" pattern="yyyy-MM-dd" var="gubun"/>${gubun}기준</span>
        <h4><strong>생산 라인 현황</strong></h4><br>
        <hr class="w3-clear">
        <div  id="wawawa">
	        <c:forEach var="plists" items="${plist }">
		        <fmt:formatDate value="${plists.pWorkday}" pattern="yyyy-MM-dd" var="pWorkday"/>
		       		<c:if test="${pWorkday == gubun}">
		       			<div class="divDIV">
			        		<p class="p">${plists.lNo.lLine } 라인</p>
			        		<p>${plists.mNo.mName}</p>
			        		<p>${plists.wNo.gNo.gName}</p>
		        		</div>
		       		</c:if>
	        </c:forEach>
        </div>
        <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i> <a href="${pageContext.request.contextPath}/product"> 생산관리 바로가기</a></button> 
       <!--  <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  전체보기</button>  -->
      </div>  
<!-- 생산라인 보이게 -->
     <%--  <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <span class="w3-right w3-opacity"></span>
        <h4>생산라인별로 작업자 그리기 </h4><br>
        <hr class="w3-clear">
			 <c:forEach var="slists" items="${slist }">
	          	<p>출고일<fmt:formatDate value="${slists.sDay}" pattern="yyyy-MM-dd"/></p>
				<p>출고번호${slists.sNo }</p>
				<p>출고품명${slists.pNo[0].wNo.gNo.gName}</p>
				<p>출고수량${slists.sQy }</p>
          	</c:forEach>
        <!-- <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i>  Like</button> 
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> --> 
      </div>  --%>
      
    <!-- End Middle Column -->
    </div>
    
    <!-- Right Column -->
    <div class="w3-col m2">
      <div class="w3-card w3-round w3-white w3-center">
        <div class="w3-container">
          <p id="wareFont">입고현황</p>
          <table id="warehousingTable" border="1">
          	<thead>
          		<tr>
          			<td>일자</td>
          			<td>품명</td>
          			<td>수량</td>
          		</tr>
          	</thead>
           	<tbody>
	           	<c:forEach var="i" items="${wlist }" begin="1" end="10" varStatus="status">
		          	<tr>
		          		<td>
		          			<fmt:formatDate value="${i.wDay}" pattern="yyyy-MM-dd"/>	
						</td>
		          		<td>${i.gNo.gName }</td>
		          		<td>${i.wQy }</td>
		          	</tr>
	          	</c:forEach>
          	 </tbody>
          </table>
          <br>
         <p>
         	<button class="w3-button w3-block w3-theme-l4">
         		<a href="${pageContext.request.contextPath}/warehousing">입고현황 페이지 가기</a>
         	</button>
         </p>
         <br>
        </div>
      </div>
      <br>
      <div class="w3-card w3-round w3-white w3-center">
        <div class="w3-container">
          <p id="wareFont2">출고현황</p>
          <table id="shipmentTable" border="1">
          <thead>
          	<tr>
          		<td>일자</td>
          		<td>품명</td>
          		<td>수량</td>
          	</tr>
          </thead>
          <tbody>
           <c:forEach var="s" items="${slist }" begin="1" end="10" varStatus="status">
	          	<tr>
	          		<td>
	          			<fmt:formatDate value="${s.sDay}" pattern="yyyy-MM-dd"/>
					</td>
	          		<td>${s.pNo[0].wNo.gNo.gName }</td>
	          		<td>${s.sQy }</td>
	          	</tr>
          	</c:forEach>
          	</tbody>
          </table>
          <br>	
      	 	<p>
      	 		<button class="w3-button w3-block w3-theme-l4">
      	 			<a href="${pageContext.request.contextPath}/shipment">출고현황 페이지 가기</a>
      	 		</button>
      	 	</p>
      	  <br>
        </div>
      </div>
       <br>
      <!-- <div class="w3-card w3-round w3-white w3-center">
        <div class="w3-container">
          <p>Friend Request</p>
          <span>Jane Doe</span>
          <div class="w3-row w3-opacity">
            <div class="w3-half">
              <button class="w3-button w3-block w3-green w3-section" title="Accept"><i class="fa fa-check"></i></button>
            </div>
            <div class="w3-half">
              <button class="w3-button w3-block w3-red w3-section" title="Decline"><i class="fa fa-remove"></i></button>
            </div>
          </div>
        </div>
      </div> -->
      <br>
      
      <!-- <div class="w3-card w3-round w3-white w3-padding-16 w3-center">
        <p>ADS</p>
      </div> -->
      <br>
      
     <!--  <div class="w3-card w3-round w3-white w3-padding-32 w3-center">
        <p><i class="fa fa-bug w3-xxlarge"></i></p>
      </div> -->
      
    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>
<br>
<script>
// Accordion
function myFunction(id) {
  var x = document.getElementById(id);
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
    x.previousElementSibling.className += " w3-theme-d1";
  } else { 
    x.className = x.className.replace("w3-show", "");
    x.previousElementSibling.className = 
    x.previousElementSibling.className.replace(" w3-theme-d1", "");
  }
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>

</body>
</html> 


















<%@ include file="include/footer.jsp" %>