<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- html의 주석: 소스보기에서 보인다 -->
	<%-- JSP의 주석: 소스보기에서 보이지 않는다. 해석되어서 html로 나오기 때문에 --%>
	<%-- 현업에서는 절대 안씀, 그냥 이런게 있구나로 알고 있으면 된다. --%>
	<h1>JSP 예제</h1>
	
	<% 
		// 자바 문법 시작 ---> 자바 주석 
		// scriptlet
		int sum = 0;
		for (int i = 0; i <= 10; i++){
			sum += i;
		}
	%>
	
	<strong>합계:</strong>
	<input type="text" value="<%= sum %>">
	
	
	<%!
		// 선언문 - 클래스 같은 느낌
		
		//field
		private int num = 100;
		
		//method
		public String getHelloWorld(){
			return "Hello World!";
		}

	%>
	<br>
	
	<%= getHelloWorld() %>	
	<br>
	<%= num + 200 %>
	
</body>
</html>