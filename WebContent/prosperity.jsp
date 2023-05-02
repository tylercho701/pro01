<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String path = request.getContextPath();

	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>포트폴리오 - 농심</title>

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
    <link rel="stylesheet" href="layout_sub.css">
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
    .content { background-image: url("./images/overview_management_03.png"); }
    .tit { text-align: center; line-height: 20vh; color:#fff;
	</style>
</head>
<body>
    <div class="container">
<%@ include file="./hd.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">지속가능경영</h1>
                    <div class="page_wrap">
                	<p class="page_comment">
                             고객에게 믿을 수 있는 식품을 제공하겠다는 약속을 기반으로 한국의 맛을 만들어 왔고, <br>
                             그 결과 한국을 대표하는 세계적 식품회사로 성장하였습니다. <br>
                             앞으로 농심은 한국의 맛과 식문화를 선도할 뿐만 아니라 <br>
                             고객과 더불어 살맛나는 세상을 만들어 가기 위하여 따뜻한 나눔을 실천하고, <br>
                             이해관계자에 대한 책임을 다하며, 깨끗한 환경을 위해 앞장서는 기업이 되도록 지속적으로 노력해 나아갈 것입니다.
                    </p>
                </div>
                </div>
            </figure>
            <section class="page" id="page2">
                <h2 class="page_tit">PLANET</h2>
                <div class="page_wrap">
                	<p class="page_comment">
				        PLANET(지구)<br>
						환경친화적 제품생산
                    </p>
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_tit">PEOPLE</h2>
                <div class="page_wrap">
                	<p class="page_comment">
                		PEOPLE(사람)<br>
						이해관계자에 대한 사회적 책임
                    </p>
                </div>
            </section>
            <section class="page" id="page4">
                <h2 class="page_tit">PROSPERITY</h2>
                <div class="page_wrap">
                	<p class="page_comment">
                		PRINCIPLE OF GOVERNANCE(거버넌스 원칙)<br>
						건전한 지배구조 구축
                    </p>
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