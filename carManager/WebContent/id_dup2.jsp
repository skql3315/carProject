 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//데이터베이스 연결관련 변수 선언
	Connection conn=null;
	PreparedStatement pstmt=null;
	String sql="";
	ResultSet rs = null;
	String rst="";
	String msg="";
	// 데이터베이스 연결관련 정보를 문자열로 선언
	String jdbc_driver="com.mysql.cj.jdbc.Driver";
	String jdbc_url="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	
	try{
		//JDBC 드라이버 로드
		Class.forName(jdbc_driver);
		// 데이터베이스 연결정보를 이용해 Connection 인스턴스 확보
		conn = DriverManager.getConnection(jdbc_url,"root","1234");
		
		String id = request.getParameter("id");
		System.out.println(id);
		sql="select * from customer_list where id = ?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
			%>
			<script type="text/javascript">
				alert("중복 아이디 \n 이미 등록된 아이디 입니다.");
				history.back();
			</script>
			<%
			}else
			{	
				%>
				<script type="text/javascript">
				alert("사용 가능한 아이디 입니다.");
				history.back();
				</script>
				<%
			}
	}catch(SQLException e) {
		e.printStackTrace();
		e.getMessage();
	}
			
%>
			


</body>
</html> 