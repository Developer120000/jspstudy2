<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 방 명 록 </title>
<style type="text/css">
	a { text-decoration: none;}
	table{width: 600px; border-collapse:collapse; text-align: center;}
	table,th,td{border: 1px solid black; padding: 3px}
	div{width: 600px; margin:auto; text-align: center;}
</style>
<script type="text/javascript">
	function delete_go(f) {
		f.action="/jspstudy3/Guest?cmd=delete"; // 수정이넘어올지 삭제가 넘어올지 모르니 이름값까지 넣어야한다.
		f.submit();
	}
	function update_go(f) {
		f.action="/jspstudy3/Guest?cmd=update"; // 수정이넘어올지 삭제가 넘어올지 모르니 이름값까지 넣어야한다.
		f.submit();
	}
</script>
</head>
<body>
	<div>
		<h2>방명록 : 작성화면</h2>
		<hr />
		<p>[<a href="/jspstudy3/Guest?cmd=list">목록으로 이동</a>]</p>
		<form method="post">
			<table>
				<tr align="center">
					<td bgcolor="#99ccff">작성자</td>
					<td>${gvo.name}</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">제  목</td>
					<td>${gvo.subject}</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">email</td>
					<td>${gvo.email}</td>
				</tr>
				<tr align="left">
					<td colspan="2">
						<pre style="padding-left: 15px">${gvo.content}</pre> <!-- 띄어쓰기도 저장되지만 가운데정렬이 기본이라 스타일줘야된다. -->
					</td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="hidden" name="idx" value="${gvo.idx}">
							<input type="hidden" name="pwd" value="${gvo.pwd}">
							<input type="button" value="수정" onclick="update_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" value="삭제" onclick="delete_go(this.form)" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>