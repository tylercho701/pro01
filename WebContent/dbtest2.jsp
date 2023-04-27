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
			sql = "select a.bnum as bnum, a.btitle as title, a.written_at as written_at, b.mname as written_by from board a inner join member b on a.written_by = b.id;";
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
	<h2>dbtest2</h2>
	<nav>
		<a href="index.jsp">메인으로</a>
	</nav>
	<hr>
	<table>
		<thead>
			<tr>
				<th>board_num</th><th>board_tit</th><th>written_at</th><th>written_by</th>
			</tr>
		</thead>
		<tbody>
<%
					while(rs.next()){
%>
			<tr>
				<td><%=rs.getString("bnum") %></td>
				<td><%=rs.getString("title") %></td>
				<td><%=rs.getString("written_at") %></td>
				<td><%=rs.getString("written_by") %></td>
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