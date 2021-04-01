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
	String car_number=request.getParameter("car_number");
	String car_name=request.getParameter("car_name");
	String sell_phone=request.getParameter("sell_phone");
	String phone=request.getParameter("phone");
	String address=request.getParameter("address");
	
	System.out.println("id : " +id);
	System.out.println("name : "+name);
	System.out.println("car_number : " +car_number);
	System.out.println("car_name : "+car_name);
	System.out.println("sell_phone : " +sell_phone);
	System.out.println("phone : "+phone);
	System.out.println("address : " +address);
	
	PreparedStatement pstmt=null;
	try{
		String sql="insert into customer_list(id,name,car_number,car_name,sell_phone,phone,address) values(?,?,?,?,?,?,?)";	
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, car_number);
		pstmt.setString(4, car_name);
		pstmt.setString(5, sell_phone);
		pstmt.setString(6, phone);
		pstmt.setString(7, address);
		
		pstmt.executeUpdate();
		//System.out.println("저장 완료");
		
	}catch(SQLException e){
		e.printStackTrace();
		System.out.println("저장 완료");
	}
%>


</body>
</html>