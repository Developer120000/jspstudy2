<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- MVC 패턴 순서 : ex13(jsp) -> Ex13(서블릿) -> Conmmand01(클래스) -> ex13_res01(jsp) -> ex13(jsp) -->
	<form action="/jspstudy3/Ex13" method="get">
	<input type="submit" value="오늘날짜 구하기">
	<input type="hidden" name="cmd" value="1">
	<hr>
	
	</form>
	<form action="/jspstudy3/Ex13" method="get">
	<input type="submit" value="운세 구하기">
	<input type="hidden" name="cmd" value="2">
	<hr>
	
	 </form>
	<form action="/jspstudy3/Ex13" method="get">	
		<fieldset>
			<legend>계산기</legend>
			<p>수1 : <input type="number" name="s1" value="숫자를 입력하세요" required></p>
			<p>수2 : <input type="number" name="s2" value="숫자를 입력하세요" required></p>
			<p>연산자 : 
			<input type="radio" name="op" value="+" checked> + 
			<input type="radio" name="op" value="-"> - 
			<input type="radio" name="op" value="*"> * 
			<input type="radio" name="op" value="/"> / 
			</p>
			<input type="submit" value="결과보기">
			<input type="hidden" name="cmd" value="3">
		</fieldset>
	</form>
</body>
</html>