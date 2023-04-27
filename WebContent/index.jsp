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
	<style>

	</style>
</head>
<body>
    <div class="container">
<%@ include file="./hd.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <video src="<%=path %>/videos/shinramen2.mp4" muted autoplay loop ></video>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_title">한국을 대표하는 맛, 세계를 감동시킨 우리의 맛</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">ABOUT</h3>
                        <h2 class="main_title">NONGSHIM</h2>
                        <article class="pg1_btn_box">
                            <input type="radio" name="pg_ra" id="pg1_ra1" class="pg_ra" checked>
                            <label for="pg1_ra1" class="item1">농심</label>
                            <input type="radio" name="pg_ra" id="pg1_ra2" class="pg_ra">
                            <label for="pg1_ra2" class="item2">경영이념</label>
                            <input type="radio" name="pg_ra" id="pg1_ra3" class="pg_ra">
                            <label for="pg1_ra3" class="item3">세계속의농심</label>
                            <input type="radio" name="pg_ra" id="pg1_ra4" class="pg_ra">
                            <label for="pg1_ra4" class="item4">농심그룹</label>
                            <input type="radio" name="pg_ra" id="pg1_ra5" class="pg_ra">
                            <label for="pg1_ra5" class="item5">CI소개</label>
                            <div class="ban_fr">
                                <ul class="ban_box">
                                    <li class="item1">
                                        <img src="<%=path %>/images/overview_management_01.png" alt="" class="pic">
                                        <div class="ban_tit_box">
                                            <h2 class="ban_tit1">01</h2>
                                            <h2 class="ban_tit2">농심</h2>
                                            <p class="ban_com">농심은 50년 넘게 고객의 곁을 지키며<br>
                                            					발전했습니다.<br>
                                                				지금도 만들어지고 있는 농심의 역사를 <br>
                                               					 함께해주세요.
                                            </p>
                                        </div>
                                    </li>
                                    <li class="item2">
                                        <img src="<%=path %>/images/overview_management_02.png" alt="" class="pic">
                                        <div class="ban_tit_box">
                                            <h2 class="ban_tit1">02</h2>
                                            <h2 class="ban_tit2">“ 이농심행 무불성사<br>
                                                (以農心行 無不成事) ”<br></h2>
                                            <p class="ban_com">
                                                “농심으로 행하면 이루지 못할 것이 없다.”<br>
                                               	 서둘지 말고 모든 일을 순리에 맞게 이끌어 간다면<br>
                                             	 그 결실도 가장 바람직한 것이 되지 않겠는가.<br>
                                            	 세상이 각박해질수록 농부의 마음을 되살려야 한다."
                                            </p>
                                        </div>
                                    </li>
                                    <li class="item3">
                                        <img src="<%=path %>/images/overview_management_03.png" alt="" class="pic">
                                        <div class="ban_tit_box">
                                            <h2 class="ban_tit1">03</h2>
                                            <h2 class="ban_tit2">세계속의 농심</h2>
                                            <p class="ban_com">농심은 <br>
                                                				세계 라면 점유율 1위를 향해<br>
                                                 				달려가고 있습니다.
                                            </p>
                                        </div>
                                    </li>
                                    <li class="item4">
                                        <img src="<%=path %>/images/overview_management_05.png" alt="" class="pic">
                                        <div class="ban_tit_box">
                                            <h2 class="ban_tit1">04</h2>
                                            <h2 class="ban_tit2">농심 그룹</h2>
                                            <p class="ban_com">농심홀딩스 / 율촌화학 / 메가마트<br>
																농심태경 / 농심기획 / 호텔농심 등이<br>
																농심의 이름으로 앞을 향해 달려가고 있습니다.
                                        	</p>
                                        </div>
                                    </li>
                                    <li class="item5">
                                        <img src="<%=path %>/images/ci_logo.jpg" alt="" class="pic">
                                        <div class="ban_tit_box">
                                            <h2 class="ban_tit1">05</h2>
                                            <h2 class="ban_tit2">'농심씨드'(農心本)</h2>
                                            <p class="ban_com">세계 최일류 기업을 추구하는 <br>
																농심의 미래지향적인 이상과 의지를<br>
																강하게 상징하고 있습니다.
											</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </article>
                    </div>
                </div>
            </section>
            <section class="page" id="page2">
                <h2 class="page_title">함께해서 더 아름다운 세상, 농심이 만들어갑니다</h2>
                <div class="page_wrap">
                    <article class="grid_fr">
                        <ul class="grid_box">
                            <li>
                                <a href="" class="item1">
                                    <h3 class="grid_tit">사회공헌</h3>
                                    <p class="grid_com">작은 사랑의 실천</p>
                                </a>
                            </li>
                            <li>
                                <a href="" class="item2">
                                    <h3 class="grid_tit">환경과 안전</h3>
                                    <p class="grid_com">안전한 제조공정, 식품의 생산</p>
                                </a>
                            </li>
                            <li>
                                <a href="" class="item3">
                                    <h3 class="grid_tit">소비자 중심 경영</h3>
                                    <p class="grid_com">소비자를 중심으로 한 구성</p>
                                </a>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_title">투자의 블루칩 농심, 농심의 주가정보를 상세하게 전달해 드립니다.</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">IR</h3>
                        <h2 class="main_title" style="color:#fff">INVESTOR RELATIONS</h2>
                    </div>
                    <article class="col_fr">
                        <ul class="col_box">
                            <li class="left">
                                <p class="one_line"><span class="dot">농심</span></p>
                                <div class="inv_p">
                                    <p class="large_txt">382,000</p>
                                    <p class="small_txt">
                                        <span class="ltxt">2023/04/18 17:55:25</span><br>
                                        <span class="btxt">─ 0 &nbsp; &nbsp; 0.00%</span>
                                    </p>
                                </div>
                                <dl class="col_dl">
                                    <dd>
                                        <h4 class="d_tit">시가</h4>
                                        <p class="d_com">380,000원</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">고가</h4>
                                        <p class="d_com">382,500원</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">저가</h4>
                                        <p class="d_com">379,500원</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">전일가격</h4>
                                        <p class="d_com">380,000원</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">거래량</h4>
                                        <p class="d_com">550주</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">거래대금</h4>
                                        <p class="d_com">3,535,900,000원</p>
                                    </dd>
                                </dl>
                            </li>
                            <li class="right">
                                <a href="" class="item1"><span>재무제표</span></a>
                                <a href="" class="item2"><span>공시현황</span></a>
                                <a href="" class="item3"><span>IR자료실</span></a>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page4">
                <h2 class="page_title">내일을 위한 새롭고 활기찬 농심 소식</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">PRESS</h3>
                        <h2 class="main_title">NOW IS</h2>
                        <p class="more">+</p>
                    </div>
                    <article class="board_fr">
                        <table class="tb1">
                            <tbody>
                                <tr>
                                    <td class="td1">5</td>
                                    <td class="td2">
                                        <a href="http://www.nongshim.com/promotion/notice/press_view?groupCode=003&groupId=669">
                                            <h3 class="td_tit">글로벌 평가기관 최고 등급 획득! ‘농심 백산수’</h3>
                                     		<p class="td_com">농심 백산수가 세계적인 권위의 벨기에 몽드 셀렉션(Monde Selection)으로부터 최고 등급인 ‘대상(Grand Gold)’을 수상하며 품질 우수성을 인정받았다.</p>
                                     	</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">4</td>
                                    <td class="td2">
                                        <a href="http://www.nongshim.com/promotion/notice/press_view?groupCode=003&groupId=668">
                                            <h3 class="td_tit">농심, 세 번째 웰치제로 신제품 '샤인머스캣'출시</h3>
                                        	<p class="td_com">농심이 최근 제로탄산 음료 시장의 확대와 웰치제로의 인기에 힘입어 세 번째 제로칼로리 탄산음료 ‘웰치제로 샤인머스캣’을 새롭게 출시한다.</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">3</td>
                                    <td class="td2">
                                        <a href="http://www.nongshim.com/promotion/notice/press_view?groupCode=003&groupId=667">
                                            <h3 class="td_tit">"누룽지의 맛있는 변신!" 농심, 간편식 '컵누룽Z'출시</h3>
                                        	<p class="td_com">농심이 간편식 ‘컵누룽Z’를 새롭게 출시한다. 농심 컵누룽Z는 시중에 판매되는 컵밥보다 작은 크기로 부담 없이 즐길 수 있으며, 면 대신 누룽지가 들어있어 든든한 한 끼 식사로 손색없는 제품이다.</p>
                                       	</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">2</td>
                                    <td class="td2">
                                        <a href="http://www.nongshim.com/promotion/notice/press_view?groupCode=003&groupId=666">
                                            <h3 class="td_tit">불타는 비빔면 시장, 농심 쫄면으로 기선 제압</h3>
                                        	<p class="td_com">따듯한 봄기운과 함께 비빔면 시장의 춘추전국시대가 본격적으로 시작됐다. 특히, 올해는 기존업체의 신제품 출시와 함께 신규업체의 시장 진출까지 더해 초반부터 뜨거운 각축전이 벌어지고 있다.</p>
                                       	</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">1</td>
                                    <td class="td2">
                                        <a href="http://www.nongshim.com/promotion/notice/press_view?groupCode=003&groupId=665">
                                            <h3 class="td_tit">농심, 백혈병 환아 위해 임직원 단체 헌혈</h3>
                                        	<p class="td_com">농심이 지난 6일 서울 신대방동 본사를 비롯해 안양, 안성, 아산, 구미, 부산, 녹산 등 전국 공장에서 헌혈 캠페인을 진행하고, 헌혈증 250장을 (사)한국백혈병소아암협회에 기부했다. 
                                        					농심이 기부한 헌혈증은 치료과정에서 수혈이 필요한 백혈병소아암 환아들에게 전달될 예정이다.
                                        	</p>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </article>
                </div>
            </section>
            <section class="page" id="page5">
                <h2 class="page_title">(주)농심은 고객님의 의견에 대해 빠르고 정확한 처리를 약속 드립니다.</h2>
                <div class="page_wrap">
                    <article class="colm_fr">
                        <h3 class="lst_tit">비즈니스 상담센터
                        </h3>
                        <ul class="lst1">
                            <li class="item1">
                                <h3 class="item_tit">식자재 구매 상담</h3>
                                <a href="" class="item_more">상담하기</a>
                            </li class="item1">
                            <li class="item2">
                                <h3 class="item_tit">단체급식 위탁 상담
                                </h3>
                                <a href="" class="item_more">상담하기</a>
                            </li class="item2">
                            <li class="item3">
                                <h3 class="item_tit">협력사 상담
                                </h3>
                                <a href="" class="item_more">상담하기</a>
                            </li class="item3">
                        </ul>
                        <h3 class="lst_tit">간편 상담센터</h3>
                        <ul class="lst2">
                            <li class="item1">
                                <h3 class="item_tit">챗봇 문의
                                </h3>
                                <a href="" class="item_more">문의하기</a>
                            </li class="item1">
                            <li class="item2">
                                <h3 class="item_tit">고객의 소리
                                </h3>
                                <a href="" class="item_more">상담하기</a>
                            </li class="item2">
                            <li class="item3">
                                <h3 class="item_tit">FAQ
                                </h3>
                                <a href="" class="item_more">보러가기</a>
                            </li class="item3">
                        </ul>
                    </article>
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