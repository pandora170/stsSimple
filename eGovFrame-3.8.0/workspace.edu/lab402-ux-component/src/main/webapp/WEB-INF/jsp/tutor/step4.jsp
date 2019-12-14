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
            <div data-role="header" data-theme="e" id="main">
                <a href="/tutor/step3.do" data-ajax="false" data-icon="arrow-l">Back</a>
                <h1>Step4</h1>
            </div>
            <!-- header end -->

            <!-- content start -->
            <div data-role="content">
            	
				<div data-role="fieldcontain">
            		<label for="text-basic" class="ui-hidden-accessible">Text input:</label>
					<input type="text" name="text-basic" id="text-basic" value="" placeholder="Text input" disabled="disabled">
				</div>
                        	           	
				<label for="slidersingle">Rangeslider:</label>
				<input type="range" name="slidersingle" id="slidersingle" min="0" max="10" value="2.5" step=".1" data-theme="f" data-highlight="true" data-track-theme="g">
				    				
				<div class="ui-grid-a">					
					<div class="ui-block-a">
					<div class="ui-bar ui-bar-e">
					<label for="slidersingle">Rangeslider:</label>
					<input type="range" name="slidersingle" id="slidersingle" min="0" max="10" value="2.5" step=".1" data-theme="f" data-highlight="true" data-track-theme="g">
					</div>
					</div>
					<div class="ui-block-b">
						<div class="ui-bar ui-bar-e">
						    <div data-role="rangeslider">
						        <label for="range-a">Rangeslider:</label>
						        <input type="range" name="range-a" id="range-a" min="0" max="10" value="2.5" step=".1">
						        <label for="range-b">Rangeslider:</label>
						        <input type="range" name="range-b" id="range-b" min="0" max="10" value="7.5" step=".1">
						    </div>
						</div>
					</div>
				</div>
				<div class="ui-grid-solo">
					<div class="ui-block-a">
						<button type="button" data-theme="b">Grid Solo</button>
					</div>					
				</div>

				<a href="#popupBasic" data-rel="popup" data-role="button" data-transition="pop">Popup Widget</a>
				
				<div data-role="popup" id="popupBasic" class="ui-content" data-dismissible="false" data-theme="e" data-overlay-theme="a">
					<a href="#" data-rel="back" data-role="button" data-theme="a" data-icon="delete" data-iconpos="notext" class="ui-btn-left">Close</a>
				    <p>Popup Widget 입니다.</p>
				</div>
				
			</div>
            <!-- content end -->

            <!-- footer start -->
            <div data-role="footer" data-theme="e" data-position="fixed" id="fixedFooter">
				<a href="/practice/step4.do" data-ajax="false" data-icon="info" class="ui-btn-left">Practice</a>
				<h1>m.egovframe.go.kr</h1>
				<a href="/start.do" data-ajax="false" data-icon="home" class="ui-btn-right">Home</a>
            </div>
            <!-- footer end -->
        </div>
        <!-- page end -->
    </body>
</html>