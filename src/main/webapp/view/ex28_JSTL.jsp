<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : JSP 표준 태그 라이브러리</title>
</head>
<body>
	<%--

 1. 라이브러리 다운받아서 해당 프로젝트에 넣기 (tomcat.apache.org)
2. 다운 받은 라이브러리 WEB-INF 안에 lib폴더를 만들어서 넣어주자.
3. 지시어중. <%@ taglib %> 에  선언하고 사용한다.
	core :	<% taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
	fmt :	<% taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	** core 라이브러리는 핵심, fmt 라이브러리는 국제화(숫자와 날짜 처리할 떄 사용)
	
	4.사용법 : <c: 명령어> </c 명령어>, fmt: < fmt:명령어></fmt:명령어>
	
	 --%>
	<%-- 
	변수생성(set) : <c: set var="변수이름"	value="변수에 저장되는 데이터"/>
	변수 출력(out): <c: out value="출력할 데이터 or ${변수이름 }" /> 또는 ${변수이름}
	변수 삭제 (remove) : <c: remove var="변수이름" />
	 --%>

	<!-- 변수 생성 및 데이터 저장 -->
	<c:set var="str" value="Hello JSP" />
	<!-- 변수가 가지고 있는 데이터 출력 -->


	<h2>이게머야</h2>
	<li><c:out value="str" /></li>
	<li><c:out value="${str}" /></li>
	<li>${str}</li>


	<!-- 		변수 삭제 후 출력해 보기 -->
	<c:remove var="str" />
	<li>결과 : <c:out value="${str}" />
	</li>
	<li>결과${str}</li>

	<%-- 
		if문 : else가 없다. 즉 조건이 참일때만 실행된다.
		<c:if var="변수명" test="조건식(관계연산, 비교연산 => El방식으로 사용)">
			조건식 참일떄 실행할 문장;
			</c:if>
			 --%>

	<c:if test="${4<3}">
		<li>결과 : hello JSTL_1</li>
	</c:if>


	<c:if test="${4>3}">
		<li>결과 : hello JSTL_1</li>
	</c:if>

	<hr>

	<%-- avg의 점수가 80이상이면 합격 아니면 불합격 --%>
	<c:set var="avg" value="90" />
	<c:if test="${avg>= 80}">
		<li>합격</li>
	</c:if>
	<c:if test="${avg< 80}">
		<li>불합격</li>
	</c:if>


	<!-- if문은 else가 없는 불편함이 있어서
		choose문을 사용한다. (choose문은 switch 문 과 비슷하다 . 이프엘스 댓니으로 많이 사용.)
		 -->

	<%-- 
		<c:choose>
		<c:when test="조건식(관계연산, 비교연산=> El방식으로 사용)" 참일때 실행 </c:when>
		<c:when test="조건식(관계연산, 비교연산=> El방식으로 사용)" 참일때 실행 </c:when>
		<c:when test="조건식(관계연산, 비교연산=> El방식으로 사용)" 참일때 실행 </c:when>
		</c:choose>
		 --%>
	<!-- avg의 점수가 80이상이면 합격아니면 불합격. -->


	<c:choose>
		<c:when test="${avg>=80}">
			<li>합격</li>
		</c:when>
		<c:when test="${avg<80}">
			<li>불합격</li>
		</c:when>
	</c:choose>







정수는 정수 실수는 실수로 비교해야된다.
<c:set var="avg" value="85.5"></c:set>
	<c:choose>
		<c:when test="${avg>=90.0}">
			<li>A학점</li>
		</c:when>
		<c:when test="${avg>=80.0}">
			<li>B학점</li>
		</c:when>
		
		<c:when test="${avg>=70.0}">
			<li>C학점</li>
		</c:when>
		<c:when test="${avg<70.0}">
			<li>F학점</li>
		</c:when>
		
	</c:choose>



<hr>
반복문
1. 일반적인 for문
<c:forEach begin="시작값" end="끝값" step="증가값" var="사용변수">
반복 내용(EL를 활용한다.)
</c:forEach>

2.개선된 for문 (배열, ArrayList(컬렉션)에서 주로 사용)
<c:forEach var="사용변수"	items="${배열, 리스트(컬렉션) }">
반복내용 (El를 활용하다.)
</c:forEach>

<c:forEach begin="1" end="10" step="1" var="k">

${k} &nbsp;&nbsp;&nbsp;

</c:forEach>

<hr>
<c:forEach begin="1" end="10" step="1" var="k">
<c:if test="${k%2==0 }">
${k} &nbsp;&nbsp;&nbsp;
</c:if>
</c:forEach>
<hr>

<h3> 21-30까지 출력하기</h3>
<c:forEach begin="1" end="10" step="1" var="k" varStatus="vs">
${k}/ ${vs.count} /${vs.index }  / ${vs.first /${vs.last} &nbsp;&nbsp;&nbsp;
</c:forEach>
<hr>


<%-- 개선된 for문
배열생성
 --%>

<c:set var ="arr_1" value="홍길동, 임꺽정, 장실산, 일지매"/>

<c:forEach var="k" items="${arr_1}">
<li>${k }</li>
</c:forEach>























































</body>
</html>