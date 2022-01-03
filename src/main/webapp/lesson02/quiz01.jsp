<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Quiz01</title>
</head>
<body>
<%! // 별도의 class느낌
	// 1. 1부터 n까지의 합계 메소드
	public int sumUntilN(int num){ // 여기서 sum은 지역변수이다.
		int sum = 0;
		for (int i = 1; i <= num; i++){
			sum += i;
		}
		return sum;
	}
%>
	<h1>1부터 50까지의 합계는 <%= sumUntilN(50) %>입니다. </h1>
	
<% // main과 동일하다
	// 2. 평균구하기
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for (int i = 0; i < scores.length; i++){
			sum += scores[i];
		}
		double average = (double)sum / scores.length;		
%>
	<h1>평균 점수는 <%= average %> 점 입니다.</h1>
	
<% // 3.
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for (int i = 0; i < scoreList.size(); i++){
			if (scoreList.get(i).equals("O")){
				score += 100 / scoreList.size();
			}
		}
%>
	
	<h1>채점 결과는 <%= score %>입니다.</h1>	
	
<%
	String birthDay = "20010820";
	int year = Integer.parseInt(birthDay.substring(0, 4));
	//out.print(year); // 이 안에서 출력해서 확인해보고 싶을때 out쓰면된다. Servlet의 out과 동일하며 out함수가 내장되어 있다.
	int age = 2021 - year + 1;
	
%>
	<h1><%= birthDay %>의 나이는 <%= age %>세 입니다.</h1>	
	
	
</body>
</html>