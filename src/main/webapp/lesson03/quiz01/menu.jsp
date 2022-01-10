<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="bg-danger d-flex align-items-center"> <!-- d-flex하면 nav-fill이 먹힌다. 그래서 w값을 ul에게 다시 줘야 한다.-->
	<ul class="nav nav-fill w-100">
		<li class="nav-item"><a class="nav-link text-white" href="/lesson03/quiz01/template.jsp">전체</a></li> <%-- 아무것도 선택되지않을때 전체가 보이는게 맞음-> 쿼리스트링안줄것임 --%>
		<li class="nav-item"><a class="nav-link text-white" href="/lesson03/quiz01/template.jsp?id=지상파">지상파</a></li>
		<li class="nav-item"><a class="nav-link text-white" href="/lesson03/quiz01/template.jsp?id=드라마">드라마</a></li>
		<li class="nav-item"><a class="nav-link text-white" href="/lesson03/quiz01/template.jsp?id=예능">예능</a></li>
		<li class="nav-item"><a class="nav-link text-white" href="/lesson03/quiz01/template.jsp?id=영화">영화</a></li>
		<li class="nav-item"><a class="nav-link text-white" href="/lesson03/quiz01/template.jsp?id=스포츠">스포츠</a></li>
		<%--template로 쿼리스트링을 걸어줘야 디자인이 깨지지 않는다. --%>
	</ul>
</nav>