<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
<script>

function callFetch(){
	fetch("request",{
		body:new FormData(document.frm),
		method:"post"
	}).then(function(response) {
	    return response.json();
	  })
	  .then(function(myJson) {
		console.log(myJson);
	  });
}

</script>

</head>
<body>
	<h3>게시판 등록</h3>
	
	<form name="frm" action="insert3" method="post" onsubmit="callFetch(); return false;">
		글번호 : <input type="text" name="boNo" value="${board.boNo }"/>
		<br>
		제목 : <input type="text" name="boTitle" value="${board.boTitle }"/>
		<form:errors path="board.boTitle"/>
		<br>
		분류 : <select name="boCategory">
				<option value="">전체</option>
				<c:forEach items="${category }" var="item" varStatus="status">
					<option value="${item.codeCd }">${item.codeNm }</option>
				</c:forEach>
			</select>
			<form:errors path="board.boCategory"/>
			<br>
		내용 : <textarea rows="3" name="boContent">${board.boContent }</textarea>
		<form:errors path="board.boContent"/>
		<button type="submit">글등록</button>
	</form>
	
</body>
</html>