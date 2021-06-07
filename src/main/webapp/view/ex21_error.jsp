<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"errorPage="ex22.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러처리</title>
</head>
<body>

<h2> 에러처리</h2>
 age : <%= Integer.parseInt(request.getParameter("age")) %>


<h3>
<%-- <%try{ %>
	age : <%=Integer.parseInt(request.getParameter("age"))%>;
	<%}
catch(Exception e){
		out.println("age 파라미터 값이 올바르지않습니다.");}
		%> --%>
	

</h3>





</body>
</html>