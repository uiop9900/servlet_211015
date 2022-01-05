<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>

	<!-- bootstrap 추가! -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
<%
	int cm = Integer.parseInt(request.getParameter("length"));
	String[] typeArr = request.getParameterValues("lengthType"); //여러개의 파라미터를 가져올때(checkbox)
	
	/*String total = null;
	
	String inch = "";  
	String yard = "";	
	String feet = "";	
	String meter = "";	
	
	for (String type : typeArr){
		if (type.equals("inch")){
			double result = cm * 0.393701;
			inch = result + "in";
		} else if (type.equals("yard")){
			double result = cm * 0.0109361;
			yard = result + "yd";
		} else if (type.equals("feet")){
			double result = cm * 0.0328083;
			feet = result + "ft";
		} else {
			double result = cm * 0.01;
			meter = result + "m";
		}
	}
	total = inch + "<br>" + yard +"<br>" + feet +"<br>" + meter +"<br>"; 	*/
%>

	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= cm %>cm</h3><hr>
		
		<h2>
			<%
				for (String type : typeArr) { //구하는 즉시 out.print로 할 예정
					if (type.equals("inch")) { // cm to inch
						double inch = cm * 0.393701;
						out.print(inch + " in<br>"); // 줄바꿈하려면 <br>로 해주면 된다. 
					} else if (type.equals("yard")) {
						double yard = cm * 0.0109361;
						out.print(yard + " yd<br>");
					} else if (type.equals("feet")) {
						double feet = cm * 0.0328084;
						out.print(feet + " ft<br>");
					} else if (type.equals("meter")){
						double meter = cm * 0.01;
						out.print(meter + " m");
					}
				}
			%>
		</h2>
	</div>
</body>
</html>