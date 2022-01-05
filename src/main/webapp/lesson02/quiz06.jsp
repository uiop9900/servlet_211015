<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장보기 목록</title>

	<!-- bootstrap 추가! -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
<%
		List<String> goodsList = Arrays.asList(new String[]{ 
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
	

%>
	<div class="container">
		<h1 class="text-center">장보기 목록</h1><!-- 글자 자체를 중앙정렬: class="text-center -->
		<table class="table text-center"><!-- table태그안에 text-center속성을 넣으면 table안의 text가 다 중앙정렬 -->
			<thead><!-- 제목이 위에 있을 경우 <thead>와 <tbody>로 나누기 -->
				<tr>
					<th>번호</th>
					<th>목록</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (int i = 0; i < goodsList.size(); i++){	
				%>
					<tr>
						<td><%= i+1 %></td>
						<td><% out.print(goodsList.get(i));
							%></td>
					</tr>
				<%
					}
				%>
			</tbody>
		
		
		</table>
	</div>
</body>
</html>