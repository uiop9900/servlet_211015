package com.test.ex;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/ex02_insert")
public class DatabaseEx02Insert extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// response.setContent 안해도 된다. response는 다른곳에서 하니까
		
		// 폼에 있는 값들을 꺼낸다(request.getParameter)
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		
		// DB연동
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection(); 
		
		//new_user 테이블에 insert한다.
		String insertQuery = "insert into `new_user` (`name`, `yyyymmdd`, `introduce`, `email`)"
				+ "values ('" + name +"', '" + yyyymmdd + "', '" + introduce + "', '" + email +"')";
		
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//DB 연결 해제
		mysqlService.disconnection();
	
		//리다리렉트 (유저 목록 화면) - 응답값을 다른화면으로 보낸다.
		response.sendRedirect("/lesson04/ex02/ex02_1.jsp");
		
		
	}

}
