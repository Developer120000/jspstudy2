<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.db.VO_i"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : 코어(c)</title>
</head>
<body>
<%--
	JSTL : JSP Standard Tag Library
	1. 라이브러리 다운받아서 해당 프로젝트에 넣기 (tomcat.apache.org)
	   톰캣 사이트 -> 다운로드 -> 태그라이브러리 -> 하단에 jar files 4개 모두 다운
	2. 다운받은 4개의 파일을 WEB-INF 안에 lib 폴더에 넣어주자
	3. JSTL 을 사용하기 위해서는 지시어 중 taglib 지시어 선언하고 사용한다. (보통은 page 지시어 밑에 사용)
	   코어 : <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
	   포맷팅 : <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	4. 사용법 : 코어는 => <c:사용명령어>, 포맷팅은 => <fmt:사용명령어>
 --%>
 
	<%-- 1. 변수 생성 및 데이터 저장 : 알아서 디폴트인 pageContext 에 저장 --%>
	<%-- 변수 생성 : set => <c:set var="변수명" value="데이터" /> --%>
	<c:set var="str" value="Hello JSTL!!" />
	
	<%-- 변수값 출력 : out => <c:out value="출력할 데이터 또는 EL 사용" /> --%>
	<c:out value="str" /><br> <!-- value 문자열 그대로 나옴 => str -->
	<c:out value="${str}" /><br> <!-- 변수값 출력 => Hello JSTL!! -->
	${str} <!-- pageContext 에 저장되기때문에 변수값 나옴 => Hello JSTL!! = 위에 방식 안씀 -->
	
	<%-- 변수 삭제 : remove --%>
	<c:remove var="str"/> <!-- out에서는 문자열을 뜻하고 remove 에서는 변수이름을 뜻함 -->
	<!-- 변수값 출력 -->
	<c:out value="${str}"/><br> <!-- remove 되서 안나옴 -->
	${str}<br> <!-- remove 되서 안나옴 -->
	<hr>
	
	<%--
		if 문 : else 가 없다. 조건식이 참일 때만 실행
		<c:if test="조건식(관계연산, 비교연산, 논리연산 -> EL 방식으로 작성) var="변수")>
			조건식이 참일 때 실행할 문장
		</c:if>
	 --%>
	<c:if test="${4 > 3}">
		<h2>결과 : 참이라서 실행</h2>
	</c:if>
	<hr>
	<c:if test="${4 < 3}">
		<h2>결과 : 거짓이라 실행 안됨</h2>
	</c:if>
	<hr>
	
	<%-- avg 가 80 이상이면 합격 --%>
	<c:set var="avg" value="87"></c:set>
	<c:if test="${avg ge 80}"> <!-- jstl 연산자 ge => >= -->
		<h2>결과 : 합격</h2>
	</c:if>
	<hr>
	
	<%--
		if 문은 else 가 없어서 불편하다.
		대신 choose 문 사용한다.
		switch 문과 비슷하다.
		c:when => case
		c:otherwise => default 
		// 형식
		<c:when test="조건식(관계연산, 비교연산, 논리연산 -> EL 방식으로 작성)">참일 때 실행</c:when>
		<c:when test="조건식(관계연산, 비교연산, 논리연산 -> EL 방식으로 작성)">참일 때 실행</c:when>
		<c:when test="조건식(관계연산, 비교연산, 논리연산 -> EL 방식으로 작성)">참일 때 실행</c:when>
		<c:otherwise>위 조건이 맞지 않았을 때 실행(즉, 나머지)</c:otherwise>
	 --%>
	 <%-- avg 가 80 이상이면 합격 나머지는 불합격 --%>
	<c:set var="avg" value="77"></c:set>
	<c:choose>
		<c:when test="${avg ge 80}">
			<h3>합격</h3>
		</c:when>
		<c:otherwise>
			<h3>불합격</h3>
		</c:otherwise>
	</c:choose>
	<hr>
	
	<%-- 
		avg2 가 90 이상이면 A학점, 80 이상이면 B학점, 70 이상이면 C 학점, 나머지는 F학점
		** 정수는 정수와 비교, 실수는 실수와 비교
	 --%>
	<c:set var="avg2" value="89.4"></c:set>
	<c:choose>
		<c:when test="${avg2 ge 90.0}">
			<h3>A학점</h3>
		</c:when>
		<c:when test="${avg2 ge 80.0}">
			<h3>B학점</h3>
		</c:when>
		<c:when test="${avg2 ge 70.0}">
			<h3>C학점</h3>
		</c:when>
		<c:otherwise>
			<h3>F학점</h3>
		</c:otherwise>
	</c:choose>
	
	<%-- 
		for 문
		1. 일반적인 for 문
			<c:forEach begin="시작값" end="끝값" step="증가/감소값" 
			 var="안에 사용할 변수" varStatus="변수상태값"></c:forEach>		
		2. 개선된 for 문
			배열 생성 => <c:set var="arr_1" value="둘리, 도우너, 마이콜, 희동이, 고길동" />
			<c:forEach var="사용할변수" items="배열이나 ArrayList 를 EL 형식으로 표현"></c:forEach> <!-- items => 배열이나 ArrayList 담을 때 사용 -->
	 --%>
	<h2>10-20 까지 출력</h2>
	<c:forEach begin="10" end="20" step="1" var="k" varStatus="vs">
		<h3>${k} : ${vs.index} : ${vs.count} : ${vs.first} : ${vs.last}</h3>
	</c:forEach>
	
	<h2>10-20 까지 짝수만 출력</h2>
	<c:forEach begin="10" end="20" step="2" var="k" varStatus="vs">
		<h3>${k} : ${vs.index} : ${vs.count} : ${vs.first} : ${vs.last}</h3>
	</c:forEach>
	
	<h2>10-20 까지 짝수만 출력</h2>
	<c:forEach begin="10" end="20" step="1" var="k" varStatus="vs">
		<c:if test="${k % 2 eq 0}">
			<h3>${k} : ${vs.index} : ${vs.count} : ${vs.first} : ${vs.last}</h3>
		</c:if>
	</c:forEach>
	<hr>
	
	<%-- 배열 생성 --%>
	<c:set var="arr_1" value="둘리, 도우너, 마이콜, 희동이, 고길동" />
	<c:forEach var="k" items="${arr_1}"> <!-- items => 배열이나 ArrayList 담을 때 사용 -->
		<h3>${k}님, 환영합니다.</h3>
	</c:forEach>
	
