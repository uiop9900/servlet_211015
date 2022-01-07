<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
	Calendar today = Calendar.getInstance(); // singleton 패턴: new를 하지않고 메소드를 통해 객체를 얻게해서 하나의 객체로 계속 사용하게, 디자인패턴: 코드를 짜는 거대한 패턴에 이름 붙인거)
	// 근데얘는 싱글턴처럼 생겼는데 매번 만들때 생성되기 떄문에 싱글턴이 아님. 디자인 패턴은 3년차 이후에 보는게 좋을듯(디자인 패턴을 함부로 적용하면 안된다. 하다보면 내가 알아서 디자인으로 만든다, 싱글턴만 공부)
	out.print(today + "<br>");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초");
	out.print("오늘 날짜: " + sdf.format(today.getTime())); // format은 date객체를 아규먼트로 받는다. Calendar -> Date객체로 변환 후 format에 적용 
	
	// 어제 날짜
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
	Calendar yesterday = Calendar.getInstance();
	yesterday.add(Calendar.DATE, -1); // 날짜 단위,
	//yesterday.add(Calendar.MONTH, -1); // 한달 전
	//yesterday.add(Calendar.YEAR, -1); // 전은 음수, 후는 양수
	out.print("<br>어제 날짜: " + sdf2.format(yesterday.getTime()) + "<br>");
	
	// 보통 라이브러리를 가져와서 날짜한테 많이 쓴다. Date객체보다는 Datetime이라는 라이브러리를 더 선호
	//두 날짜 비교(compareTo)
	// 기준값(today)이 크면: 1
	// 같으면: 0
	// 기준값이 작으면 : -1 (앞에 있는 기준값이 항상 기준이다.) 
	int result = today.compareTo(yesterday);
	if (result > 0){ // 비교할때는 ==1 보다는 >0 을 조건으로 많이 넣는다 
		out.print("today가 더 크다.");
	} else if (result == 0) {
		out.print("두 날짜는 같다.");
	} else {
		out.print("yesterday가 더 크다.");
	}
%>


</body>
</html>