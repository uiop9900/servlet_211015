package com.test.quiz;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz02_insert")
public class DatabaseQuiz02 extends HttpServlet{
	
	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// mysql 선언하고 db 연동
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		
		// 테이블 만들기
		String createQuery = "create table `bookmark`\r\n"
				+ "(\r\n"
				+ "	`id` int not null primary key auto_increment\r\n"
				+ "    , `name` varchar(16) not null\r\n"
				+ "    , `url` varchar(256) not null\r\n"
				+ "    , `createdAt` timestamp default current_timestamp\r\n"
				+ "    , `updatedAt` timestamp default current_timestamp\r\n"
				+ ")\r\n"
				+ "ENGINE=InnoDB DEFAULT charset=utf8mb4;";
		try {
			mysql.update(createQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 테이블에 데이터 넣기
		String insertQuery = "insert into `bookmark`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "values \r\n"
				+ "('마론달', 'http://marondal.com')\r\n"
				+ ", ('구글', 'https://google.com')\r\n"
				+ ", ('네이버', 'https://naver.com')\r\n"
				+ ", ('다음', 'https://daum.com');";
		
		
		//db 연결 해제
		mysql.disconnection();
		// 리디렉션(사이트 리스트 화면)
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}
}
