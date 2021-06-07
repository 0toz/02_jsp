
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 	세션 :  서버와 클라이언트 간의 접속을 유지시켜주기 위한 객체
	(https는 요청을 하ㅗㄱ 응답을 하면 접속이 끊어진다.)
	
	클라이언트 측에서 서비스를 요청하면 서버측에서 클라이언트에게 클라이언트를 구별할 수 있는 세션 ID를 부여하고 서버측에서 해당 ID로 이전 접속 여부를 구별한다.
	
	쿠키는 클라이언트에서 저장하는 저장공간(클라이언트에도 있고, 서버에도 있다.)
	세셔는ㄴ 서버에서 저장하는 저장공간(서버에서만 생성)
	--
	주요메소드
	* 데이터 저장 : session.setAttribute("이름",데이터);
	*데이터 호출 : session.getAttribute("이름");
	*데이터 삭제 : session.removeAttibute("이름";)

* getID(): 세션의 고유 ID를 반환
*getCreationTime(): 세션이 생성된 시가능 반환
*getlastAccessedTime() : 마지막에 접근한 시간 반환
invalidate(): 세션 전체를 초기화
setMaxInativeInterval(시간) : 세션 시간 제한
세션 생명 주기 : 시간을 지정하 지 않으면 브라우저가 종료되면 세션데이터도 사라진다.
-->


 <% pageContext.setAttribute("name", "홍길동");
      pageContext.setAttribute("age", 24);
      
      request.setAttribute("name", "둘리");
      request.setAttribute("age", 32);
      
      session.setAttribute("name", "마루치");
      session.setAttribute("age", 18);
   %>
   
   <h2>이름 : <%=pageContext.getAttribute("name") %></h2>   
   <h2>나이 : <%=pageContext.getAttribute("age") %></h2>
   <hr> 
    
   <h2>이름 : <%= request.getAttribute("name")%></h2>   
   <h2>나이 : <%= request.getAttribute("age")%></h2>  
   <hr> 
   
   <h2>이름 : <%= session.getAttribute("name")%></h2>   
   <h2>나이 : <%= session.getAttribute("age")%></h2>  
   <hr> 
</body>

</body>

</html>