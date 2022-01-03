package com.test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class CharacterEncodingFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException { // request, response일때 2번 다 수행해야하기때문
		
		// 필터를 통과할때 인코딩 설정
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		chain.doFilter(request, response); // chain에 넣어줘야 적용이 된다.
		// 여기서 필터 만들면 맨날쓰던 인코딩 코드 이제는 생략가능
		// 여기는 일단 설정만 만든거고 이걸 xml에 연동 시켜야지 이제 실행가능
		
	}
	
}
