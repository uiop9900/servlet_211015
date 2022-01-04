<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체격 조건</title>

	<!-- bootstrap 추가! -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
		<h1>체격 조건 입력</h1>
	<!-- 상대경로: 앞에 /가 안붙는 건 상대경로, 이름만 넣으면 된다.  -->
	<!-- 절대경로: 앞에 /로 시작해서 풀주소 입력-->
	<!-- form태그에는 설정을 넣지않는다. div를 따로 만든다 -->
		<form method="get" action="/lesson02/quiz03_1.jsp">
			<div class="d-flex justify-content-start align-items-end">
				<input type="text" class="form-control col-2" name="height" placeholder="키를 입력하세요."> 
				<span class="ml-2 mr-4">cm</span>
				<input type="text" class="form-control col-2" name="weight" placeholder="몸무게를 입력하세요.">
				<span class="ml-2 mr-4">kg</span>
				<input type="submit" value="계산" class="btn btn-info">
			</div>
		</form> 
	</div>
	
</body>
</html>