<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
	String path_adv = request.getContextPath();
	
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	String aid = "";
	if(session.getAttribute("id")!=null){
		aid = (String) session.getAttribute("id");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>관리자용_회원 목록</title>

    <!-- 검색 엔진 초기화 -->
    <meta name="subject">
    <meta name="keywords">
    <meta name="description">
    <meta name="author">

    <!-- Favorite Icon 설정 -->
    <link rel="shortcut Icon" href="">

    <!-- og설정 -->
    <meta name="og:site_name" content:"portfolio_nongshim_og_test">
    <meta name="og:title" content:"portfolio_nongshim_og_test">
    <meta name="og:description" content:"portfolio_nongshim_og_test">
    <meta name="og:url" content:"https://tylercho701.github.io/">
    <meta name="og:image" content:"~/image/overview_group.png">

    <!-- 기본 폰트 및 초기화 로딩 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!-- 스타일 초기화 -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path_adv %>/common.css">
    <link rel="stylesheet" href="<%=path_adv %>/main.css">
    <link rel="stylesheet" href="<%=path_adv %>/layout_sub.css">
	<style>
	.join_content{ clear:both; display:block; width:800px; padding-left:700px; }
	.join_tit{ margin-left:120px; }
	.vs { height:500px; }
	.page_title {text-align: center; font-size: 48px; padding-top: 50px; }
	#page1 .page_wrap { width: 800px; }
	.table { width:800px; margin:0 auto; padding-top:20px; border-top:2px solid #333; text-align:center; }
	th {  text-align: center;  line-height: 0; width:180px; padding-top:10px; padding-bottom: 10px;}
    td { padding-top:10px; padding-bottom: 10px; }
    .lb { display:block;  font-size:20px; }
	.btn { display:inline-block; outline:none; border:none; border-radius:8px; margin:16px;
         text-align: center; padding:10px 20px;  cursor:pointer; }
    .btn-primary { background: #333; color:#fff; }
    .btn-cancel { background: crimson; color:#fff; }
    .page_tit { text-align:center; font-size:32px; }
    .vs { height:auto; }
    .title {line-height:10vh; }
    .page { height: 50vh; }
	</style>
</head>
<body>
    <div class="container">
<%@ include file="./admin_hd.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                </div>
            </figure>
			<section class="page" id="page1">
				<h2 class="page_title">회원목록</h2>
				<div class="page_wrap">
					<table class="table">
						<thead>
							<tr>
								<th>member_ID</th><th>member_name</th><th>member_tel</th>
								<th>member_birth</th><th>member_addr</th><th>member_email</th>
								<th>member_regdate</th><th>member_point</th>
							</tr>
						</thead>
						<tbody>
<%
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro01";
	String user = "postgres";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from member";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
				while(rs.next()){
%>
							<tr>
								<td><%=rs.getString("id") %></td>
								<td>
<%
	if(aid!=""){
%>
								<a href="<%=path_adv %>/admin/admin_member_detail.jsp?id=<%=rs.getString("id") %>"><%=rs.getString("mname") %></a>
								</td>
<%
} 
%>
								<td><%=rs.getString("mtel") %></td>
								<td><%=Integer.parseInt(rs.getString("mborn")) %></td>
								<td><%=rs.getString("maddr") %></td>
								<td><%=rs.getString("memail") %></td>
								<td><%=rs.getString("regdate") %></td>
								<td><%=Integer.parseInt(rs.getString("point")) %></td>
							</tr>
						</tbody>
<%
				}
%>
					</table>
				</div>
			</section>
		</div>
<%@ include file="../ft.jsp" %> 
	</div>
</body>
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
<!-- 
<h1>농심</h1>
<a href="https://tylercho701.github.io">메인</a> 
-->
</html>