<%
	// 모델에서 ArrayList를 가져왔다고 치자VO_iVO vo1 = neVO_iVO("2", "도우너", "2", "경기");VO_iVO vo2 = neVO_iVO("3", "마이콜", "34", "대구");VO_iVO vo3 = neVO_iVO("4", "희동이", "15", "대전");
	VO_i vo1 = new VO_i("2", "도우너", "2", "경기");
	VO_i vo2 = new VO_i("3", "마이콜", "34", "대구");
	VO_i vo3 = new VO_i("4", "희동이", "15", "대전");
	// 강제로 DB 에서 처리한 것 처럼 List<VO> 에 정보를 넣자
	List<VO_i> list = new ArrayList<VO_i>();
	list.add(vo1);
	list.add(vo2);
	list.add(vo3);
		
	request.setAttribute("list", list);
	%>
	<c:forEach var="k" items="${list}">
		<li>${k.idx} : ${k.name} : ${k.age} : ${k.addr}</li>
	</c:forEach>
	<hr>
	
	<%-- 
		- 반복해서 나누기
		<c:forTokens items="${배열이나 컬렉션}" delims="구분자" var="변수명"></c:forTokens>
	 --%>
	<c:set var="arr_2" value="둘리, 도우너, 마이콜/홍길동, 장길산, 임꺽정/태권브이, 마징가, 짱가" />
	<c:forTokens items="${arr_2}" delims="/" var="k">  <!-- forTokens => split 처럼 끊어 저장 가능 -->
		<h3>${k}</h3>
	</c:forTokens>
	<hr>
	<c:forTokens items="${arr_2}" delims="," var="k">  <!-- delims="구분자 나눠서 저장" -->
		<h3>${k}</h3>
	</c:forTokens>
	<hr>
	<c:forTokens items="${arr_2}" delims=", /" var="k">  <!-- delims="여러개 가능" -->
		<h3>${k}</h3>
	</c:forTokens>
	
	<%-- redirect : 페이지이동 (request, response 새로 만들어진다.) --%>
<%-- 	<c:redirect url="ex07_EL.jsp"></c:redirect> --%>
	
	<%-- include 와 같음 --%>
	<c:import url="ex07_EL.jsp"></c:import>
</body>
</html>