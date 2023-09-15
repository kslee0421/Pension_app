<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
localStorage.clear();
sessionStorage.clear();
</script>
<!-- 중단 -->
<section class="subpage">
    <div class="member_agree">
    <p>회원가입 약관동의</p>
    <ol class="agree_ol">
    <li><label><input type="checkbox" class="ckbox" id="a1" onclick="bbb()"> 이용약관의 동의</label><span class="agree_info">[자세히 보기]</span></li>
    <li><label><input type="checkbox" class="ckbox" id="a2" onclick="bbb()"> 개인정보 수집의 동의</label><span class="agree_info">[자세히 보기]</span></li>
    <li><label><input type="checkbox" class="ckbox" id="a3" onclick="bbb()"> 개인정보 제3자 제공 동의</label><span class="agree_info">[자세히 보기]</span></li>
    <li><label><input type="checkbox" class="ckbox" id="a4" onclick="bbb()"> 개인정보 위탁제공 동의</label><span class="agree_info">[자세히 보기]</span></li>
    <li><label><input type="checkbox" class="ckbox" id="a5" onclick="bbb()"> 마케팅 활용 동의 (선택)</label><span class="agree_info">[자세히 보기]</span></li>
    <li><label><input type="checkbox" class="ckbox" id="all" onclick="abc(this.checked)"> 위 약관에 모두 동의 합니다.</label></li>
    </ol>
    <div class="member_agreebtn" onclick="check()">기본정보 등록하기</div>
    </div>
</section>
<script>
var v1, v2, v3, v4, ck1, ck2, ck3, ck4 ="";
v1 = document.getElementById("a1").value ;
v2 = document.getElementById("a2").value ;
v3 = document.getElementById("a3").value ;
v4 = document.getElementById("a4").value ;

var st = window.sessionStorage.setItem("ck1",v1);
var st2 = window.sessionStorage.setItem("ck2",v2);
var st3 = window.sessionStorage.setItem("ck3",v3);
var st4 = window.sessionStorage.setItem("ck4",v4);


function bbb(){
	//console.log(z);
	var aa = document.getElementById("all"); //전체선택 오브젝트
	var w =1;
	var check =true; //체크 핸들링을 위한 변수
	do{
		//해당 아이디별로 체크 중 해제 되었을 조건일 경우 
		if(document.getElementById("a"+w).checked==false){
			check =false;
		}
		w++;
	}while(w <=5);
	
	if(check==false){ //하나라도 체크 아웃 되었을 경우 
		aa.checked = false; //전체 체크가 해제
	}
	else{
		aa.checked = true; //전체 체크가 선택
	}
	
}
function abc(e){
	var w=1;		
	while(w <=5){
	document.getElementById("a"+w).checked =e;
	w++;			
	}
}
function check(){
	if(document.getElementById("a1").checked==false){
		alert("회원가입 약관에 필수사항은 모두 체크 하셔야 회원가입이 진행됩니다.");
		return false;
	}
	else if(document.getElementById("a2").checked==false){
		alert("회원가입 약관에 필수사항은 모두 체크 하셔야 회원가입이 진행됩니다.");
		return false;
	}
	else if(document.getElementById("a3").checked==false){
		alert("회원가입 약관에 필수사항은 모두 체크 하셔야 회원가입이 진행됩니다.");
		return false;
	}
	else if(document.getElementById("a4").checked==false){
		alert("회원가입 약관에 필수사항은 모두 체크 하셔야 회원가입이 진행됩니다.");
		return false;
	}
	else{
		location.href="./join_step2.jsp";
		return;
		
	}
}
</script>