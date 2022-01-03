package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz04")
public class UrlMappingQuiz04 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		// <ul> 혹은 <ol> 안에 <li>임.
		out.print("<html><head><title>리스트</title></head><boby><ul>");
		for (int i = 1; i <= 30; i++) {
			out.print("<li>" + i + "번째리스트</li>");
		}
		out.print("</ul></body></html>");
	}
}
