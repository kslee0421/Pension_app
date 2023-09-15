var sc2 = "";
window.onload = function(){
	var f;
	var sc = "";
	for(f=1; f<=6; f++){
		sc= Math.floor(Math.random() * 10);
		sc2+=sc;	
	}
	document.getElementById("box").value =sc2;
}
function join(){
	console.log(j.mpw.value);
	//alert('aa');
	if(j.mid.value==""){
		alert("아이디가 입력되지 않았습니다.");
	}
	else if(j.mname.value==""){
		alert("이름이 입력되지 않았습니다.");
	}
	else if(j.mpw.value==""){
		alert("패스워드 입력창이 입력되지 않았습니다.");
	}
	else if(j.mpwc.value==""){
		alert("패스워드확인란이 입력되지 않았습니다.");
	}
	else if(j.memail.value==""){
		alert("이메일란이 입력되지 않았습니다.");
	}
	else if(j.mtel.value==""){
		alert("전화번호란이 입력되지 않았습니다.");
	}
	else if(j.mcode.value==""){
		alert("보안코드가 입력되지 않았습니다.");
	}
	else{
		console.log(j.mid.value.length);
		if((j.mid.value.length)>=17 || (j.mid.value.length)<=5){
			alert('올바른 아이디를 입력하세요.')
		}
		else if((j.mpw.value.length)<=5 || (j.mpw.value.length)>=13) {
			alert('비밀번호는 6자리이상 12자리미만의 영어/숫자여야 합니다.')
		}
		else if(isNaN(j.mtel.value)==true){ //숫자로 변환했을때 true로 뜨면 문자가 들어간거(파서인트 같은거)
			alert('정상적인 휴대폰 번호를 입력하세요')
		}
		else if((j.mpw.value)!=(j.mpwc.value)){
			alert('비밀번호 확인값이 잘못되었습니다')
		}
		else if(j.memail.value.indexOf("@")==-1){//자바에도 있다 문자열중에서 @라는 단어가 있는지 없는지 판별 ==-1은 : 그 문자가 존재하지 않습니다.
			alert('이메일 형식이 잘못되었습니다')
		}
		else if((j.mtel.value.length)<=9){//자바에도 있다 문자열중에서 @라는 단어가 있는지 없는지 판별 ==-1은 : 그 문자가 존재하지 않습니다.
			alert('전화번호의 형식이 잘못되었습니다')
		}
		else if((j.mcode.value)!=sc2){
			alert('보안코드를 잘못입력하셨습니다.')
		}
		else{
			j.submit();   // form태그안에 있는 사용자값을 전송 명령어
		}
	}	
}	
