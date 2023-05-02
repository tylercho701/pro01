<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
	String path_ip = request.getContextPath();
	
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	String ipid = "";
	if(session.getAttribute("id")!=null){
		ipid = (String) session.getAttribute("id");
	}

	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro01";
	String user = "postgres";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "";
	
	int i = 0;
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "insert into board values(default, ?, ?, ?, default)";
			try {
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, request.getParameter("btit"));
				pstmt.setString(2, request.getParameter("bbody"));
				pstmt.setString(3, ipid);

				i = pstmt.executeUpdate();		

				if(i>0){
					response.sendRedirect("./admin_board_manage.jsp");
				} else {
					response.sendRedirect("./admin_boardInsert.jsp");
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