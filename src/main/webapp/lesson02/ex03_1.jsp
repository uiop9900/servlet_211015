<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Method Form 결과</title>
</head>
<body>
<%
	String nickname = request.getParameter("nickname");
	String hobby = request.getParameter("hobby");
	String animal = request.getParameter("animal"); // 택일이라 animal로 가져오면 value가 하나임
	String[] foodArr = request.getParameterValues("food"); // 선택항복이 여러개일때(여러개의 values들 일때)
	String fruit = request.getParameter("fruit");
	
%>
<table border=1>
	<tr>
		<th>별명</th>
		<td><%= nickname %></td>
	</tr>
	<tr>
		<th>취미</th>
		<td><%= hobby %></td>
	</tr>
	<tr>
		<th>좋아하는 동물</th>
		<td><%= animal %></td>	
	</tr>
	<tr>
		<th>좋아하는 음식</th>
		<td>
			<%--<%= foodArr 		<!-- 주소값이 나온다. --> --%>
		<%
			if (foodArr != null) {
				String result = "";
				
				for (String food : foodArr) {
					// 사과,딸기,바나나
					result += food + ",";
				}
			
				out.print(result);
			}
		%>
		
		</td>
	</tr>
	<tr>
		<th>좋아하는 과일</th>
		<td><%= fruit %></td>
	</tr>
	
</table>


</body>
</html>