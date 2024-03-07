<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL</title>
</head>
<body>
<%--
	EL(Expression Language) : 표현언어
	jsp 값을 표현하는 표현식 <%= %> 대신에 사용한다.
	<%= 변수값 이나 메소드의 결과 %> 를 => EL 표현식 ${변수나 메소드 결과} 으로 사용가능 *간략
	
	앞에서 배운 pageContext, request, session, application 를 이용해서
	데이터를 저장한 정보를 EL 이나 JSTL 을 이용하면 저장된 정보를 바로 사용할 수 있다.
 --%>
	<h2>표현식을 사용한 산술연산</h2>
	<h3>
		<ul>
			<li>15 + 7 = <%= 15 + 7 %></li> 
			<li>15 - 7 = <%= 15 - 7 %></li>
			<li>15 * 7 = <%= 15 * 7 %></li>
			<li>15 / 7 = <%= 15 / 7 %></li> <!-- 정수나옴 -->
			<li>15 % 7 = <%= 15 % 7 %></li>
		</ul>
	</h3>
	<hr>
	
	<h2>EL을 사용한 산술연산</h2>
	<h3>
		<ul>
			<li>15 + 7 = ${15 + 7}</li> 
			<li>15 - 7 = ${15 - 7}</li>
			<li>15 * 7 = ${15 * 7}</li>
			<li>15 / 7 = ${15 / 7}</li> <!-- 실수나옴 -->
			<li>15 % 7 = ${15 % 7}</li>
		</ul>
	</h3>
	<hr>
	
	<h2>표현식 변수 사용 예제</h2>
	<% int su = 157 + 47; %>
	<h3>결과 : <%= su %></h3>
	<%-- EL 은 pageContext, request, session, application 에 저장되어야 사용 가능 --%>
	<h3>결과 : ${su}</h3>
	
	<% pageContext.setAttribute("su", su); %>
	<h3>결과 : ${su}</h3>
</body>
</html>