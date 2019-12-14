<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<div data-role="header" data-theme="g" id="main">
			<a href="/practice/step3.do" data-ajax="false" data-icon="arrow-l">Back</a>
			<h1>Step4</h1>
		</div>
		<!-- header end -->

		<!-- content start -->
		<div data-role="content">
		
			<label>Text input:</label>
			<input type="text" name="text-basic" id="text-basic" value="">
			

			<label for="slidersingle">Rangeslider:</label>
			<input type="range" name="slidersingle" id="slidersingle" min="0" max="10" step=".1" value="2.5">


			
				<label for="range-a">Rangeslider:</label>
				<input type="range" name="range-a" id="range-a" min="0" max="10" step=".1" value="2.5">
				<label for="range-b">Rangeslider:</label>
				<input type="range" name="range-b" id="range-b" min="0" max="10" step=".1" value="7.5">
			

		
		<button type="button" data-theme="b">Grid Solo</button>
		

		<a href="#" data-role="button" >Popup Widget</a>

		<!-- content end -->

		<!-- footer start -->
		<div data-role="footer" data-theme="g" data-position="fixed" id="fixedFooter">
			<a href="/tutor/step4.do" data-ajax="false" data-icon="info" class="ui-btn-left">Tutor</a>
			<h1>m.egovframe.go.kr</h1>
			<a href="/start.do" data-ajax="false" data-icon="home" class="ui-btn-right">Home</a>
		</div>
		<!-- footer end -->
	</div>
	<!-- page end -->
</body>
</html>