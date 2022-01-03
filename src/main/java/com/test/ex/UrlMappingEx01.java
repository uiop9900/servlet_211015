package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet { // extends 무조건 해야 서블릿으로 사용가능
	// 어떤 주소로 들어오면 아래와 같이 실행할지 정하는 건 Mapping이며 이건 xml에서 한다.
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//한글깨짐방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter(); // 오류는 회피한다.
		out.println("안녕");
		
		Date now = new Date(); // 현재 시간이 들어가있는 객체
		out.println(now);
		
		//formatter 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss"); // 어떤 포맷으로 넣을건지 생성자 안에 넣어주면 된다.
		// MM == month, mm == minute, a= am or pm, 
		String dateFormat = sdf.format(now); // 원하는 데이트 타입을 argument로 넣는다. 현재시간을 format을 적용해서 String으로 준다.
		out.println(dateFormat);
		// alt + 방향키: 이전 탭, 이후 탭
		
	}
}
