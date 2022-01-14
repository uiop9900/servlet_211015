package com.test.quiz;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz03_insert")
public class DatabaseQuiz03Insert extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// db 연동
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		//파라미터 가져오기
		int sellerId = Integer.valueOf(request.getParameter("sellerId"));
		String title = request.getParameter("title");
		int price = Integer.parseInt(request.getParameter("nickname"));
		String description = request.getParameter("description");
		String picture = request.getParameter("picture");
		
		//sellerId 찾기
		
		
		// insert문
		String insertQuery = "insert into `used_goods` (`sellerId`, `title`, `description`, `price`, `picture`) "
				+ "vlaues (" + sellerId + ", '" + title + "', '" + description + "', " + price + ", '" + picture + "')";
		
		try {
			mysql.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		// db 해지
		mysql.disconnection();
		// 리다이렉트 template으로.
		response.sendRedirect("/lesson04/quiz03/template_insert.jsp");	
	}
}
