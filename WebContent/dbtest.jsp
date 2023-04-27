<%@ page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%	
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro01";
	String id = "postgres";
	String pw = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, id, pw);
			sql = "select * from member";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<h2>dbtest1</h2>
	<nav>
		<a href="index.jsp">메인으로</a>
	</nav>
	<hr>
	<table>
		<thead>
			<tr>
				<th>ID</th><th>pw</th><th>name</th>
				<th>tel</th><th>born_at</th><th>addr</th>
				<th>email</th><th>regdate</th>
			</tr>
		</thead>
		<tbody>
<%
					while(rs.next()){
%>
			<tr>
				<td><%=rs.getString("id") %></td>
				<td><%=rs.getString("pw") %></td>
				<td><%=rs.getString("mname") %></td>
				<td><%=rs.getString("mtel") %></td>
				<td><%=rs.getString("mborn") %></td>
				<td><%=rs.getString("maddr") %></td>
				<td><%=rs.getString("memail") %></td>
				<td><%=rs.getTimestamp("regdate") %></td>
			</tr>
<%
					}
%>
		</tbody>
	</table>

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