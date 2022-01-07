<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>
	<%-- 계산은 다른 페이지에서 하고 가져올것이다. --%>
	현재 시간은?<br>
	<%@ include file="date.jsp" %><%--같은 폴더안에 있기때문에 상대경로로 적었다. 절대경로: /lesson03/ex01/date.jsp --%>
	<%-- 정적 첨부: 통으로 복사해서 붙여놓는거와 동일하다. --%>
</body>
</html>