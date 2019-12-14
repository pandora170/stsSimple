<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>egovframework LAB</title>
<style type="text/css">
#menu a img.menuon {
    display: none;
}
#menu a:hover img.menuoff {
    display: inline;
}
</style>
</head>
<body>
<ul id="menu">
    <li>MVC 
        <ul>      
            <li><a href="hello.do">Hello World</a></li>
            
            <li><a href="loginProcess1.do">로긴예제</a></li>
            
            <li><a href="member.do">사용자 등록화면</a></li>

        </ul>
    </li>
</ul>

</body>
</html>