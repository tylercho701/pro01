<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
	String path_bi = request.getContextPath();
	
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	String biid = "";
	if(session.getAttribute("id")!=null){
		biid = (String) session.getAttribute("id");
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
    <link rel="stylesheet" href="<%=path_ist %>/common.css">
    <link rel="stylesheet" href="<%=path_ist %>/main.css">
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
					<form name="insert_form" action="boardInsert_pro.jsp" method="post">
						<table class="table">
							<tbody>
								<tr>
									<th><label for="btit" class="lb">Title</label></th>
									<td><input type="text" name="btit" id="btit" required></td>
								</tr>
								<tr>
									<th><label for="bbody" class="lb">Content</label></th>
									<td><textarea name="bbody" id="bbody" cols=30 rows=5></textarea></td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="submit" value="글 등록" class="btn btn-primary"> &nbsp; &nbsp; &nbsp; &nbsp;
										<input type="reset" value="취소" class="btn btn-cancel">
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
