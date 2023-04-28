<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String path_adm = request.getContextPath();

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
    <link rel="stylesheet" href="<%=path_adm %>/common.css">
    <link rel="stylesheet" href="<%=path_adm %>/main.css">
    <link rel="stylesheet" href="<%=path_adm %>/layout_sub.css">
	<style>

	</style>
</head>
<body>
    <div class="container">
<%@ include file="./admin_hd.jsp" %>
        <div class="content">
            <figure class="vs">
            	<h1 class="title">ADMIN PAGE</h1>
                <div class="img_box">
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_title">한국을 대표하는 맛, 세계를 감동시킨 우리의 맛</h2>
                <div class="page_wrap">
                </div>
            </section>
            <section class="page" id="page2">
	            <h2 class="page_title">투자의 블루칩 농심, 농심의 주가정보를 상세하게 전달해 드립니다.</h2>
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_title">투자의 블루칩 농심, 농심의 주가정보를 상세하게 전달해 드립니다.</h2>
                <div class="page_wrap">
                </div>
            </section>
            <section class="page" id="page4">
                <h2 class="page_title">내일을 위한 새롭고 활기찬 농심 소식</h2>
                <div class="page_wrap">
                </div>
            </section>
            <section class="page" id="page5">
                <h2 class="page_title">(주)농심은 고객님의 의견에 대해 빠르고 정확한 처리를 약속 드립니다.</h2>
                <div class="page_wrap">
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