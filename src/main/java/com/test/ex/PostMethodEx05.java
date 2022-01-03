package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class PostMethodEx05 extends HttpServlet{
	
	//doGet() -> get method라는 의미, doPost로 메소드할경우, url로 요청해도 페이지가 뜨지않는다.
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	//	response.setCharacterEncoding("utf-8");
		response.setContentType("text/html"); // 여기는 절대 주석하지말아라,,
		
		// request자체도 들어오면서 한글을 인식하지 못함 -> response와 동일하게 인코딩 코드 넣어주어야한다.
		
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		// 테이블로 출력  아이디|jia9510
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>회원 정보</title></head><body><table border=1>");
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");
		out.print("</table></body></html>");
		
		
	}
}
