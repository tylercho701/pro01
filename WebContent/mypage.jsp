<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String path = request.getContextPath();
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
	</style>
</head>
<body>
    <div class="container">
<%@ include file="./hd.jsp" %>
        <div class="join_content">
            <section class="page">
				<h1 class="join_tit">회원가입</h1>
            	<div class="page_wrap">
					<form name="join_form" action="join_pro.jsp" method="post">
						<table>
							<tbody>
								<tr>
									<th><label for="id">아이디</label></th>
									<td><input type="text" name="id" id="id" required></td>
									<td><input type="hidden" name="id_ck" id="id_ck" value="no">
										<input type="button" value="중복확인" onclick=idCheck()></td>
										<div id="msg"></div>
								</tr>
								<tr>
									<th><label for="pw">비밀번호</label></th>
									<td><input type="password" name="pw" id="pw" required></td>
								</tr>
								<tr>
									<th><label for="pw2">비밀번호 확인</label></th>
									<td><input type="password" name="pw2" id="pw2" required></td>
								</tr>
								<tr>
									<th><label for="name">이름</label></th>
									<td><input type="text" name="name" id="name" required></td>
								</tr>
								<tr>
									<th><label for="tel">전화번호</label></th>
									<td><input type="tel" name="tel" id="tel"></td>
								</tr>
								<tr>
									<th><label for="born_at">생년월일(yyyymmdd)</label></th>
									<td><input type="text" name="born_at" id="born_at"></td>
								</tr>
								<tr>
									<th><label for="email">이메일</label></th>
									<td><input type="email" name="email" id="email"></td>
								</tr>
								<tr>
									<th><label for="addr">주소</label></th>
									<td><input type="text" name="addr" id="addr"></td>
								</tr>
								<tr>
									<td>
										<input type="submit" value="회원가입" onclick="form_check(this)"> &nbsp; &nbsp; &nbsp; &nbsp;
										<input type="reset" value="취소">
									</td>
								</tr>
							</tbody>
						</table>
					</form>
					<script>
					function idCheck(){
                    	var id = document.getElementById("id");
                    	if(id.value!=""){
                    		window.open("idCheck.jsp?id="+id.value,"아이디 중복 검사","width=400, height=300");
                    	} else {
                    		alert("아이디를 확인하세요");
                    		id.focus();
                    		return;
                    	}
                    }
					function form_check(f){
						if(f.pw.value!=f.pw2.value){
							alert("비밀번호가 서로 다릅니다.");
							return false;
						}
						if(f.id_ck.value!="yes"){
                    		alert("아이디 중복체크를 완료하지 못했습니다.");
                    		return false;
                    	}
					}
					</script>
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