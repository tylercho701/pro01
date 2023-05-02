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

    <title>관리자용 게시판</title>

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
    .page_comment { text-shadow:1px 1px 3px #333; color:#fff; }
    .content { background-image: url("./images/bae_hong_dong_yoo_jae_seok.jpg"); }
	</style>
</head>
<body>
    <div class="container">
<%@ include file="./admin_hd.jsp" %>
        <div class="content">
		     <section class="page" id="page1">
				<h2 class="page_title">관리자 공지 목록</h2>
				<div class="page_wrap">
					<table class="table">
						<thead>
							<tr>
								<th>board_num</th><th>board_tit</th><th>written_at</th><th>written_by</th>
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
			sql = "select a.bnum as bnum, a.btitle as title, a.written_at as written_at, b.mname as written_by from board a inner join member b on a.written_by = b.id order by bnum desc";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
				while(rs.next()){
%>
							<tr>
								<td><%=rs.getInt("bnum") %></td>
								<td>
<%
					if(aid!=""){
%>
								<a href="<%=path_adv %>/admin/admin_boardDetail.jsp?bnum=<%=rs.getString("bnum") %>"><%=rs.getString("title") %></a>
<%
					} else {
%>
								<span><%=rs.getString("title") %></span>
<%
					}
%>
								</td>
								<td><%=rs.getString("written_at") %></td>
								<td><%=rs.getString("written_by") %></td>
							</tr>
<%
				}
%>
						</tbody>
					</table>
					<div>
<%
							if(aid!=""){
%>						
						<a href="<%=path_adv %>/admin/admin_boardInsert.jsp" class="btn btn-primary">글 쓰기</a>
<%
							} else {
%>
						<h3 class="data">로그인 후에 글쓰기가 가능합니다.</h3>
<%
							}
%>
					</div>
				</div>
				<script>
				$(document).ready(function(){
				    $('#tb1').DataTable({'order': [[0, 'desc']]});
				});
				</script>
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
