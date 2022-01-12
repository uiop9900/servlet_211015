package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz01")
public class DatabaseQuiz01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// DB 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		//insert 쿼리
		String query = "insert into "
		
		//select 쿼리
		String query = "select * from `real_estate` order by `id` desc limit 10";
		PrintWriter out = response.getWriter();
		try {
			ResultSet resultSet = mysqlService.select(query); // 쿼리 넣었음
			
			while(resultSet.next()) {
				out.println("매물주소: " + resultSet.getString("address") + ", 면적: " + resultSet.getInt("area") + ", 타입: " + resultSet.getString("type"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		mysqlService.disconnection();
	}
}
