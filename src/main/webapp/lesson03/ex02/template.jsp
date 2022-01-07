<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿 구성</title>


	<!-- bootstrap 추가! -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<style>
header {height: 50px;}
.bottom {height: 900px;}
section {height: 90%;}
footer {height: 10%;}
</style>
</head>

<body>
	<div id="wrap"><%--width값 안주면 페이지를 다 차지한다. --%>
		<jsp:include page="header.jsp"></jsp:include> 
		<%-- <jsp:include page="header.jsp"/>  이렇게 닫으면 뒤에 태그 안 넣어줘도 된다. 예전 <br>같은 느낌 --%>
		
		<div class="bottom d-flex">
			<jsp:include page="menu.jsp"/>
			<div class="right bg-warning col-10">
				<%
					String contentName = "content2.jsp";
				%>
				<jsp:include page= "<%= contentName %>"/>
				<jsp:include page="footer.jsp"/>
			</div>
		</div>
	</div>
</body>
</html>