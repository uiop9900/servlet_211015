<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교포문고</title>

	<!-- bootstrap 추가! -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
<%
List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<String, Object>() {
	    { 
	        put("id", 1000);
	        put("title", "아몬드"); 
	        put("author", "손원평"); 
	        put("publisher", "창비");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1001);
	        put("title", "사피엔스"); 
	        put("author", "유발 하라리"); 
	        put("publisher", "김영사");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1002);
	        put("title", "코스모스"); 
	        put("author", "칼 세이건"); 
	        put("publisher", "사이언스북");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1003);
	        put("title", "나미야 잡화점의 기적"); 
	        put("author", "히가시노 게이고"); 
	        put("publisher", "현대문학");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
	    } 
	};
	list.add(map);	
%>
		<% 
		// 테이블에 보여줄 한 권의 책 정보 뽑아내기
		Map<String, Object> target = new HashMap<>();
		int id = Integer.parseInt(request.getParameter("id")); // object로 선언되었기때문에 나중에 자료형을 잘 맞춰야한다.
			
			for (Map<String, Object> item : list){
				if ((int)item.get("id") == id){ // 캐스팅은 object로 선언된 변수의 원래 자료형을 넣어줘야지 된다.
					target = item; // 둘다 map이니까 = 으로 넣는다.
					break; // 찾았으면 이제 뒤쪽 id는 반복안해도 된다.
				}
			}
		%>
		<div class="container d-flex">
			<%--책 표지 --%>
			<div><img src="<%= target.get("image") %>" alt="책 표지" width="300"></div> 
			<%--책 정보 --%>
			<div> <%--span태그에 class="d-bolck" 하면 인라인 -> 블럭으로 바뀐다. --%>
				<span class="display-2 font-weight-bold d-block"><%= target.get("title") %></span>
				<span class="display-3 text-info d-block"><%= target.get("author") %></span>
				<div class="display-3 text-secondary"><%= target.get("publisher") %></div>
			</div>
		</div>
		<%--get방식으로 호출 -> 쿼리스트링, 행을 가르키는 건 id, 무언가 넘겨야할때는 key값응로 넘긴다. post는 form태그로만 가능하다. key는 유일한 값 --%>
</body>
</html>