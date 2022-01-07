<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%--모든 페이지 상단에는 항상 jsp라는 선언이 있어야 한다. 단, 그외에 다른 부분은 없어도 된다.
왜냐면 어차피 하나의 jsp파일에 import될거니까 --%>

<p>
	현재 시간: <%= Calendar.getInstance().getTime() %> <%--이런 form은 date객체이다 --%>
</p>