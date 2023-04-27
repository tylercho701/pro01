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
	ResultSet rs = null;
	
	String sql = "";
	String passId = "";
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from member where id = ?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<style>
</style>
</head>
<body>
	<input type="hidden" id="ck_id" name="ck_id" value="<%=id %>">
<%				
				if(rs.next()){
%>
	<h3>사용 불가한 아이디 입니다. 다시 입력하기 바랍니다.</h3>
	<input type="hidden" id="ps" name="ps" value="no">
	<input type="hidden" id="msg" name="msg" value="사용 불가한 아이디 입니다. 다시 입력하기 바랍니다.">
<%
				
				} else {
%>
	<h3>사용 가능한 아이디 입니다.</h3>
	<input type="hidden" id="ps" name="ps" value="yes">
	<input type="hidden" id="msg" name="msg" value="사용 가능한 아이디 입니다.">
<% 				} %>
	<button type="button" onclick="closing()">닫기</button>
	<script>
		function closing(){
			opener.document.getElementById("id").value = document.getElementById("ck_id").value;
			opener.document.getElementById("id_ck").value = document.getElementById("ps").value;
			opener.document.getElementById("msg").innerText = document.getElementById("msg").value;
			window.close();
		}
	</script>
</body>
</html>
<%
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
%>