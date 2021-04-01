<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBcon.jsp" %>
<%
	
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String pass=request.getParameter("password");
	String pass1=request.getParameter("password");
	String radio=request.getParameter("radio");
	String mail=request.getParameter("mail");
	
	String num1=request.getParameter("num1");
	String num3=request.getParameter("num3");
	String address=request.getParameter("address");
	
	String car1=request.getParameter("car1");
	String car2=request.getParameter("car2");
	
	System.out.println("id : " +id);
	System.out.println("name : "+name);
	System.out.println("pass : "+pass);
	
	System.out.println("pass1 : " +pass1);
	System.out.println("radio : "+radio);
	System.out.println("mail : "+mail);
	
	System.out.println("num1 : " +num1);
	System.out.println("num3 : "+num3);
	System.out.println("address : "+address);
	System.out.println("car1 : "+ car1);
	System.out.println("car2 : "+ car2);
	PreparedStatement pstmt=null;
	try{
		String sql="insert into car_member(id,name,pass,pass1,radio,mail,num1,num3,address,car1,car2) values(?,?,?,?,?,?,?,?,?,?,?)";	
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		pstmt.setString(3, name);
		pstmt.setString(4, pass1);
		pstmt.setString(5, radio);
		pstmt.setString(6, mail);
		pstmt.setString(7, num1);
		pstmt.setString(8, num3);
		pstmt.setString(9, address);
		pstmt.setString(10, car1);
		pstmt.setString(11, car2);
		pstmt.executeUpdate();
		System.out.println("저장 완료");
		
	}catch(SQLException e){
		e.printStackTrace();
		System.out.println("저장 완료");
	}
%>


</body>
</html>