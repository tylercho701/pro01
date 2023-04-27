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
	
	String mid = request.getParameter("id");
	String mpw = "";
	String mname = "";
	String mtel = "";
	String mborn_at = 0;
	String maddr = "";
	String memail = "";
	int mpoint = 0;
	String mregdate = "";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "";
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "selectt * from member where id=?";
			try {
				pstmt = conn.prepareStatement(sql);	
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs.next()){
					mpw = rs.getString("pw");
					mname = rs.getString("name");
					mtel = rs.getString("tel");
					mborn_at = rs.getString("born_at");
					maddr = rs.getString("addr");
					memail = rs.getString("email");
					mpoint = Integer.parseInt(rs.getString("pw"));
					mreddate = rs.getString("date");
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

    <title>MY PAGE</title>

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
    <link rel="stylesheet" href="common.css">
    <link rel="stylesheet" href="main.css">
	<style>
	.join_content{ clear:both; display:block; width:800px; padding-left:700px; }
	.join_tit{ margin-left:120px; }
    .btn { display:inline-block; outline:none; border:none; border-radius:8px; margin:16px;
        text-align: center; padding:10px 20px;  cursor:pointer; }
	.btn-primary { background: -moz-linear-gradient(top, #00b7ea 0%, #009ec3 100%); 
       background: -webkit-linear-gradient(top, #00b7ea 0%,#009ec3 100%); 
       background: linear-gradient(to bottom, #00b7ea 0%,#009ec3 100%); color:#fff; }
	.btn-cancle { background: -moz-linear-gradient(top, #a90329 0%, #8f0222 44%, #6d0019 100%); 
       background: -webkit-linear-gradient(top, #a90329 0%,#8f0222 44%,#6d0019 100%); 
       background: linear-gradient(to bottom, #a90329 0%,#8f0222 44%,#6d0019 100%);
       color:#fff;
   }
	</style>
</head>
<body>
    <div class="container">
<%@ include file="./hd.jsp" %>
        <div class="join_content">
            <section class="page">
				<h1 class="join_tit">회원 정보 페이지</h1>
            	<div class="page_wrap">
					<form name="join_form" action="join_pro.jsp" method="post">
						<table>
							<tbody>
								<tr>
									<th><label for="id" class="lb">아이디</label></th>
									<td><input type="text" name="id" id="id" value="<%=mid %>" readonly></td>
								</tr>
								<tr>
									<th><label for="pw" class="lb">비밀번호</label></th>
									<td><input type="password" name="pw" id="pw" value="<%=mpw %>" required></td>
								</tr>
								<tr>
									<th><label for="name" class="lb">이름</label></th>
									<td><input type="text" name="name" id="name" value="<%=mpw %>" required></td>
								</tr>
								<tr>
									<th><label for="tel" class="lb">전화번호</label></th>
									<td><input type="tel" name="tel" id="tel" value="<%=mpw %>" required></td>
								</tr>
								<tr>
									<th><label for="born_at" class="lb">생년월일(yyyymmdd)</label></th>
									<td><input type="text" name="born_at" id="born_at" value="<%=mborn_at %>" required></td>
								</tr>
								<tr>
									<th><label for="email" class="lb">이메일</label></th>
									<td><input type="email" name="email" id="email" value="<%=memail %>" required></td>
								</tr>
								<tr>
									<th><label for="addr" class="lb">주소</label></th>
									<td><input type="text" name="addr" id="addr" value="<%=maddr %>" required></td>
								</tr>
								<tr>
									<th><label for="point" class="lb">포인트</label></th>
									<td><input type="text" name="point" id="point"  value="<%=mpoint %>" readonly></td>
								</tr>
								<tr>
									<th><label for="regdate" class="lb">가입일</label></th>
									<td><input type="text" name="regdate" id="regdate"  value="<%=mregdate %>" readonly></td>
								</tr>
								<tr>
									<td>
										<input type="submit" value="회원가입수정" class="btn btn-primary"> &nbsp; &nbsp; &nbsp; &nbsp;
										<a href="mypage.jsp?id=<%=mid %>" class="btn btn-primary">마이 페이지로 되돌아가기</a>
									</td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</section>
		</div>
<%@ include file="./ft.jsp" %>
	</div>
</body>
<!-- 
<h1>농심</h1>
<a href="https://tylercho701.github.io">메인</a> 
-->
</html>