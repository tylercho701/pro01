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
	String pw = request.getParameter("pw");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "";
	String passId = "";
	String passPw = "";
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from member where id = ? and pw = ?";
			try {
				pstmt = conn.prepareStatement(sql);
					
				pstmt.setString(1, id);
				pstmt.setString(2, pw);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()){
					passId = rs.getString("id");
					passPw = rs.getString("pw");
				}
				
				rs.close();
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
	
	if(passId.equals("admin")){
		session.setAttribute("id", passId);
		session.setAttribute("pw", passPw);
		response.sendRedirect("index.jsp");
	} else if(!(id.equals("")) && !(id.equals("admin"))){
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		response.sendRedirect("index.jsp");
	} else {
		session.invalidate();
		response.sendRedirect("login.jsp");
	}
%>