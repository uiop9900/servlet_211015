package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class getMethodQuiz06 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json"); //json 소문자로 다 쓰기
		
		PrintWriter out = response.getWriter();
		Integer n1 = Integer.parseInt(request.getParameter("number1"));
		Integer n2 = Integer.parseInt(request.getParameter("number2"));
		
//		  addtion: 1570,
//		  subtraction: 1430,
//		  multiplication: 105000,
//		  division: 21 , 작은 따옴표로도 가능하며 확장자가 실행이 안된다면 무언가 빠뜨린게 있는것임
		out.println("{\"addition\": " + (n1 + n2) + ", \"subtraction\": " + (n1 - n2) + 
					", \"multiplication\": " + (n1 * n2) + ", \"division\": " + (n1 / n2) + "}");
	}

}
