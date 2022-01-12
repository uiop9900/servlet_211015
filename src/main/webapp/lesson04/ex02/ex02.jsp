<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>
	<%-- 
		1) Request-유저 추가: ex02.jsp(폼화면) -> 
				Server-DatebaseEx02Insert.java(DB insert) 입력받은 정보를 DB에 insert한다. ->
				=> 리다이렉트 ex02_1.jsp(유저목록)
				계속해서 페이지들이 이동하고 연결되어져 있다. 
	 --%>
	 <form method="post" action="/db/ex02_insert">
	 	<p>
	 		<b>이름</b>
	 		<input type="text" name="name">
	 	</p>
	 	<p>
	 		<b>생년월일</b>
	 		<input type="text" name="yyyymmdd"> <%--data의 컬럼명과 일치시키는게 좋다. --%>
	 	</p>
	 	<p>
	 		<b>자기소개</b><br>
			<textarea name="introduce" rows="5" cols="50"></textarea>
	 	</p>
	 	<p>
	 		<b>이메일</b>
	 		<input type="text" name="email"> 
	 	</p>
	 	
	 	<p>
	 		<input type="submit" value="추가">
	 	</p>
	 </form>
</body>
</html>