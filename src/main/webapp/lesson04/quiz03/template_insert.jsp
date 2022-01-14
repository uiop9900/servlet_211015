<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HONG당무 마켓</title>
	<!-- script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

	<!-- bootstrap 추가! -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<style>
	header {height: 100px;}
	nav {height: 50px;}
	.bg-carroit {background-color: #FF7F50;}
	.content-box:hover {background-color: #F5AF64;}
	.border-carroit {border-style: solid; border-color: #FF7F50; width: 350px;}
	.text-carroit {color: #FF7F50;}
	.submit-btn {background-color: #e7e7e7; color: black; border:none;  padding: 10px 20px;
				font-weight: bold; text-align: center;}

</style>

</head>

<body>
	<div class="container">
		<jsp:include page="header.jsp"/>
		<jsp:include page="nav.jsp"/>
		<jsp:include page="section_insert.jsp"/>		
		<jsp:include page="footer.jsp"/>
	</div>
	
	
	<script>
		$(document).ready(function(e){
			$("#join").on("click", function(){
				let sellerId = $("select[name=sellerId]").val();
				let title = $("#title").val();
				let price = $("#price").val();
				let description = $("#description").val();
				let picture = $("#picture").val();
				
				if (sellerId == "") {
					alert("닉네임을 선택하세요.");
					return;
				}
				if (title == "") {
					alert("제목을 기입하세요.");
					return;
				}
				if (price == "") {
					alert("제목을 기입하세요.");
					return;
				}
				if (description == "") {
					alert("제목을 기입하세요.");
					return;
				}
				if (picture == "") {
					alert("제목을 기입하세요.");
					return;
				}
				
				alert("상품이 등록되었습니다.");
			});
			
			
		});
	</script>
</body>
</html>