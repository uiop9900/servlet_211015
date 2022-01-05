<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>

	<!-- bootstrap 추가! -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
<%
	int number1 = Integer.parseInt(request.getParameter("number1")); // 넘겨주지 않으면 null값이 될수있음 -> int로 변환과정에서 오류가 생길수있다.
	int number2 = Integer.parseInt(request.getParameter("number2"));
	
	String operator = request.getParameter("operator");
	 
	double result = 0.0; // 여기는 기본이 0임.
	String printOperator = null; // Sring같이 시작되는 type은 null값을 기본으로 넣는다.
	
	//switch문으로 해보기
	switch(operator) {
	case "plus":
		result = number1 + number2;
		printOperator = "+";
		break; // break 필수임, 하지않으면 아래의 모든 코드를 실행한다.
	case "minus":
		result = number1 - number2;
		printOperator = "-";
		break;
	case "multiple":
		result = number1 * number2;
		printOperator = "X";
		break;
	case "devide"://else == default 
		result = (double)number1 / number2;
		printOperator = "/";
		break;
	}
	
	// if문
	/*if (operator.equals("+")){
		result = number1 + number2;
	} else if (operator.equals("-")){
		result = number1 - number2;
	} else if (operator.equals("X")) {
		result = number1 * number2;
	} else {
		result = (double)number1 / number2;
	}*/
	
%>
	<div class="container">
		<h1>계산결과</h1>
		<div class="display-3">
		<% // 이렇게 바로 자바를 통해서 out으로 출력이 가능하다
			out.print(number1 + " " + printOperator + " " + number2 + " = ");
		%>
		<span class="text-info"><%= result %></span> 
		</div>
	</div>
</body>
</html>