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
	
	String mid = request.getParameter("id");
	String mpw = request.getParameter("pw";
	String mname = request.getParameter("name");
	String mtel = request.getParameter("tel");
	String mborn_at = tequest.getParameter("born_at");
	String maddr = request.getParameter("addr");
	String memail = request.getParameter("email");
		
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	int i = 0;
	
	String sql = "";
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "update member set pw=?, name = ?, tel = ?, born_at = ?, addr = ?, email = ? where id = ?";
			try {
				pstmt = conn.prepareStatement(sql);	
				
				pstmt.setString(1, mpw);
				pstmt.setString(2, mname);
				pstmt.setString(3, mtel);
				pstmt.setString(4, mborn_at);
				pstmt.setString(5, maddr);
				pstmt.setString(6, memail);
				pstmt.setString(7, mid);
				
				i = pstmt.executeQuery();
								
				if(i>0){
					response.sendRedirect("mypage.jsp?id="+mid)
				} else {
					response.sendRedirect("member_modify.jsp?id="+mid)
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