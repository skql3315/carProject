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
	 if(document.form.partCode.value==""){
         alert("부품번호 적으세요");
         document.form.partCode.focus();   
 	}
	 if(document.form.partTName.value==""){
         alert("부품명 적으세요");
         document.form.partTName.focus();
    
 }
	 if(document.form.model.value==""){
         alert("규격 적으세요");
         document.form.model.focus();
    
 }
	 if(document.form.standard.value==""){
         alert("모델명 적으세요");
         document.form.standard.focus();
	 
	 if(document.form.unit.value==""){
         alert("단위 적으세요");
         document.form.unit.focus();    	         
 }
	 if(document.form.purchase.value==""){
         alert("매입가 적으세요");
         document.form.purchase.focus();
    
 }
	 if(document.form.sales.value==""){
         alert("매출가 적으세요");
         document.form.sales.focus();
    
         if(document.form.memo.value==""){
             alert("매출가 적으세요");
             document.form.memo.focus();
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
	<form name="form" method="POST" action="in_process3.jsp">
	<table border=2 align="center">
	<h1 align="center">차량 부품 관리</h1>
	<tr>
	
	
	<th> 부품번호 <td><input type="text" name="partCode" size="120" >
	 </td>
            </tr>
            
            <tr>
                <th> 부품명 <td><input type="text" name="partTName" size="120"></td>
            </tr>            
            <tr>
                <th> 모델명 <td><input type="text" name="model" size="120"></td>
            </tr>            
            <tr>
                <th> 규격 <td><input type="text" name="standard"size="120"></td>
            </tr>
            <tr>
                <th> 단위 <td><input type="text" name="unit" size="120"></td>
            </tr>
            
            <tr>
                <th> 매입가 <td><input type="text" name="purchase" size="60">    
                     매출가  <input type="text" name="sales"size="60">       
            </tr>
            
           
           
            	  
            <tr>
                <th>메모 <td><textarea cols="100" rows="5" name="memo"></textarea></td></th>
            </tr>
         
			<tr>
                <td colspan="2" align="center" >
                <input type="submit" value="부품등록" id="button1" onclick="javascript:check()" >
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