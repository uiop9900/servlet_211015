<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이번달 달력</title>

	<!-- bootstrap 추가! -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
<%
	// head에 넣을 yyyy-MM
	Calendar today = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	String thisMonth = sdf.format(today.getTime());
	
	// 첫 날
	Calendar Date = Calendar.getInstance();
	Date.set(Calendar.DAY_OF_MONTH, 1);

	// 첫 요일 // 3:화
	int firstDay = Date.get(Calendar.DAY_OF_WEEK);
	int lastDay = Date.getActualMaximum(Calendar.DATE);
	
%>
	<div class="container">
		<h1 class="text-center"><%= thisMonth %></h1>
		<table class="table">
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
				<%
				int week = Date.get(Calendar.WEEK_OF_MONTH); // 주
				int day = 1 - (firstDay - 1);
				for (int i = 0; i < week; i++) { // 주마다
					out.print("<tr>");
					for (int j = 0; j < 7; j++) { // 일마다
						out.print("<td>");
						if (day > 0) {
							out.print(day);
						
						}
						out.print("</td>");
						day++;
						if (day > lastDay) {
							break;
						}
					}
					if (day > lastDay) {
						break;
					}
					out.print("</tr>");
				}
				
				%>
			</tbody>
		</table>
	</div>
</body>
</html>