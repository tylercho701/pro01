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
	.page1{  }
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
    .content { background-image: url("./images/contribution_overview_01.png"); }
    .grid4 .grid_box li { width: 300px; margin-right: 25px; float:left; height:auto; }
	</style>
</head>
<body>
    <div class="container">
<%@ include file="./hd.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">농심소개</h1>
                </div>
            </figure>
            <section class="page" id="page1">
            	<h2 class="page_tit">농심</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        인생을 맛있게,
                        일상의 행복에 가치를 더하는
                        세계를 감동시긴 우리의 맛이 되겠습니다. 
                    </p>
                </div>
            </section>
            <section class="page" id="page5">
                <h2 class="page_tit">오시는길</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        농심을 직접 만나보실 수 있습니다.
                    </p>
                </div>
                <article class="grid4">
                    <ul class="grid_box">
                        <li>
                            <div>
                                <h3 class="grid_tit">농심 본사</h3>
                                <p class="grid_com">서울특별시 동작구 여의대방로 112 (신대방동)</p>
                            </div>
                        </li>
                        <li>
                            <div>
                                <h3 class="grid_tit">안양공장</h3>
                                <p class="grid_com">경기도 군포시 농심로 35 (당정동)</p>
                            </div>
                        </li>
                    </ul>
                </article>
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
<!-- 
    #page1 .grid4 li { text-align: center; box-sizing:border-box; border:1px solid #eee; height: 300px; }
    #page1 .grid4 .grid_tit { font-size:28px; font-weight:200; color:#075d46; padding-top:50px;  }
    #page1 .grid4 .grid_tit:after { content:""; display:block; clear:both; width:80px;
    height:5px; background-color:#075d46; margin:30px auto; }
    #page1 .grid4 .grid_com { padding-top: 14px; }

    #page2 { background-image: url("./images/esg01_landscape.jpg"); background-position:center center;
    background-size:100% auto; background-attachment: fixed; }
 -->

 