package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService { //하나의 객체로만 이용할 수 있도록 - 싱글턴
	
	private static MysqlService mysqlService = null; // static: 메모리에 올려놓고 시작하는 것
	
	//도메인 뒤에 접속할 datebase명까지 써준다.
	private String url = "jdbc:mysql://localhost:3306/jialee_1011"; //DB는 jdbc ,3306은 DB서버, 8080은 웹 서버
	private String id = "root";
	private String pw = "root";
	
	private Connection conn = null; //db 연결과 관련된 class
	private Statement statement;
	private ResultSet res;
	
	
	// Singleton 패턴: MysqlService라는 객체가 단 하나만 생성되도록 하는 디자인 패턴(DB연결을 여러객체에서 하지 않도록 하기 위해 싱글턴으로 한다.)
	public static MysqlService getInstance() { // static이 붙은 변수(mysqlService) 써서 메소드에도 static 붙음
		if (mysqlService == null) { // null이면 새로 만든다.
			mysqlService = new MysqlService();
		} 
		return mysqlService;
	}
	
	public void connection() { 
		try {
			// 1. 드라이버를 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver()); // 주소와 생성자를 부름
			
			// 2. DB connection
			conn = DriverManager.getConnection(url, id, pw);
			
			// 3. statement: DB와 쿼리를 실행하기 위한 준비
			statement = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace(); // 오류나면 오류사항을 볼것임.
		} 
	}
	
	public void disconnection() { // 최신 먼저 끊는다. (연결한거 반대 순서로 끊는다)
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public ResultSet select(String query) throws SQLException { // 쿼리를 보내는 쪽이 에러났을 확률이 놓기때문에 오류 회피함
		res = statement.executeQuery(query);
		return res;
	}
	
	public void update(String query) throws SQLException { // 쿼리를 보내는 쪽이 에러났을 확률이 놓기때문에 오류 회피함
		statement.executeUpdate(query);
	}
}
