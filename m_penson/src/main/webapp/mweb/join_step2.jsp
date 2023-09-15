<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>호텔 & 펜션 예약시스템</title>
    <link rel="stylesheet" type="text/css" href="./css/m_index.css?v=1">
    <link rel="stylesheet" type="text/css" href="./css/m_sub.css?v=1">	
    <script src="./js/m_index.js"></script>
    <script>
	    var ck1 = window.sessionStorage.getItem("ck1");
	    var ck2 = window.sessionStorage.getItem("ck2");
	    var ck1 = window.sessionStorage.getItem("ck3");
	    var ck2 = window.sessionStorage.getItem("ck4");
	
		if (ck1 != "on" || ck2 != "on" || ck3 != "on" || ck4 != "on"){    //toString으로 문자열 전환할 경우 배열이기 때문에 공백 "",(String)으로 전환할 경우 "NULL", String.valueOf로 전환할 경우 NULL
			
			location.href="./join_step.jsp";
		}
	</script>
</head>
<body>
<!-- 상단 시작 -->
<%@ include file="./top.jsp"%>
<!-- 상단 끝 -->
<main>
<!-- 배너 시작 -->
<%@ include file="./banner.jsp"%>
<!-- 배너 시작 -->
<!-- 중단 시작 -->
<%@ include file="./join.jsp"%>
<!-- 중단  끝-->
<!-- 퀵메뉴 시작-->
<%@ include file="./qmenu.jsp"%>
<!-- 퀵메뉴 끝-->
</main>
<!-- 하단 시작-->
<footer>
<%@ include file="./copy.jsp"%>
</footer>
<!-- 중단 끝-->
</body>
</html>