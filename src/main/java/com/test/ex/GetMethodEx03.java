package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class GetMethodEx03 extends HttpServlet { // request -> Servlet -> response
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException { // input과 output으로 생각
		response.setCharacterEncoding("utf-8"); // 여기 브레이크포인트로 많이 둔다.
		response.setContentType("text/json"); // 이번에 Json으로 값을 줘보기
		
		String userId = request.getParameter("user_id"); // request에 있는 거니까 request이용하고 key를 넣어준다.
		String name = request.getParameter("name");
		Integer age = Integer.parseInt(request.getParameter("age")); // 항상 String으로 반환함.
		// Integer은 null값이 가능 그렇기에 사용자가 입력을 안하는 경우에 대비해 Integer를 사용해야한다.
		// int는 null값이 없고 기본값이 0이라, 입력안했을때 null값을 넣을 수 없다. 
		// null값을 parseInt하면 에러가 생긴다.
		// 원래는 if문을 통해 null값이 아니면 넣어라는 식으로 해야 에러가 안난다. if (request.getParameter("age")) != null
		// 500에러: 서버에러 -> console로 어디서 났는지 확인
		// 400에러: parameter를 잘못 넘겼을때 에러.
		
		PrintWriter out = response.getWriter();
		// "text.plain"
//		out.println("user_id: " + userId);
//		out.println("name: " + name);
//		out.println("age: " + age);
	
		// JSON(Javascript Object Notation)으로 response 구성하기
		// {"user_id":"jia9510", "name":"jiaLee", "age":28}
		// 모양을 맞춰주면 JSON으로 인식함. " -> \"
		out.print("{\"user_id\":\"" + userId + "\",\"name\":\"" + name + "\",\"age\":" + age + "}");
		
		
	}

}
