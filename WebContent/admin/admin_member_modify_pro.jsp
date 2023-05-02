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
	
	String admmfpid = request.getParameter("id");
	String admmfppw = request.getParameter("pw");
	String admmfpname = request.getParameter("name");
	String admmfptel = request.getParameter("tel");
	int admmfpborn = Integer.parseInt(request.getParameter("born"));
	String admmfpaddr = request.getParameter("addr");
	String admmfpemail = request.getParameter("email");
	int admmfppoint = Integer.parseInt(request.getParameter("point"));
		
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	int i = 0;
	
	String sql = "";
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "update member set pw=?, mname = ?, mtel = ?, mborn = ?, maddr = ?, memail = ?, point = ? where id = ?";
			try {
				pstmt = conn.prepareStatement(sql);	
				
				pstmt.setString(1, admmfppw);
				pstmt.setString(2, admmfpname);
				pstmt.setString(3, admmfptel);
				pstmt.setInt(4, admmfpborn);
				pstmt.setString(5, admmfpaddr);
				pstmt.setString(6, admmfpemail);
				pstmt.setInt(7, admmfppoint);
				pstmt.setString(8, admmfpid);
				
				i = pstmt.executeUpdate();
								
				if(i>0){
					response.sendRedirect("admin_member_manage.jsp");
				} else {
					response.sendRedirect("admin_member_modify.jsp?id="+admmfpid);
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