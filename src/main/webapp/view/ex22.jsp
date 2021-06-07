<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>

<!-- 페이지 지시어 속성 중 isErrorPage="true"을 지정해야 ex21_error.jsp에서 발생한 오류 처리를 할 수 있다. -->
<h2>요청 처리 과정에서 문제가 발생되었습니다 빠른시일안에 수정하겠습니다.</h2>
<hr>
<%--jsp 내장 객체중 exception은 반드시 페이지 지시어 중 isErrorPage="true"가 지정된 상태에서 사용 --%>

<h2>에러 타입 : <%=exception.getClass().getName() %></h2>
<h2>에러 메시지 : <%=exception.getMessage() %></h2>


</body>
</html>