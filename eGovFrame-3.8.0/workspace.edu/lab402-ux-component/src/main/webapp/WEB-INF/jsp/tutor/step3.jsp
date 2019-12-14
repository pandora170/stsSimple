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
		<script type="text/javascript">
			$( document ).on( "pageinit", "#main", function() {/* pagecreate */
			    $( document ).on( "swipeleft swiperight", "#main", function( e ) {
			        // We check if there is no open panel on the page because otherwise
			        // a swipe to close the left panel would also open the right panel (and v.v.).
			        // We do this by checking the data that the framework stores on the page element (panel: open).
			        if ( $( ".ui-page-active" ).jqmData( "panel" ) !== "open" ) {
			            if ( e.type === "swipeleft" ) {
			                $( "#panelWidget" ).panel( "open" );
			            } /* else if ( e.type === "swiperight" ) {
			                $( "#paneljqm" ).panel( "open" );
			            } */
			        }
			    });
			});
		</script>
	</head>

    <body>
        <!-- page start -->
        <div data-role="page" data-theme="c" id="main">

			
            <!-- header start -->
            <div data-role="header" data-theme="e">
                <a href="/tutor/step2.do" data-ajax="false" data-icon="arrow-l">Back</a>
                <h1>Step3</h1>
				<a href="/tutor/step4.do" data-ajax="false" data-icon="arrow-r" class="ui-btn-right">Next</a>
				
				<div data-role="tabs">
					<ul>
						<li><a href="#simpleTap1">Panel</a></li>
						<li><a href="#simpleTap2">Panel Widget</a></li>
					</ul>
				</div>
            </div>
            <!-- header end -->

            <!-- content start -->
            <div data-role="content">
            
            	<div id="simpleTap1">
					<br>
					<div class="ui-body-g" align="center">
            			<h4>Panel</h4>
            		</div>
            	</div>
            	<div id="simpleTap2">
					<a href="#panelWidget" data-role="button">Panel Widget</a>
            	</div>
			</div>
            <!-- content end -->

            <!-- footer start -->
            <div data-role="footer" data-theme="e" data-position="fixed" id="fixedFooter">
				<a href="/practice/step3.do" data-ajax="false" data-icon="info" class="ui-btn-left">Practice</a>
				<h1>m.egovframe.go.kr</h1>
				<a href="/start.do" data-ajax="false" data-icon="home" class="ui-btn-right">Home</a>
            </div>
            <!-- footer end -->

			<!-- panel start -->
			<div data-role="panel" data-theme="e" data-position="right" data-display="overlay" data-position-fixed="true" id="panelWidget">
    			<ul data-role="listview" data-theme="e">
				    <li><a href="/start.do">Start Page</a></li>
				    <li><a href="/tutor/step1.do" data-ajax="false">Step1</a></li>
				    <li><a href="/tutor/step2.do" data-ajax="false">Step2</a></li>
				    <li><a href="/tutor/step3.do" data-ajax="false">Step3</a></li>
				    <li><a href="/tutor/step4.do" data-ajax="false">Step4</a></li>
				    <li><a href="#" data-rel="close">Close</a></li>
				</ul>
			</div>
			<!-- panel end -->

        </div>
        <!-- page end -->

    </body>
</html>