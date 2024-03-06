<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그 : include, forward</title>
</head>
<body>
<%--
	액션태그 : jsp 페이지간에 흐름제어, 자하빈즈 컴포넌트 지원
	사용법 : <jsp: 액션태그>
	
	1. include : 현재 페이지에서 다른 페이지를 호출 또는
				 다른 페이지의 결과를 현재 페이지의 보여주는 것
		1) 지시어 include : <%@ include file="가져올 파일의 경로" %>
			: 다른 페이지 소스 전체를 가져와서 현재 페이지에서 한번에 처리
			  파라미터 전달 안됨, 잘 변경 되지 않는 정적 페이지에 많이 사용 된다.
		
		2) 액션 include : <jsp:include page=""></jsp:include>
			:  지정한 다른 페이지의 결과를 가져와서 현재 페이지에 표시한다.
			   파라미터 전달 가능, 자주 변경 되는 동적 페이지에 많이 사용된다.
			   만약에 파라미터를 전달하려면
				<jsp:include page="">
					<jsp:param value="" name=""/>
				</jsp:include>
 --%>

</body>
</html>