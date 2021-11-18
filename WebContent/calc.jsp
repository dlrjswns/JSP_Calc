<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day03.Calc"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 1. GET 현재 페이지를 요청
	2. 현재 페이지가 브라우저에 출력 
	3. POST로 계산기능을 요청 
	4. 작업한대로 결과가 브라우저 출력 -->
<%
	// 스크립트릿
	int res = 0;
	
	if(request.getMethod().equals("POST")){
	// application,out,session,request,response... == 내장객체
	int num1 = Integer.parseInt(request.getParameter("num1"));
	// 형변환을 해야하는데 대상이 null이다
	//	num1이름의 파라미터가 없음
	int num2 = Integer.parseInt(request.getParameter("num2"));
	String opt = request.getParameter("op");
	
	Calc calc = new Calc(num1, num2, opt);
	res = calc.getRes();
	// 계산기능에 필요한 값들을 추출
	// 계산기능을 수행 
	// 출력
	}
%>
	<form method="post">
	<input type="text" name="num1">
	<select name="op">
		<option selected>+</option>
		<option>-</option>
	</select>
	<input type="text" name="num2">
	<input type="submit" value="계산하기">
</form>
<hr>
<h2>계산결과는 <%= res %>입니다.</h2>
</body>
</html>