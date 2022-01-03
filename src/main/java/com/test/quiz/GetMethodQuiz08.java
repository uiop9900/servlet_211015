package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz08")
public class GetMethodQuiz08 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
	
		String keyword = request.getParameter("keyword");
		
		// request -> Servlet -> response 
		// 무언가 에러일때 여기서 어느 단계에서 잘못되었는지 아는게 중요
		// 값이 넘어올때 제대로 넘어왔나 확인 필.(request)
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>검색 결과</title></head><body>");
		
		// 꺼내는 요소 하나하나들은 String이다.
		Iterator<String> iter = list.iterator();
		while(iter.hasNext()) {
			String line = iter.next(); // 이건 무조건 한번만 선언.
			
			//검색 - <b>하는거 과제로 해보기.
//			if(line.contains(keyword)) {
//				out.print(line + "<br>");
//			}
			
			// 풀이1) - 한문장에 하나만 있다고 가정(두개이상이어도 하나만 bold가 되는 방법)
//			int index = line.indexOf(keyword); // index값을 반환한다.
//			if(index > -1) { // -> 있다. 없으면 -1이 나온다.
//				StringBuffer sb = new StringBuffer(); // 이 클래스를 생성해서 append하면 String안에 속성이 추가된다.
//				sb.append(line); // 검색된 문장이 sb에 저장된다.
//				sb.insert(index, "<b>"); // 어느 위치, 어느 것 -->  |맛집 이부분에 <b>태그를 추가한다. - 여는 태그
//				sb.insert(index + keyword.length() + 3, "</b>"); // <b>의 길이=3, keyword만큼,  맛집| 이 부분에 </b>태그를 추가. - 닫는 태그
//				
//				out.print(sb + "<br>"); // sb안에 있는 문장이 출력됨
//			}
			
			// 풀이2) - 키워드를 기준으로 split // 모든 맛집으로 할거면 루프 돌려야함
//			if (line.contains(keyword)) { // line안에 키워드가 있으면
//				String[] words = line.split(keyword); //키워드 기준으로 자름 -> 키워드 앞, 뒤 2개밖에 없음
//				out.print(words[0] + "<b>" + keyword + "</b>" + words[1] + "<br>");
//			}
			
			// 풀이3) 중복값 다 찾음 -> JSP에서는 정규표현식 써야한다.
			if (line.contains(keyword)) {
				line = line.replace(keyword, "<b>" + keyword + "</b>"); // String으로 return이라 다시 저장해야한다.
				out.print(line + "<br>");
			}
			
		}

		out.print("</body></head></html>");
	
	
	
	}
}
