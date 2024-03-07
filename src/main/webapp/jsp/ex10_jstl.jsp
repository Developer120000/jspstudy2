<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : 포맷팅(fmt) : 숫자와 날짜 포매팅</title>
</head>
<body>
	<h2>세자리마다 콤마 표시됨, 숫자만 받기</h2>
	<h3>
		<li><fmt:formatNumber value="123456.5749" /></li>
<%-- 		<li><fmt:formatNumber value="aaa123456.5749" /></li> --%> <!-- 다른문자 있으면 안됨 -->
<%-- 		<li><fmt:formatNumber value="123456.a5749" /></li> --%> <!-- 다른문자 있으면 안됨 -->
	</h3>
	<hr>
	
	<h2>숫자,문자 일때는 처음부터 숫자까지만 인식, 숫자만 받기</h2>
	<h3>
		<li><fmt:parseNumber value="123456.5749" /></li>
		<li><fmt:parseNumber value="123123c4b56a.a5749" /></li>
<%-- 		<li><fmt:parseNumber value="aaa123456.5749" /></li> --%>
	</h3>
	<hr>
	
	<h2>정수만 구하기(반올림 처리, 소숫점 첫째자리까지 구하기)</h2>
	<h3>
		<li><fmt:formatNumber value="11123456.4749" pattern="#,###"/></li> <!-- 3자리마다 , 찍고 정수만 나옴 -->
		<li><fmt:formatNumber value="11123456.5749" pattern="#,###.#"/></li> <!-- 3자리마다 , 찍고 소수점 첫째자리 까지 나옴 -->
		<li><fmt:formatNumber value="11123456" pattern="#,###.#"/></li> <!-- 소수점없어서 정수만 나옴 -->
		<li><fmt:formatNumber value="11123456" pattern="#,###.0"/></li> <!-- 소수점 없으면 0으로 채움 -->
	</h3>
	<hr>
	
	<h2>pattern 에서 # 과 0 의 차이점</h2>
	<h3>
		<li><fmt:formatNumber value="127" pattern="#,###"/></li> <!-- 127 나옴 -->
		<li><fmt:formatNumber value="127" pattern="#,###.#"/></li> <!-- 정수 127 나옴 -->
		<li><fmt:formatNumber value="127" pattern="0,000"/></li> <!-- 없는자리에 0으로 채워짐 0,127 나옴 -->
		<li><fmt:formatNumber value="127" pattern="0,000.0"/></li> <!-- 없는자리에 0으로 채워짐 0,127.0 나옴 -->
	</h3>
	<hr>

	<h2>현재 운영체제에 맞는 화폐단위 표시(반올림됨) => type="currency"</h2>
	<h3>
		<li><fmt:formatNumber value="11123456.4449" type="currency"/></li> <!-- 버림됨 -->
		<li><fmt:formatNumber value="11123456.5749" type="currency"/></li> <!-- 올림됨 -->
		<li><fmt:formatNumber value="11123456" type="currency"/></li>
		<li><fmt:formatNumber value="11123456" type="currency"/></li>
	</h3>
	<hr>
	
	<h2>퍼센트(value * 100 + "%")</h2>
	<h3>
		<li><fmt:formatNumber value="12" type="percent"/></li> <!-- 버림됨 -->
		<li><fmt:formatNumber value="0.12" type="percent"/></li> <!-- 올림됨 -->
	</h3>
	<hr>
	
	<h2>오늘 날짜 구하기</h2>
	<!-- 자바의 객체 생성과 같음 -->
	<jsp:useBean id="now" class="java.util.Date" />
	<h3>
		<li>오늘 날짜 : ${now}</li>
		<li><fmt:formatDate value="${now}" dateStyle="short"/></li>
		<li><fmt:formatDate value="${now}" dateStyle="medium"/></li>
		<li><fmt:formatDate value="${now}" dateStyle="long"/></li>
		<li><fmt:formatDate value="${now}" dateStyle="full"/></li>
	</h3>
	<hr>
	
	<h2>오늘 시간 구하기</h2>
	<h3>
		<li><fmt:formatDate value="${now}" type="time" timeStyle="short"/></li>
		<li><fmt:formatDate value="${now}" type="time" timeStyle="medium"/></li>
		<li><fmt:formatDate value="${now}" type="time" timeStyle="long"/></li>
		<li><fmt:formatDate value="${now}" type="time" timeStyle="full"/></li>
	</h3>
	<hr>
	
	<h2>오늘 날짜와 시간 둘다 구하기 => type="both" 사용해야됨</h2>
	<h3>
		<li><fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/></li>
		<li><fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/></li>
		<li><fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/></li>
		<li><fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/></li>
	</h3>
</body>
</html>