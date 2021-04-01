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
<script type="text/javascript">
 function check(){
	 if(document.form.id.value==""){
         alert("아이디를 적으세요");
         document.form.id.focus();   
 	}
	 if(document.form.name.value==""){
         alert("이름을 적으세요");
         document.form.name.focus();
    
 }
	 if(document.form.password.value==""){
         alert("비밀번호를 적으세요");
         document.form.password.focus();
    
 }
	 if(document.form.password1.value==""){
         alert("비밀번호 확인을 적으세요");
         document.form.password1.focus();
    
 }
	 if(document.form.radio.value==""){
         alert("성별을 선택하세요");
         document.form.radio.focus();
    
 }
	 if(document.form.mail.value==""){
         alert("이메일을 적으세요");
         document.form.mail.focus();
    
 }
	 if(document.form.num1.value==""){
         alert("핸드폰을 적으세요");
         document.form.num1.focus();
    
 }
	 if(document.form.num3.value==""){
         alert("전화번호를 적으세요");
         document.form.num3.focus();
    
 }
	if(document.form.address.value==""){
         alert("주소를 적으세요");
         document.form.address.focus();
     
 }
	if(document.form.car1.value==""){
        alert("차량번호를 적으세요");
        document.form.car1.focus();
    
}
	if(document.form.car2.value==""){
        alert("차량종류를 적으세요");
        document.form.car2.focus();
    
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
	<form name="form" method="POST" action="in_process.jsp">
	<table border=2 align="center">
	<h1 align="center">고객관리</h1>
	<tr>
	
	
	<th>  아이디 <td><input type="text" name="id" size="30" >
	 <input type="button" value="중복확인" onclick="id_chk()"></td></th>
            </tr>
            
            <tr>
                <th> 이름 <td><input type="text" name="name" size="30"></td>
            </tr>
            
            <tr>
                <th> 비밀번호 <td><input type="password" name="password" size="30"></td>
            </tr>
            
            <tr>
                <th> 비밀번호 확인 <td><input type="password" name="password1" size="30"></td>
            </tr>
            
            <tr>
                <th> 성별 <td><input type="radio" name="radio" value="남성">남 <input type="radio" name="radio" value="여성">여</td>
            </tr>
            <tr>
                <th> 이메일 <td><input type="text" name="mail" size="30">@
                <select><option>naver.com</select></td>
            </tr>
            
            <tr>
                <th> 핸드폰 <td>
                    <select>
                        <option>010</option>
                    </select>-
                    <input type="text" name="num1" size="30" >-
                    <input type="text" name="num1" size="30"></td>
            </tr>
            <tr>
            <th> 전화번호 <td> <input type="text" name="num3"size="30">-
            	  <input type="text" name="num"size="30">-
            	  <input type="text" name="num"size="30"></td>
            
            <tr>
                <th> 주소 <td><input type="text" name="address" size="90"></td>
            </tr>
            <tr>
                <th> 차량번호<td><input type="text" name="car1" size="90"></td>
            </tr>
            
            <tr>
                <th>  차량종류<td><input type="text" name="car2" size="90"></td>
            </tr>
            
			<tr>
                <td colspan="2" align="center" >
                <input type="button" value="회원가입" id="button1" onclick="javascript:check()" >
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