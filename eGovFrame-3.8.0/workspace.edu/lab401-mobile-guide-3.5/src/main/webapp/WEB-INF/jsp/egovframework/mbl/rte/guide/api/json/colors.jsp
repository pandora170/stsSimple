<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%--
  Class Name : colors.jsp
  Description :  pageStructure
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    황민희          최초 생성
 
    author   : 모바일 실행환경 개발팀 황민희
    since    : 2011.10.07
--%>
<!DOCTYPE html>
<html lang="kr">
    <head>
        <title>UX Component - pageStructure</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

        <!-- eGovFrame Common import -->        
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css" />" />
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" />" />
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"/>"></script>
		 
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js" />"></script>
	</head>

    <body>

        <!-- page start -->
        <div data-role="page" data-theme="d">

            <!-- header start -->
            <div data-role="header" data-theme="z">
                <h1>Colors</h1>
                <a href="#" data-rel="back" data-icon="back" class="ui-btn-right">Back</a>
            </div>
            <!-- header end -->

            <!-- content start -->
            <div data-role="content">
				<p>Fresh colors from the magic rainbow.</p>
				<ul data-role="listview" data-inset="true">
					<li>Blue</li>
					<li>Green</li>
					<li>Orange</li>
					<li>Purple</li>
					<li>Red</li>
					<li>Yellow</li>
					<li>Violet</li>
				</ul>
            </div>
            <!-- content end -->
        </div>
        <!-- page end -->
        
    </body>
    
</html>