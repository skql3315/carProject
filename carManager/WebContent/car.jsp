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
   	header a{
   		text-decoration:none;
   	}
</style>
<script>
 function check(){
	 if(document.form.id.value==""){
         alert("아이디를 적으세요");
         document.form.id.focus();   
 	}
	 if(document.form.name.value==""){
         alert("이름을 적으세요");
         document.form.name.focus();
    
 }
	 if(document.form.car_number.value==""){
         alert("차동차 번호를 적으세요");
         document.form.car_number.focus();
    
 }
	 if(document.form.car_name.value==""){
         alert("자동차 종류를 적으세요");
         document.form.car_name.focus();    	         
 }
	 if(document.form.sell_phone.value==""){
         alert("핸드폰을 적으세요");
         document.form.sell_phone.focus();
    
 }
	 if(document.form.phone.value==""){
         alert("전화번호를 적으세요");
         document.form.phone.focus();
    
 }
	if(document.form.address.value==""){
         alert("주소를 적으세요");
         document.form.address.focus();
     
 }
	else{
		document.form.submit();
	}
 }
 
 function id_chk(){
	 window.open("id_dup.jsp?id="+document.form.id.value,targer="_self");
 }
 </script>
	
	
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
	<input type="submit" value="로그인" > |
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
	<a href="bupoom.jsp"><input type="button" value="부품등록"></a><br>
	<input type="submit" value="현재위치"><br>
	</aside>
	<section>
	<form name="form" method="POST" action="in_process2.jsp">
	<table border=2 align="center">
	<h1 align="center">고객관리</h1>
	<tr>
	
	
	<th> 고객ID <td><input type="text" name="id" size="30" >
	 </td></th>
            </tr>
            
            <tr>
                <th> 고객이름 <td><input type="text" name="name" size="30"></td>
            </tr>            
            
            <tr>
                <th> 자동차번호 <td><input type="text" name="car_number"></td>
            </tr>
            <tr>
                <th> 자동차종류 <td><input type="text" name="car_name" size="30"></td>
            </tr>
            
            <tr>
                <th> 핸드폰 <td>
                    <select>
                        <option>010</option>
                    </select>-
                    <input type="text" name="sell_phone" size="30" >-
                    <input type="text" name="sell_phone" size="30"></td>
            </tr>
            <tr>
            <th> 전화번호 <td> <input type="text" name="phone"size="30">-
            	  <input type="text" name="phone"size="30">-
            	  <input type="text" name="phone"size="30"></td>
            
            <tr>
                <th> 주소 <td><input type="text" name="address" size="90"></td>
            </tr>
         
			<tr>
                <td colspan="2" align="center" >
                <input type="submit" value="저장" id="button1" onclick="javascript:check()" >
                 <input type="reset" value="다시작성" id="button1"></td>
            </tr>	
	
	
	</table></form>
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