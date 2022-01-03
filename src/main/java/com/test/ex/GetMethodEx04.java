package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class GetMethodEx04 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html"); // table로 꾸며서 출력할것이다.
		
		PrintWriter out = response.getWriter();
		//가입하기 버튼 누르는 순간 request로 넘어온다
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
//		out.print("userId: " + userId + "<br>");
//		out.print("name: " + name + "<br>");
//		out.print("birth: " + birth + "<br>");
//		out.print("email: " + email + "<br>");
		// 쿼리 파라미터(쿼리 스트링)가 url에 보이고 이걸 복붙하면 또 이 페이지가 나온다. -> get방식
		//테이블로 출력: 서블릿에서 부트스트립을 넣긴 힘들다.
		out.print("<html><head><title>회원 정보</title></head><body>");
		// 아이디 | jia9510
		out.print("<table border=1>");
		
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");

		out.print("</table></body></html>");
		
	}
}
