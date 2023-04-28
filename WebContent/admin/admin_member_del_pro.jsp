<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro01";
	String user = "postgres";
	String pass = "1234";
	
	String id = request.getParameter("id");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	int i = 0;
	
	String sql = "";
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "delete from member where id=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);				
				i = pstmt.executeUpdate();
				
				if(i>0){
					response.sendRedirect("logout.jsp");
				} else {
					response.sendRedirect("mypage.jsp?id="+id);
				}
				pstmt.close();
				conn.close();
			} catch(SQLException e) {
				System.out.println("SQL 구문 전송 실패");
			}
		} catch(SQLException e) {
			System.out.println("DB 접속 실패");
		}
	} catch(ClassNotFoundException e) {
		System.out.println("driver 로드 실패");
	}
%>