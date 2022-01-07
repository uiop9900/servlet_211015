<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜</title>

	<!-- bootstrap 추가! -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<h1>오늘부터 1일</h1>
<%
	Calendar today = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 d일");
	// out.print("오늘: " + sdf.format(today.getTime()));
	//today.add(today.DATE, + 100);
	//out.print("100일후" + sdf.format(today.getTime()));
	today.add(Calendar.DATE, -1); // 오늘부터 1일이라 -1해줘야 한다.
	
	for (int i = 100; i <= 1000; i += 100){ // 앞에서 100일을 한게 계속해서 축적되기 때문에 아예 날짜를 정해줘야 한다.
		today.add(Calendar.DATE, 100);
%>
	<div class="display-4"><%= i %>일: <span class="text-danger"><%= sdf.format(today.getTime()) %></span></div>

<% 
		
	}
%>
</body>
</html>