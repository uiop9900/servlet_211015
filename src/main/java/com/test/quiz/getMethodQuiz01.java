package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz05")
public class getMethodQuiz01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
	    Integer number = Integer.parseInt(request.getParameter("number")); //String으로 반환이라 항상 int로 변환
		
	    out.println("<html><head><title>구구단 출력</title></head><body><hr><ul>");
	    // 2 X 1...9
	    for (int i = 1; i <= 9; i++) {
	    	out.println("<li> " + number + " X " + i + " = " + (number * i) + "</li>"); // li태그 열고 닫기!!
	    }
	    out.println("</ul></body></html>");
	}
}
