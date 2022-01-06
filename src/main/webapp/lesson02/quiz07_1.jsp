<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>

	<!-- bootstrap 추가! -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
<% // object로 선언하면 다운캐스팅을 통해 (instaneceof) value의 진짜 값을 찾아서 선언해야한다. (이 문제에서는 double형)
List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	list.add(map);
	

%>

	<div class="container">
		<h1 class="text-center">검색 결과</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>메뉴</th>
					<th>상호</th>
					<th>별점</th>
				</tr>
			</thead>
			<tbody>
				<% 
				
				String keyword = request.getParameter("menu");
				String underFour = request.getParameter("underFour"); // checkbox이지만 하나의 value만 가져오기때문에 그냥 getParameter로 해도된다.
				// 체크 안함: null, 체크함 :  "true"
				boolean exclude = underFour != null; // 체크됨(4점 이하 제외) -> "true"값이 있으므로 null값이 아니다. -> 즉 exclude는 체크를 했는지에 대한 변수
				
				for (Map<String, Object> item : list) { // 아이템이 있는 만큼 하나의 아이템을 출력
					//메뉴 명이 같을 때는 무조건 출력한다.
					if (keyword.equals(item.get("menu"))) { //검색어가 같을 경우에만 아래에서 출력한다.
						if (exclude && (double)item.get("point") < 4.0) { //skip 조건: exclude가 체크됨 && 4점 이하 , object이기때문에 캐스팅을 통해 원래 형태로 바꿔줘야한다.
							continue;
						}
				
				%>			
						<tr>
							<td><%= item.get("menu") %></td>
							<td><%= item.get("name") %></td>
							<td><%= item.get("point") %></td>
						</tr>
					
				<% 		
						}
			 		}
		 		%>
				
			</tbody>
		</table>
	</div>

</body>

</html>