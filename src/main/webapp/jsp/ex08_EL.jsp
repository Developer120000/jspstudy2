<%@page import="com.ict.db.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	// <% 표현식 안에서 자바코드 사용 가능, MVC 할때는 사용안하는게 정석
	VO vo = new VO("1", "둘리", "24", "서울");
	request.setAttribute("vo", vo);
%>
<h2>
	<ul>	<!-- private 이지만 알아서 게터로 접근해서 가져와 결과 나옴 -->
		<li>${vo}</li> <!-- 주소값 -->
		<li>${vo.idx}</li>
		<li>${vo.name}</li>
		<li>${vo.age}</li>
		<li>${vo.addr}</li>
	</ul>
</h2>
</body>
</html>