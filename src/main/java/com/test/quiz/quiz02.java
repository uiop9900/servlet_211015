package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class quiz02 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain"); // 딱 글자만
		
		PrintWriter out = response.getWriter();
		Date now =  new Date();
		
		// 현재 시간은 14시 52분 43초 입니다.
		SimpleDateFormat sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
		out.println(sdf.format(now));
	}
}
