<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String user_id="";
	String user_pw ="";
	String user_name ="";
	try{
	user_id = session.getAttribute("userid").toString(); //""로뜸
    user_pw =session.getAttribute("userpw").toString();
    user_name =session.getAttribute("username").toString();
	}
	catch(Exception e){
		
	}
%>
<script src="./js/top.js" defer></script>
<header>
<ul class="top_menu">
    <li><img src="./img/menu.svg"></li>
    <li onclick="location.href='./index.jsp';"><img src="./img/header_logo.png"></li>
<div>
<% if(user_id==""|| user_id==null){ %>
<span onclick="login_pop();"><img src="./img/login.svg"></span>
<%  } else { %>
<span><%=user_name%>님 환영합니다.</span><a href="./logout.jsp">[로그아웃]</a>
<% } %>
</div>
</ul>
</header>
<form method="post" id="f" action="./m_loginok.do" enctype="application/x-www-form-urlencoded" onsubmit="return login()">
	<aside class="popup" id="popup" style="display:none;">
		<div class="login">
			<span class="close" onclick="pop_close();">X</span>
			<p>MEMBER-LOGIN</p>
			<ol>
			<li><input type="text" name="mid" class="login_input" placeholder="아이디를 입력하세요"></li>
			<li><input type="password" name="mpw" class="login_input" placeholder="패스워드를 입력하세요"></li>
			<li><label><input type="checkbox" name="tauto" id="saveid" class="login_check" onclick="id_save()"> 자동로그인</label></li>
			<li><input type="submit" value="로그인" class="login_btn"  ></li>
			<li class="login_info">
			<span onclick="page_location(1)">아이디 찾기</span>
			<span onclick="page_location(2)">회원가입</span>
			</li>
			</ol>
		</div>
	</aside>
</form>


