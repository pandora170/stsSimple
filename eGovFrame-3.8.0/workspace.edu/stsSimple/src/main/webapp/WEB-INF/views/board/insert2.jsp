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
	<h3>게시판 등록2</h3>
	<form:form commandName="board" action="insert" >
		글번호 : <form:input path="boNo"/>
		<br>
		제목 : <form:input path="boTitle"/>
		<form:errors path="boTitle"/>
		<br>
		
		<form:radiobuttons path="boCategory" items="${category }" itemValue="codeCd" itemLabel="codeNm"/>
		<br>		
		분류 : <form:select path="boCategory" items="${category }" itemValue="codeCd" itemLabel="codeNm"/>
		
<%-- 		<form:select path="boCategory"> --%>
<!-- 			<option value="">전체</option> -->
<%-- 			<form:options items="${category }" itemValue="codeCd" itemLabel="codeNm"/> --%>
<%-- 			<form:option value="CT04" label="기타"/> --%>
<%-- 		</form:select> --%>
			<form:errors path="boCategory"/>
			<br>
		내용 : <form:textarea path="boContent" rows="3"/>
		<form:errors path="boContent"/>
		<button>글등록</button>
	</form:form>
	
	
</body>
</html>