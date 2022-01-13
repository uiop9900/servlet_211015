package com.test.quiz;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz02_insert")
public class DatabaseQuiz02Insert extends HttpServlet{
	
	@Override 
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// mysql 선언하고 db 연동
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		
		// form으로 받은 거 가져오기
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// 테이블에 데이터 넣기
		String insertQuery = "insert into `bookmark` (`name`, `url`) values ('" + name+"', '" + url + "')";
		
		try {
			mysql.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//db 연결 해제
		mysql.disconnection();
		// 리다이렉트(사이트 리스트 화면)
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}
}
