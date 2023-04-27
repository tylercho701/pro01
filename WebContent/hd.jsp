<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	String path_hd = request.getContextPath();

	String id = "";
	if(session.getAttribute("id")!=null) {
	id = (String) session.getAttribute("id");
	}
%>
<header class="hd">
    <nav class="tnb">
        <div class="tnb_wrap">
            <ul class="left_tnb">
<%
	if(id.equals("admin")) {
%>
				<li><a href="admin.jsp">관리자</a></li>
				<li><a href="logout.jsp">로그아웃</a></li>
<%
	}
%>
<% 
	if(!(id.equals("")) && !(id.equals("admin"))) { 
%>
				<li><a href="mypage.jsp">마이페이지</a></li>
				<li><a href="logout.jsp">로그아웃</a></li>
<% 
	} 
%>
<% 
	if((id.equals(""))){ 
%>
				<li><a href="login.jsp">로그인</a></li>
                <li><a href="agreement.jsp">회원가입</a></li>
<% 
	} 
%>
                
            </ul>
            <ul class="right_tnb">
                <li><a href="https://blog.naver.com/nongshimblog" class="sns1">NAVER BLOG</a></li>
                <li><a href="https://www.youtube.com/user/nongshimPR" class="sns2">YOUTUBE</a></li>
                <li><a href="https://www.instagram.com/nongshim/" class="sns3">INSTAGRAM</a></li>
            </ul>
        </div>
    </nav>
    <div class="main">
        <div class="main_wrap">
            <a href="<%=path_hd %>/index.jsp" class="logo"><img src="./images/pop-logo.jpg" alt="">NongShimlogo</a>
            <nav class="gnb">
                <ul class="gnb_fr">
                    <li><a href="<%=path_hd %>/intro.jsp">농심소개</a>
                        <div class="sub item1">
                            <ul class="dp2">
                                <li><a href="<%=path_hd %>/intro.jsp#page1">농심소개</a></li>
                                <li><a href="<%=path_hd %>/intro.jsp#page2">경영이념</a></li>
                                <li><a href="<%=path_hd %>/intro.jsp#page3">연혁</a></li>
                                <li><a href="<%=path_hd %>/intro.jsp#page4">세계속의 농심</a></li>
                                <li><a href="<%=path_hd %>/intro.jsp#page5">오시는길</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="<%=path_hd %>/prosperity.jsp">지속가능경영</a>
                        <div class="sub item2">
                            <ul class="dp2">
                                <li><a href="<%=path_hd %>/prosperity.jsp#page1">OVERVIEW</a></li>
                                <li><a href="<%=path_hd %>/prosperity.jsp#page2">PLANET</a></li>
                                <li><a href="<%=path_hd %>/prosperity.jsp#page3">PEOPLE</a></li>
                                <li><a href="<%=path_hd %>/prosperity.jsp#page4">PROSPERITY</a></li>
                                <li><a href="<%=path_hd %>/prosperity.jsp#page5">지속가능경영보고서</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="<%=path_hd %>/advert.jsp">홍보센터</a>
                        <div class="sub item3">
                            <ul class="dp2">
                                <li><a href="<%=path_hd %>/advert.jsp#page1">OVERVIEW</a></li>
                                <li><a href="<%=path_hd %>/advert.jsp#page2">농시미서포트</a></li>
                                <li><a href="<%=path_hd %>/advert.jsp#page3">농심 소식</a></li>
                                <li><a href="<%=path_hd %>/advert.jsp#page4">농심 TV</a></li>
                                <li><a href="<%=path_hd %>/advert.jsp#page5">라면피디아</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="<%=path_hd %>/invest.jsp">투자정보</a>
                        <div class="sub item4">
                            <ul class="dp2">
                                <li><a href="<%=path_hd %>/invest.jsp#page1">주식에 관한 사항</a></li>
                                <li><a href="<%=path_hd %>/invest.jsp#page2">주가정보</a></li>
                                <li><a href="<%=path_hd %>/invest.jsp#page3">IR 정보</a></li>
                                <li><a href="<%=path_hd %>/invest.jsp#page">공시정보</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="<%=path_hd %>/cs.jsp">고객서비스</a>
                        <div class="sub item5">
                            <ul class="dp2">
                                <li><a href="<%=path_hd %>/cs.jsp#page1">OVERVIEW</a></li>
                                <li><a href="<%=path_hd %>/cs.jsp#page2">고객센터</a></li>
                                <li><a href="<%=path_hd %>/cs.jsp#page2">공장견학</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </nav>
            <label for="sitemap_ck" class="sitemap_btn">사이트맵</label>
        </div>
    </div>
    <input type="checkbox" id="sitemap_ck">
    <div class="sitemap">
        <div class="sitemap_fr">
            <label for="sitemap_ck" class="close_btn">닫기</label>
            <div id="realtedSites">
                <ul class="selectu1">
                    <li class="group">농심
                        <ul>
                            <li><a href="http://brand.nongshim.com/all_product/index">브랜드 전체</a></li>
                        </ul>
                    </li>
                    <li class="group">스낵
                        <ul>
                            <li><a href="http://brand.nongshim.com/sweetpotatosnack/main/index">고구마깡</a></li>
                            <li><a href="http://brand.nongshim.com/saewookkang/main/index">새우깡</a></li>
                            <li><a href="http://brand.nongshim.com/onionrings/main/index">양파링</a></li>
                        </ul>
                    </li>
                    <li class="group">음료 / 간편식
                        <ul>
                            <li><a href="http://brand.nongshim.com/baeksansoo/main/index"></a>백산수</li>
                            <li><a href="http://brand.nongshim.com/caprisun/main/index">카프리썬</a></li>
                        </ul>
                        <ul>
                            <li><a href="http://brand.nongshim.com/frozenrice/main/index">쿡탐볶음밥</a></li>
                            <li><a href="http://brand.nongshim.com/CookTam_Rabokki/main/index">쿡탐라볶이</a></li>
                        </ul>
                    </li>
                    <li class="group">면
                        <ul>
                            <li><a href="http://brand.nongshim.com/spicyshrimp/main/index">새우탕면</a></li>
                            <li><a href="http://brand.nongshim.com/shinramyun/main/index">신라면</a></li>
                            <li><a href="http://brand.nongshim.com/beefnoodle/main/index">우육탕면</a></li>
                            <li><a href="http://brand.nongshim.com/udonbowl/main/index">튀김우동</a></li>
                            <li><a href="http://brand.nongshim.com/chapagetti/main/index">짜파게티</a></li>
                            <li><a href="http://brand.nongshim.com/bowlnoodle/main/index">육개장</a></li>
                            <li><a href="http://brand.nongshim.com/gomtang/main/index">사리곰탕면</a></li>
                            <li><a href="http://brand.nongshim.com/champongnoodle/main/index">오징어짬뽕</a></li>
                        </ul>
                    </li>
                    <li class="group">해외브랜드
                        <ul>
                            <li><a href="http://brand.nongshim.com/kellogg/main/index">켈로그</a></li>
                            <li><a href="http://brand.nongshim.com/housecurry/main/index">하우스카레</a></li>
                            <li><a href="http://brand.nongshim.com/mentos/main/index">멘토스</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>