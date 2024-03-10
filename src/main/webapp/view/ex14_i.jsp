<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#myform{
		width: 400px;
		margin:30px auto;
		border: 1px solid black;
		border-radius: 10px;
		padding: 20px;
	}
	#myform fieldset{
		border: 1px solid #ccc;
		margin-bottom: 30px;
	}
	#myform legend{
		font-size: 16px;
		font-weight: bold;
		padding-left: 5px;
		padding-bottom: 10px;
	}
	#myform ul li{
		line-height: 30px;	
		list-style-type: none;
		padding: 5px 10px;
		margin-bottom: 2px;
	}
	#myform input {padding: 5px}
</style>
</head>
<body>
	<form action="/jspstudy3/Ex14_i" method="post" id="myform">
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
	
	<form action="/jspstudy3/Ex14_i" method="post">
	    <p>취미 : 
	        <input type="checkbox" name="hobby" value="운동">운동
	        <input type="checkbox" name="hobby" value="게임">게임
	        <input type="checkbox" name="hobby" value="영화">영화
	        <input type="checkbox" name="hobby" value="독서">독서
	    </p>
	    <input type="hidden" name="cmd" value="2">
	    <input type="submit" value="결과보기">
	</form>
</body>
</html>