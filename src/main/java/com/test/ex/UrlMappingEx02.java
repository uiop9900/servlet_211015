package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// 이제 xml에 따로 기입하지 않고 어노테이션을 통해 주소를 걸어준다.

@WebServlet("/servlet/ex02")
public class UrlMappingEx02 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html"); // html
		
		PrintWriter out = response.getWriter();
		
		// 1 ~ 10 합계: 
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		//자바안에 html이 이렇게 섞여있는 것이 서블릿! 그래서 요즘에 많이 안쓰인다는 이유다.
		//이 안에 html이 들어간다, html 분리가능. 다 조합해서 하나로 인식한다.
		out.print("<html><head></head><body>");
		out.print("합계: <strong>" + sum + "</strong>");
		out.print("</body></html>");
		
	}
	
}
