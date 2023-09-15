<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 중단 -->
<section class="subpage">
<script src="./js/join.js?v=2" defer></script>
<form method="post" action="./join_ok.do" id="j"> 
    <div class="member_agree">
    <p>회원 기본 정보입력</p>
    <ol class="join_ol">
    <li><input type="text" id="mid" name="mid"class="join_input1" placeholder="아이디 (영문/숫자 6~16자리)" maxlength="16"></li>
    <li><input type="text" id="mname" name="mname" class="join_input1" placeholder="이름 (홍길동)" maxlength="10"></li>
    <li><input type="password" id="mpw" name="mpw" class="join_input1" placeholder="비밀번호 (영문/숫자 6~12자리)" maxlength="12"></li>
    <li><input type="password" id="mpwc" class="join_input1" placeholder="동일한 패스워드를 입력하세요" maxlength="12"></li>
    <li><input type="email" id="memail" name="memail" class="join_input1" placeholder="이메일을 입력하세요" maxlength="35"></li>
    <li><input type="tel" id="mtel" name="mtel" class="join_input1" placeholder="연락처 ('-'는 미입력)" maxlength="11"></li>
    <li class="security">
    보안코드 : <input type="text" id="box" class="join_input2 bgcolor" maxlength="6" readonly="readonly">
    <input type="number" id="mcode"class="join_input2" placeholder="보안코드 6자리 입력" maxlength="6">
    </li>
    </ol>
    <input type="button" class="member_agreebtn" value="전송" onclick="join()">회원가입
    </div>
</form>    
</section>