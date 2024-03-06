<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/01_servlet/Ex14" method="post" id="myform">
		<fieldset>
			<legend> 성적 입력 </legend>
			<ul>
				<li><label for="name">이름 :</label> <input type="text" id="name" name="name" required></li>
				<li><label for="kor">국어 :</label> <input type="number" id="kor" name="kor" required></li>
				<li><label for="eng">영어 :</label> <input type="number" id="eng" name="eng" required></li>
				<li><label for="math">수학 :</label> <input type="number" id="math" name="math" required></li>
			</ul>
			<input type="hidden" name="cmd" value="1">
			<input type="submit" value="결과보기">
			<input type="reset" value="취소">
		</fieldset>
	</form>
	<hr>
	
	<form action="/01_servlet/Ex14" method="post">
	    <p>취미 : 
	        <input type="checkbox" name="hobby" value="운동">운동
	        <input type="checkbox" name="hobby" value="게임">게임
	        <input type="checkbox" name="hobby" value="영화">영화
	        <input type="checkbox" name="hobby" value="독서">독성
	    </p>
	    <input type="hidden" name="cmd" value="2">
	    <input type="submit" value="결과보기">
	</form>
</body>
</html>