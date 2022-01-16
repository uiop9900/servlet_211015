<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<%
	//db연동
	MysqlService mysql = MysqlService.getInstance();
	mysql.connection();
	
	//select를 통해 realtor의 이름 꺼내기
	String query = "select * from `seller`";
	ResultSet result = mysql.select(query);
%>



<section>
	<br>
	<div class="display-3">물건 올리기</div>
	<br><br>
	
	<form method="post" action="/db/quiz03_insert">
		<%-- 1st row --%>
		<div class="d-flex justify-content-around">
			<%--아이디 --%>
			<div class="col-3">
				<select class="form-control" id="sellerId" name="sellerId">
					<option value="default">-아이디 선택-</option>
<% 
			// 출력
				while (result.next()) {
				
%>
					<option value="<%= result.getInt("id") %>"><%= result.getString("nickname") %></option>				
<%
				}
%>
					
				</select>
			</div>
			
<%
	mysql.disconnection();
%>

			<%--title --%>
			<div class="col-5">
				<input type="text" id="title"class="form-control" placeholder="제목" name="title">
			</div>
			<%--price --%>
			<div class="input-group col-4">
				<input type="text" id="price" class="form-control" placeholder="가격" name="price">
				<span class="input-group-text">원</span>
			</div>
		</div>
		
		<%-- 2nd row --%>
		<div class="mt-4">
			<textarea class="form-control" rows="5" cols="18" placeholder="설명" id="description" name="description"></textarea>
		</div>
		
		<%-- 3rd row --%>
		<div class="input-group mt-4">
			<span class="input-group-text">이미지 url</span>
			<input type="url" class="form-control w-100" id="picture" name="picture"> 
		</div>
		
		<%-- 4rd row --%>
		<div class="mt-4">
			<input type="submit" id="join" value="저장" class="submit-btn form-control w-100">
		</div>
		
	</form>
</section>