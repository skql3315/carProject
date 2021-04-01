<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	header{
		width:100%;
		height:10%;
		background-color: white;
		
		
	}
	nav{
		width:100%;
		height:5%;
		background-color: aqua;
		line-height:40px;
		padding:0 20px;
	}
	aside{
		width:20%;
		height:75%;
		background-color: ;
		float:right;
		text-align:center;
	}
	section{
		width:80%;
		height:75%;
		background-color: white;
		float:left;
		background-image: url("");
	}
	footer{
		width:100%;
		height:10%;
		background-color: gray;
		clear:both;
		
	}
	html,body{
		width:100%;
		height:100%;
	}
	*{
		padding:0;
		margin:0;
	}
	ul{
	list-style:none;
	}
	ul li{
	display:inline;
	font-weight:bold;
	text-decoration:none;
	}
	ul li a{
	text-decoration:none;
	color:black;
	padding:5px;
	}
	
    header h1{
    color:blue;
    font-size:30px;
    }
    
   	header div{
   	float:right;
   	
   	}
   	header div a{
   	text-decoration:none;
   	}
   	th{
   	background-color:gray;
   	}
   	
   	fieldset{
   		font-size:1.3em;
   	}
   	fieldset h3{
   		color:blue;
   		
   	}
   	header a{
   		text-decoration:none;
   	}
</style>
</head>
<body>
<header>
	<% String checkName="";
		checkName=(String)session.getAttribute("s_Name");
		if(checkName==null){				
			
		
	%>
	<a href="index.jsp"><h1>카센터(붕붕이나라)</h1></a>
	<span class="right" style="padding: 20px 10px;">
	<form method="POST" action="login.jsp">
	<fieldset>
	<div>회원 : <input type="text" name="id1">
	비밀번호 : <input type="password" name="pass">
	<input type="submit" value="로그인" > |
	<a href="member.jsp">회원가입</a></form>
	</div>
	</fieldset>
	</span>
	<% }	else{ session.setMaxInactiveInterval(500); %>
		<a href="index.jsp"><h1>카센터(붕붕이나라)</h1></a>
		<span class="right" style="padding: 30px 10px;">
		
	<%= checkName %>님 환영합니다.
	<a href="logout.jsp">logout</a>
	<a href="member.jsp">회원가입</a>
	</span>	
	<%} %>
	</header>

	<div>회원 : <input type="text" name="id1">
	비밀번호 : <input type="password" name="pass">
	<input type="submit" value="로그인"> |
	<a href="member.jsp">회원가입</a>
	</div>
	
	</header>
	<nav>
	<ul>
		<li><a href="hello.jsp">회사소개</a></li>
		<li><a href="BPIM.jsp">부품정보</a></li>
		<li><a href="customer_list.jsp">고객정보</a></li> 
		<li><a href="#">견적관리</a></li> 
		<li><a href="#">정비이력</a></li> 
		<li><a href="#">게시판</a></li>
	</ul>
	</nav>
	<aside>
	<a href="car.jsp"><input type="button" value="고객등록"></a><br>
	<input type="submit" value="정비등록"><br>
	<a href="bupoom.jsp"><input type="submit" value="부품등록"></a><br>
	<input type="submit" value="현재위치"><br>
	</aside>
	<section>
	<fieldset>
	<h2>반갑습니다</h2><br>
	카센터 붕붕이나라입니다.<hr>
	<img src="images/car.png" align="left">
	안녕하십니까?<br>
	카센터 붕붕이나라는 부산시 부산진구 양정동에 위치하고 있습니다.<br>
	저희 붕붕이나라는 고객의 다양한 요구에 부합되는<br>
	최고의 서비스와 경쟁력 있는 가격으로 고객 만족을<br>
	실현하기 위해 모든 임직원이 다함께 노력할 것을<br>
	약속 드립니다.<br>
	항상 한발 앞서가는 고객만족의 경영을 실천하며,<br>
	고객과의 약속을 가장 중요시 하겠습니다.<br>
	고객 여러분의 격려와 관심으로 성원해 주시길 부탁드립니다.<br>
	<br><h3 align="center">감사합니다.</h3>
	</fieldset>
	</section>
	<footer>
		<h3><br>Copyright (c) 2018 yangjung All rights reserved
		 <img src="images/googleplus-icon.png"align=right width=40px height=40px>
		 <img src="images/twitter.gif"align=right>
		 <img src="images/facebook.gif" align=right>
		 </h3>
		
	</footer>
</body>
</html>