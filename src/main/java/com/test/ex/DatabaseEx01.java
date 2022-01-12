package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/ex01")
public class DatabaseEx01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// DB 연결
		MysqlService mysqlService = MysqlService.getInstance(); // singleton이라 한개의 객체만 생성됨, static때문에 이게 가능하다. static은 무조건 사용가능함. 이미 서버에 할당되어있음
		mysqlService.connection(); // DB 연결
		
		// insert쿼리
		String insertQuery = "insert into `used_goods` (`sellerId`, `title`, `description`, `price`)"
				+ "values (4, '고양이 간식 팝니다.', '저희 고양이가 입맛이 까다로워서 잘 안먹어요.', 2000 )"; // 작은 따옴표 하기
		
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e1) {
			e1.printStackTrace(); //오류가 서버에 뜬다.
		}
		
		// select 쿼리
		// 결과값 출력
		String selectQuery = "select * from `used_goods`"; // db에서 검증해보고 넣는다. 세미콜론 뺀다.
		PrintWriter out = response.getWriter();
		
		try {
			ResultSet resultSet = mysqlService.select(selectQuery); // 아까 에러를 위로 던졌기때문에 여기로 온것 - 무조건 try/catch
			
			// 행에대해 루프해야해서 while문
			while(resultSet.next()) { // 결과행이 있는 동안 수행
				out.println(resultSet.getInt("id")); // as 했으면 as명으로 받을수도 있다.
				out.println(resultSet.getString("title"));
				out.println(resultSet.getString("description"));
				out.println(resultSet.getInt("price")); // type에 따라 함수가 다르다.
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		// DB 연결 해제 
		mysqlService.disconnection();// catch로 묶여야 close까지 완벽하게 잘 된다.
	}
	
}
