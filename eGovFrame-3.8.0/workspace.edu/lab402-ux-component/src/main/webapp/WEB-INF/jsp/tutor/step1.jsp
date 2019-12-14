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

		<!-- CSS for Custom Icon -->
		<link rel="stylesheet" href="<c:url value='/css/egovframework/mbl/customIconTutor.css'/>"/>
    </head>

    <body>
        <!-- page start -->
        <div data-role="page" data-theme="c">

            <!-- header start -->
            <div data-role="header" data-theme="e">
               	<a href="/start.do" data-ajax="false" data-icon="arrow-l">Back</a>
                <h1>Step1</h1>
				<a href="/tutor/step2.do" data-ajax="false" data-icon="arrow-r" class="ui-btn-right">Next</a>
            </div>
            <!-- header end -->

            <!-- content start -->
            <div data-role="content">
				<a href="#" data-role="button" data-theme="g" data-icon="grid">Icon</a>
				<a href="#" data-role="button" data-theme="f" data-icon="star" data-iconpos="right" data-mini="true">Mini</a>
				<a href="#" data-role="button" data-theme="e" data-icon="alert" data-iconpos="top" data-corners="false">No Rounded</a>
				<a href="#" data-role="button" data-theme="c" data-icon="phone" data-iconpos="bottom" data-inline="true">Inline</a>
				<a href="#" data-role="button" data-theme="b" data-icon="gps" data-iconpos="notext">Only Icon</a>
				<a href="#" data-role="button" data-theme="a" data-icon="beer">Custom Icon</a>
            </div>
            <!-- content end -->

            <!-- footer start -->
            <div data-role="footer" data-theme="e" data-position="fixed" id="fixedFooter">
				<a href="/practice/step1.do" data-ajax="false" data-icon="info" class="ui-btn-left">Practice</a>
				<h1>m.egovframe.go.kr</h1>
				<a href="/start.do" data-ajax="false" data-icon="home" class="ui-btn-right">Home</a>
            </div>
            <!-- footer end -->

        </div>
        <!-- page end -->
    </body>
</html>