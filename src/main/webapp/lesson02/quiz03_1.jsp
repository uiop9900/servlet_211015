<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>

	<!-- bootstrap 추가! -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
<%
	int height = Integer.parseInt(request.getParameter("height"));
	int weight = Integer.parseInt(request.getParameter("weight"));
	double bmi = (double)weight / ((height / 100.0) * (height / 100.0));
	
	String result;
	
	//이런식으로 if문 하면 위에서 걸러지기 때문에 굳이 여러 조건을 하나에 넣지 않아도 된다.
	if (bmi <= 20) {
		result = "저체중";
	} else if (bmi <= 25){
		result = "정상";
	} else if (bmi <= 30){
		result = "과체중";
	} else {
		result = "비만";
	}
	
	/*if (bmi >= 31) {
		result = "비만";
	} else if (bmi >= 26 && bmi <=30){
		result ="과체중";
	} else if (bmi >= 21 && bmi <=25){
		result ="정상";
	} else{
		result ="저체중";
	}*/
%>
	<div class="container">
		<h1>BMI 측정결과</h1>
		<div class="display-3">당신은 <span class="text-info"><%= result %></span> 입니다.</div>
		<div>BMI 수치: <%= bmi %></div>
	</div>
</body>
</html>