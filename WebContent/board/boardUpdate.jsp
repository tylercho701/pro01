<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
	String path_upd = request.getContextPath();
	
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	String uid = "";
	if(session.getAttribute("id")!=null){
		uid = (String) session.getAttribute("id");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>BOARD</title>

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
    <link rel="stylesheet" href="<%=path_upd %>/common.css">
    <link rel="stylesheet" href="<%=path_upd %>/main.css">
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
    .page { height: 80vh; }
	</style>
</head>
<body>
    <div class="container">
<%@ include file="../hd.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                </div>
            </figure>
		     <section class="page" id="page3">
				<h2 class="page_title">농심소식</h2>
				<div class="page_wrap">
					<form name="update_form" action="boardUpdate_pro.jsp" method="post">
						<table class="table">
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
	
	int ubnum = Integer.parseInt(request.getParameter("bnum"));
	String ubtit = "";
	String ubbod = "";
	String uwtnb = "";
	String uwtna = "";
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select a.bnum as bnum, a.btitle as title, a.bbody as bbody, a.written_at as written_at, b.mname as written_by from board a inner join member b on a.written_by = b.id where bnum = ?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, ubnum);
				rs = pstmt.executeQuery();		
					while(rs.next()){
						ubnum = rs.getInt("bnum");
						ubtit = rs.getString("title");
						ubbod = rs.getString("bbody");
						uwtnb = rs.getString("written_by");
						uwtna = rs.getString("written_at");
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
%>
								<tr>
									<th><label for="bnum" class="lb">Board_Num</label></th>
									<td><input type="text" name="bnum" id="bnum" value="<%=ubnum %>" readonly></td>
								</tr>
								<tr>
									<th><label for="btit" class="lb">Title</label></th>
									<td><input type="text" name="btit" id="btit" value="<%=ubtit %>" required></td>
								</tr>
								<tr>
									<th><label for="bbody" class="lb">Content</label></th>
									<td>
										<textarea name="bbody" id="bbody" cols=30 rows=5><%=ubbod %></textarea>
										<input type="hidden" id="uid" value="<%=uid %>">
									</td>
								</tr>
								<tr>
									<th><label for="wtnb" class="lb">Written_By</label></th>
									<td><input type="text" name="wtnb" id="wtnb" value="<%=uwtnb %>" readonly></td>
								</tr>
								<tr>
									<th><label for="wtna" class="lb">Written_At</label></th>
									<td><input type="text" name="wtna" id="wtna" value="<%=uwtna %>" readonly></td>
								</tr>
								<tr>
									<td><input type="submit" value="정보수정" class="btn btn-primary"></td>
									<td><input type="reset" value="취소" class="btn btn-cancel"></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</section>
		</div>
<%@ include file="../ft.jsp" %> 
	</div>
</body>
<!-- 
<h1>농심</h1>
<a href="https://tylercho701.github.io">메인</a> 
-->
</html>
