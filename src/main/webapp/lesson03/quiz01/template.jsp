<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채널 안내</title>

	<!-- bootstrap 추가! -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<style>
header {height: 50px;}
nav {height: 50px;}

a {color: #fff;}
a:hover {color: #fff;}
th, td {text-align: center;}
footer {height: 50px;}
</style>
<%--section에 height값을 주지 않으면 알아서 데이터 있는 만큼 크기가 자동조정된다. 그렇기에 굳이 height 안정해줘도 된다. --%>
</head>
<body>
	<div class="container">
		<jsp:include page="header.jsp"/> <%--원래는 열고 닫는 태그이기때문에 맨 마지막에 / 꼭 넣어줘야 한다. --%>
		<jsp:include page="menu.jsp"/>
		<jsp:include page="content1.jsp"/>
		<jsp:include page="footer.jsp"/>
	</div>
	
</body>
</html>