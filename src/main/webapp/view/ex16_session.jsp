<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

// 원래 DB 검사를 해서 로그인 처리하지만
// 여기서는 id와 pw가 같으면 로그인 성공이라고 취급하자.


if(id.equalsIgnoreCase(pw)){
	session.setAttribute("login", "ok");
			session.setAttribute("id", "ok");
}else{
	
	session.setAttribute("login", "no");
	
}
//redirect 나 forward 모두 session 정보는 저장되기때문에 상관헙사.
response.sendRedirect("ex17_session.jsp");















%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>