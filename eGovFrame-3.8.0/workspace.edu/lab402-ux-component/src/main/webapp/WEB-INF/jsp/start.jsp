<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
    <head>
        <title>UX-Component 3.5</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <!-- eGovFrame Common import -->
		<link rel="stylesheet" href="<c:url value='/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css' />" />
		<link rel="stylesheet" href="<c:url value='/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css' />" />
		<script type="text/javascript" src="<c:url value='/js/egovframework/mbl/cmm/jquery-1.11.2.min.js' />"></script>
		<script type="text/javascript" src="<c:url value='/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js' />"></script>
		<script type="text/javascript" src="<c:url value='/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js' />"></script>
    </head>

    <body>
        <!-- page start -->
        <div data-role="page" data-theme="c">

            <!-- header start -->
            <div data-role="header" data-theme="b">
                <h1>UX Component</h1>
            </div>
            <!-- header end -->

            <!-- content start -->
            <div data-role="content">
                <a href="/practice/step1.do" data-role="button" data-theme="g" data-ajax="false" data-icon="arrow-r" data-iconpos="right">Practice Start</a>
                <a href="/tutor/step1.do" data-role="button" data-theme="e" data-ajax="false" data-icon="check" data-iconpos="right">Tutor Page</a>
                <a href="http://m.egovframe.go.kr/mguide3.5/" target="home" data-role="button" data-theme="f" data-icon="info" data-iconpos="right">Guide</a>
            </div>
            <!-- content end -->

            <!-- footer start -->
            <div data-role="footer" data-theme="b" data-position="fixed" id="fixedFooter">
                <h4>m.egovframe.go.kr</h4>
            </div>
            <!-- footer end -->

        </div>
        <!-- page end -->
        
    </body>
</html>