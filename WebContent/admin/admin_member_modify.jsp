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
	
	String admmfid = request.getParameter("id");
	String admmfpw = "";
	String admmfname = "";
	String admmftel = "";
	int admmfborn = 0;
	String admmfaddr = "";
	String admmfemail = "";
	int admmfpoint = 0;
	String admmfregdate = "";
	
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
				pstmt.setString(1, admmfid);
				rs = pstmt.executeQuery();
				if(rs.next()){
					admmfid = rs.getString("id");
					admmfpw = rs.getString("pw");
					admmfname = rs.getString("mname");
					admmftel = rs.getString("mtel");
					admmfborn = Integer.parseInt(rs.getString("mborn"));
					admmfaddr = rs.getString("maddr");
					admmfemail = rs.getString("memail");
					admmfpoint = Integer.parseInt(rs.getString("point"));
					admmfregdate = rs.getString("regdate");
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

    <title>관리자용_회원 정보 수정</title>

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
    .lb { display:block;  font-size:15px; }
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
				<h1 class="title">회원 정보 수정</h1>
            	<div class="page_wrap">
					<form name="admin_modify_form" action="admin_member_modify_pro.jsp" method="post">
						<table>
							<tbody>
								<tr>
									<th><label for="id" class="lb">아이디</label></th>
									<td><input type="text" name="id" id="id" value="<%=admmfid %>" readonly></td>
								</tr>
								<tr>
									<th><label for="pw" class="lb">비밀번호</label></th>
									<td><input type="password" name="pw" id="pw" value="<%=admmfpw %>" required></td>
								</tr>
								<tr>
									<th><label for="name" class="lb">이름</label></th>
									<td><input type="text" name="name" id="name" value="<%=admmfname %>" required></td>
								</tr>
								<tr>
									<th><label for="tel" class="lb">전화번호</label></th>
									<td><input type="tel" name="tel" id="tel" value="<%=admmftel %>" required></td>
								</tr>
								<tr>
									<th><label for="born" class="lb">생년월일(yyyymmdd)</label></th>
									<td><input type="text" name="born" id="born" value="<%=admmfborn %>" required></td>
								</tr>
								<tr>
									<th><label for="email" class="lb">이메일</label></th>
									<td><input type="email" name="email" id="email" value="<%=admmfemail %>" required></td>
								</tr>
								<tr>
									<th><label for="addr" class="lb">주소</label></th>
									<td><input type="text" name="addr" id="addr" value="<%=admmfaddr %>" required></td>
								</tr>
								<tr>
									<th><label for="point" class="lb">포인트</label></th>
									<td><input type="text" name="point" id="point"  value="<%=admmfpoint %>" ></td>
								</tr>
								<tr>
									<th><label for="regdate" class="lb">가입일</label></th>
									<td><input type="text" name="regdate" id="regdate"  value="<%=admmfregdate %>" readonly></td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="submit" class="btn btn-primary" value="정보수정">
										<input type="reset" class="btn btn-cancel" value="취소">
									</td>
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