package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz07")
public class getMethodQuiz07 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		// 값이 넘어오는 것에 breakpoint를 넣어서 값이 잘 들어오는 지 확인할수있음
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		out.print("<html><head><title>주문 결과</title></head><body>");
		// 하나의 조건만 나오게 -> 배달불가와 결제불가가 같이 뜨지 않게끔, 모든 if문을 통과하면 정상적 작동이 되게끔
		// 프론트에선 조건에 걸리면 무조건 return 시켰지만 여기서는 최대한 else if 문을 해서 다 거른다.
		if (address.contains("서울시") == false) { // stratAt도 사용가능.
			out.print("배달 불가 지역입니다.");
		} else if (card.equals("신한카드")) {
			out.print("결제 불가 카드입니다.");
		} else {
			// 정상일 때 
			out.print(address + "<b> 배달 준비중</b><br>");
			out.print("결제금액: " + price + "원");
		}
		out.print("</body></html>");
	}
}
