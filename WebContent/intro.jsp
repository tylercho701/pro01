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
	.content { background-image: url("./images/top_solution.jpg"); }
    #page1 .grid4 li { text-align: center; box-sizing:border-box; border:1px solid #eee; height: 300px; }
    #page1 .grid4 .grid_tit { font-size:28px; font-weight:200; color:#075d46; padding-top:50px;  }
    #page1 .grid4 .grid_tit:after { content:""; display:block; clear:both; width:80px;
    height:5px; background-color:#075d46; margin:30px auto; }
    #page1 .grid4 .grid_com { padding-top: 14px; }

    #page2 { background-image: url("./images/esg01_landscape.jpg"); background-position:center center;
    background-size:100% auto; background-attachment: fixed; }
    .page_comment { text-shadow:1px 1px 3px #333; color:#fff; }
    .content { background-image: url("./images/bae_hong_dong_yoo_jae_seok.jpg"); }
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
            <section class="page" id="page2">
                <h2 class="page_tit">경영이념</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        농심이 성장할 수 있었던 원동력,
                        농심의 핵심 가치와 경영 철학을 바탕으로 참된 기업을 만들어 나가겠습니다.
                    </p>
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_tit">연혁</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        농심은 50년 넘게 고객의 곁을 지키며
                        발전했습니다.<br>
                        농심의 역사는 지금 이 순간에도 만들어지고 있습니다.
                    </p>
                </div>
            </section>
            <section class="page" id="page4">
                <h2 class="page_tit">세계속의 농심</h2>
                <div class="page_wrap">
                    <p class="page_comment">
                        농심은 아시아를 시작해서 미주, 유럽, 대양지역에까지 진출했습니다.
                        전 세계인과 함께하는 농심의 활약상을 알려드립니다.
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