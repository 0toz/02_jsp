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
	 pageContext.setAttribute("name", "홍길동"); 
	 pageContext.setAttribute("age", "24"); 
	
	 request.setAttribute("name", "둘리"); 
	 request.setAttribute("age", "32"); 
 %>
	<h2>ex10_request.jsp 에서 넘어온 정보 받기</h2>
	<h2>이름: <%=pageContext.getAttribute("name") %></h2>
	<h2>나이: <%=pageContext.getAttribute("age") %></h2>
	<hr>
	<h2>이름: <%=request.getAttribute("name") %></h2>
	<h2>나이: <%=request.getAttribute("age") %></h2>
	
	<!-- 
	ex11_result.jsp로 이동하자.
	이동방법은 redirect와 forward이다.
	redirect는 request정보도 사라진다.
	forward는 reqest정보는 사라지지않느다.
	 -->
	<% response.sendRedirect("ex11_request.jsp"); %>
	
	<%-- <% requst.getRequestDispatcher("ex11.request") %> --%>
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>