<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path_ft = request.getContextPath();
%>
<footer class="ft">
    <article class="row row1">
        <div class="ft_wrap">    
            <nav class="fnb left">
                <ul class="fnb_box">
                    <li><a href="<%=path_ft %>/privacy.jsp">개인정보처리방침</a></li>
                    <li><a href="">오시는길</a></li>
                    <li><a href="<%=path_ft %>/usepromotion.jsp">이용약관</a></li>
                    <li><a href="">특약점포탈</a></li>
                    <li><a href="">이메일주소무단수집거부</a></li>
                </ul>
            </nav>
            <select name="favo" id="favo" class="favo" onchange="favo(this)">
                <option value="">FAMILY SITEMAP</option>
                <option value="http://nongshimholdings.com/main/index">농심홀딩스</option>
                <option value="http://www.nongshimeng.com/html/">농심엔지니어링</option>
                <option value="http://www.nongshimfm.com/">농심미분</option>
                <option value="https://www.hotelnongshim.com/kr/?ref=aHR0cDovL3d3dy5ub25nc2hpbS5jb20v">호텔농심</option>
                <option value="https://www.ildonglakes.co.kr:8443/">농심개발</option>
                <option value="http://www.nongshimusa.com/">농심미국</option>
            </select>
            <script>
                function favo(s){
                    var hs = s.value;
                    if(hs!=""){
                        window.open(hs, "POP-UP");
                    }
                }
            </script>
            </div>
        </article>
        <article class="row row2">
            <div class="ft_wrap">
                <div class="slogan left">
					이농심행 무불성사<br>
                    (以農心行 無不成事) ”<br>
                    “농심으로 행하면 이루지 못할 것이 없다.”<br>
					서둘지 말고 모든 일을 순리에 맞게 이끌어 간다면<br>
					그 결실도 가장 바람직한 것이 되지 않겠는가.<br>
					세상이 각박해질수록 농부의 마음을 되살려야 한다."
                </div>
                <nav class="ft_link_fr right">
                    <dl class="ft_link item1">
                        <dt>농심소개</dt>
                        <dd><a href="">농심소개</a></dd>
                        <dd><a href="">경영이념</a></dd>
                        <dd><a href="">시계속의농심</a></dd>
                        <dd><a href="">연혁</a></dd>
                    </dl>
                    <dl class="ft_link item2">
                        <dt>지속가능경영</dt>
                        <dd><a href="">OVERVIEW</a></dd>
                        <dd><a href="">PLANET</a></dd>
                        <dd><a href="">PEOPLE</a></dd>
                        <dd><a href="">PROSPERITY</a></dd>
                        <dd><a href="">지속가능경영보고서</a></dd>
                    </dl>
                    <dl class="ft_link item3">
                        <dt>홍보센터</dt>
                        <dd><a href="">농시미서포트</a></dd>
                        <dd><a href="">농심소식</a></dd>
                        <dd><a href="">농심TV</a></dd>
                        <dd><a href="">라면피디아</a></dd>
                    </dl>
                    <dl class="ft_link item4">
                        <dt>투자정보</dt>
                        <dd><a href="">주식에관한사항</a></dd>
                        <dd><a href="">주가정보</a></dd>
                        <dd><a href="">IR정보</a></dd>
                        <dd><a href="">공시정보</a></dd>
                    </dl>
                    <dl class="ft_link item5">
                        <dt>고객서비스</dt>
                        <dd><a href="">고객센터</a></dd>
                        <dd><a href="">공장견학</a></dd>
                    </dl>
                </nav>
            </div>
        </article>
        <article class="row row3">
            <div class="ft_wrap">
                <div class="ft_logo left"></div>
                <address class="copyright right">서울특별시 동작구 여의대방로 112 (신대방동)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;사업자등록번호118-81-03914&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;대표이사 이병학&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;대표전화02.820.7114&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;고객센터080.023.5181
                </address>
            </div>
        </article>
    </footer>
<div class="fix_area">
    <a href="<%=path_ft %>/index.jsp#page5" class="cir_box counsel">고객<br>상담센터</a>
    <a href="#" class="cir_box totop">↑<br>TOP</a>
</div>