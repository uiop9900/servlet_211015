<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET Method-Server</title>
</head>
<body>
	<%-- request, out 객체는 JSP에서 바로 사용할수있다. --%>
	<strong>아이디</strong>
	<%= request.getParameter("user_id") %>
	<br>
	
	<strong>이름</strong>
	<%= request.getParameter("name") %>
	<br>
	
	<strong>나이</strong>
	<%= request.getParameter("age") %>
</body>
</html>