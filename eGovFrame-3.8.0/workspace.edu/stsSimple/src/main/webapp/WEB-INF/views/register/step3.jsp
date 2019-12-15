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
	<h3>회원가입 3단계</h3>
	<ul>
		<li>제목 :${board.boCategory }</li>
		<li>분류 :${board.boCategory }</li>
		<li>내용 :${board.boContent }</li>
	</ul>
	
	<form action="step3">
		<button formaction="step2">before</button>
		<button formaction="cancel">HOME</button>
	</form>
</body>
</html>