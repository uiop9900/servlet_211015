<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>

<%
	MysqlService mysql = MysqlService.getInstance();
	mysql.connection();
	
	String selectQuery = "select A.*, B.* from `used_goods` as A join `seller` as B	on A.sellerId = B.id order by A.id desc;";
	ResultSet result = mysql.select(selectQuery);
	
%>


<section>
	<div class="d-flex justify-content-between flex-wrap">
	
<%
	while(result.next()) {
		String picture = result.getString("A.picture");
			if (picture == null) {
				picture = "https://3.bp.blogspot.com/-ZKBbW7TmQD4/U6P_DTbE2MI/AAAAAAAADjg/wdhBRyLv5e8/s1600/noimg.gif";
				}
%>	
	
		<!-- 한 상자 -->
		<div class="content-box border-carroit mt-2 p-2">
			<div>
				<img src="<%= picture %>" alt="사진1" width="330" height="180">
			</div>
			<div class="mt-1 font-weight-bold"><%= result.getString("A.title") %> </div>
			<small class="text-secondary"><%= result.getInt("A.price") %> </small>
			<div class="text-carroit font-weight-bold"><%= result.getString("B.nickname") %> </div>
		</div>	
	
<%
			
	}
%>

	</div>
</section>

<%
	mysql.disconnection();
%>