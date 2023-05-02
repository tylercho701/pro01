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
	
	String admipid = request.getParameter("id");
	String admippw = request.getParameter("pw");
	String admipname = request.getParameter("name");
	String admiptel = request.getParameter("tel");
	int admipborn = Integer.parseInt(request.getParameter("born"));
	String admipaddr = request.getParameter("addr");
	String admipemail = request.getParameter("email");
	int admippoint = Integer.parseInt(request.getParameter("point"));
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	int i = 0;
	
	String sql = "";
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "insert into member values (?,?,?,?,?,?,?,default,?)";
			try {
				pstmt = conn.prepareStatement(sql);
					
				pstmt.setString(1, admipid);
				pstmt.setString(2, admippw);
				pstmt.setString(3, admipname);
				pstmt.setString(4, admiptel);
				pstmt.setInt(5, admipborn);
				pstmt.setString(6, admipaddr);
				pstmt.setString(7, admipemail);
				pstmt.setInt(8, admippoint);
				
				i = pstmt.executeUpdate();
				
				if(i>0){
					response.sendRedirect("admin_member_manage.jsp");
				} else {
					response.sendRedirect("admin_member_insert.jsp");
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