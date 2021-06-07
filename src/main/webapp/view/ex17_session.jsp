<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="ex22.jsp" %>

<%
// 세션정보를 불러와서 검사에 사용한다.
//세션 정보는 ibject로 나오기 떄문에 형변환을 해야한다.

String login = (String) session.getAttribute("login");
if (login.equalsIgnoreCase("no")) {
%>

<script>
	alert("로그인실패");
	location.href = "ex15_session_login.jsp ";
</script>

<%
}
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function view_go() {
		location.href = "ex19_cartview.jsp"
	}
	function logout_go() {
		location.href = "ex20_logout.jsp"
	}
</script>






</head>
<body>
	<h2>
		<%=session.getAttribute("id")%>님 로그인 성공
	</h2>

	<form action="ex20_result.jsp" method="post">
		<select name="fruits">
			<option>:: 선택하세요 ::</option>
			<option>수박</option>
			<option>참외</option>
			<option>사과</option>
			<option>귤</option>
			<option>배</option>

		</select> <input type="submit" value="장바구니 추가">
	</form>
	<button onclick="view_go()">장바구니 보기</button>
	<button onclick="logout_go()">로그아웃</button>

</body>
</html>