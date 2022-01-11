<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
	<div class="h-100 d-flex align-items-center">
		<h3 class="col-2"><a href="/lesson03/quiz02/list_template.jsp" class="text-success">Melong</a></h3>
		
		<div class="col-10">
			<form method="get" action="info_template.jsp">
				<div class="d-flex w-100">
					<input type="text" class="form-control col-6" name="search"> <%--name설정에서 받은 값을 넘긴다. --%>
					<input type="submit" class="btn btn-info" value="검색">
				</div>
			</form>
		</div>
	</div>
</header>