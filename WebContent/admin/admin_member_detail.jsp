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
	
	String admdid = request.getParameter("id");
	String admdpw = "";
	String admdname = "";
	String admdtel = "";
	int admdborn = 0;
	String admdaddr = "";
	String admdemail = "";
	int admdpoint = 0;
	String admdregdate = "";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "";
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from member where id=?";
			try {
				pstmt = conn.prepareStatement(sql);	
				pstmt.setString(1, admdid);
				rs = pstmt.executeQuery();
				if(rs.next()){
					admdid = rs.getString("id");
					admdpw = rs.getString("pw");
					admdname = rs.getString("mname");
					admdtel = rs.getString("mtel");
					admdborn = Integer.parseInt(rs.getString("mborn"));
					admdaddr = rs.getString("maddr");
					admdemail = rs.getString("memail");
					admdpoint = Integer.parseInt(rs.getString("point"));
					admdregdate = rs.getString("regdate");
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
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>관리자용 회원 상세</title>

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
    <link rel="stylesheet" href="../common.css">
    <link rel="stylesheet" href="../main.css">
    <link rel="stylesheet" href="../layout_sub.css">
	<style>
	.vs { height:500px; }
	.page_title {text-align: center; font-size: 48px; padding-top: 50px; }
	#page1 .page_wrap { width: 800px; }
	.table { width:800px; margin:4px auto; padding-top:20px; border-top:2px solid #333; padding-left:250px; }
	th {  text-align: justify;  line-height: 0; width:180px; padding-top:10px; padding-bottom: 10px;}
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
    .page_wrap table{ margin-left:500px; }
	</style>
</head>
<body>
    <div class="container">
<%@ include file="./admin_hd.jsp" %>
        <div class="content">
            <section class="page">
				<h1 class="title">회원 정보 상세</h1>
            	<div class="page_wrap">
					<table>
						<tbody>
							<tr>
								<th>아이디</th>
								<td><%=admdid %></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td><%=admdpw %></td>
							</tr>
							<tr>
								<th>이름</th>
								<td><%=admdname %></td>
							</tr>
							<tr>
								<th>전화번호</th>
								<td><%=admdtel %></td>
							</tr>
							<tr>
								<th>생년월일(yyyymmdd)</th>
								<td><%=admdborn %></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><%=admdemail %></td>
							</tr>
							<tr>
								<th>주소</th>
								<td><%=admdaddr %></td>
							</tr>
							<tr>
								<th>포인트</th>
								<td><%=admdpoint %></td>
							</tr>
							<tr>
								<th>가입일</th>
								<td><%=admdregdate %></td>
							</tr>
							<tr>
								<td colspan="2">
									<a href="admin_member_modify.jsp?id=<%=admdid %>" class="btn btn-primary">정보수정</a>
									<a href="admin_member_del_pro.jsp?id=<%=admdid %>" class="btn btn-cancel">회원탈퇴</a>
									<a href="admin_member_manage.jsp" class="btn btn-primary">회원목록</a>
								</td>
							</tr>
						</tbody>
					</table>
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