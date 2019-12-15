<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입 2단계</h3>
	<form action="step3">
		분류:<input type="text" name="boCategory" value="${board.boCategory }">
		<br>
		내용:<input type="text" name="boContent" value="${board.boContent }">
		<br>
		<button formaction="step1">before</button>
		<button formaction="step3">Next</button>
		<button formaction="cancel">HOME</button>
	</form>
</body>
</html>