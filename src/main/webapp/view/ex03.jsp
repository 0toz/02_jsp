<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InnerObject : out</title>
</head>
<body>
<%-- 
	JSP내장 객체 : JSP 에서 사용할 수 있도록 자체 지원하는 객체를 말한다.
	request, response, out, page, pageContext, session, application
	config, exeception
	
	out은 화면 (브라우저)에 출력할 떄 사용하는 객체 
	out에서는 태그사용도 가능하다.

 --%>

<h2> hello JSP</h2>
<hr>


<%out.println("<h2> HELLO JSP</h2>"); %>
<hr>
<% String str = "HELLO JSP"; %>
<h2><%  out.println(str);%></h2>
<hr>
<h2><%= str %></h2>
</body>
</html>