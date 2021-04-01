<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		background-color: yellow;
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
    font-size:45px;
    }
    
   	header div{
   	float:right;
   	
   	}
   	header div a{
   	text-decoration:none;
   	}
   	header a{
   		text-decoration:none;
   	}
   #div1{
   	float:right;
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
		<span class="right" style="padding: 30px 10px;" >
	<div id=div1>	
	<%= checkName%>님 환영합니다.
	<a href="logout.jsp">logout</a>
	<a href="member.jsp">회원가입</a>
	</div>
	</span>	
	<%} %>
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
	<a href="bupoom.jsp"><input type="button" value="부품등록"></a><br>
	<input type="submit" value="현재위치"><br>
	</aside>
	<section><img src="images/logo.jpg"width=100% height=100%></section>
	<footer>
		<h3><br>Copyright (c) 2018 yangjung All rights reserved
		 <img src="images/googleplus-icon.png"align=right width=40px height=40px>
		 <img src="images/twitter.gif"align=right>
		 <img src="images/facebook.gif" align=right>
		 </h3>
		
	</footer>

</body>
</html>