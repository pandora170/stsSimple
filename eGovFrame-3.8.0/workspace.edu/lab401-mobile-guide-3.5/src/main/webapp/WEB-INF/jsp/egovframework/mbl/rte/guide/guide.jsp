<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : guide.jsp
  Description :  eGovframe Main
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    구지연          최초 생성
 
    author   : 모바일 실행환경 개발팀 구지연
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
	<head> 
		<title>eGovframe Mobile Framework</title> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />    

		<!-- eGovFrame Common import -->        
		<link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css" />" />
		<link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" />" />
		<script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"/>"></script>
		
		<script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js" />"></script>
   
        <!-- guide import -->
		<link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/rte/guide/guide.css" />">
		<script type="text/javascript"  src="<c:url value="/js/egovframework/mbl/rte/guide/guide.js"/>"></script>
	</head>
	<body> 

<div data-role="page" class="type-home">
	<div data-role="header" data-position="inline" data-theme="z" class="egovBarHeader">
	   <h1><img src="<c:url value="/images/egovframework/mbl/rte/guide/h1_logo.png"/>" alt="egovframework" /></h1>
	</div>
	
	<div data-role="content" data-theme="d">
		<div class="content-secondary">
			<div class="egov-info"><img src="<c:url value="/images/egovframework/mbl/rte/guide/infoHead.png"/>" alt="행정안전부" /></div>
			<ul class="egov-intro">
				<li><b>국민이 원하는 시·공간에서 <strong>"쉽고, 빠르고, 편리"</strong> 하게 만날수 있는 모바일 전자정부 구축</b></li>
			</ul>
			<nav>
                <jsp:include page="introMenu.jsp"></jsp:include>
			</nav>
			
		</div><!--/content-secondary-->	
		
		<div class="content-primary">
			<ul data-role="listview" data-inset="true" >
				<li data-role="list-divider" class="egov-bar-main2">UX Component</li>
				<li><a href="<c:url value="/guide/components/button/button.do" />"  data-ajax="false">Button</a></li>
				<li><a href="<c:url value="/guide/components/panel/panel.do"/>" data-ajax="false">Panel</a></li>
				<li><a href="<c:url value="/guide/components/panelWidget/panelWidget.do" />" data-ajax="false">Panel Widget</a></li>
				<li><a href="<c:url value="/guide/components/link/link.do" />" data-ajax="false">Internal / External Link</a></li>
				<li><a href="<c:url value="/guide/components/labelText/labelText.do" />" data-ajax="false">Label / Text</a></li>
				<li><a href="<c:url value="/guide/components/tabs/tabs.do" />" data-ajax="false">Tabs</a></li>
				<li><a href="<c:url value="/guide/components/form/form.do" />" data-ajax="false">Form</a></li>
				<li><a href="<c:url value="/guide/components/menu/menu.do" />" data-ajax="false">Menu</a></li>
				<li><a href="<c:url value="/guide/components/progress/progress.do" />" data-ajax="false">Loader Widget</a></li>
				<li><a href="<c:url value="/guide/components/dialog/dialog.do" />" data-ajax="false">Dialog</a></li>
				<li><a href="<c:url value="/guide/components/grid/grid.do" />" data-ajax="false">Grid View</a></li>
				<li><a href="<c:url value="/guide/components/list/list.do" />" data-ajax="false"> Table / List View</a></li>
				<li><a href="<c:url value="/guide/components/check/check.do" />" data-ajax="false">Check Box</a></li>
				<li><a href="<c:url value="/guide/components/radio/radio.do" />" data-ajax="false">Radio button</a></li>
				<li><a href="<c:url value="/guide/components/icon/icon.do" />" data-ajax="false">Icon</a></li>
				<li><a href="<c:url value="/guide/components/selectorSwitch/selectorSwitch.do" />" data-ajax="false">Selector / Switch</a></li>
				<li><a href="<c:url value="/guide/components/collapsible/collapsible.do" />" data-ajax="false">Collapsible Block</a></li>
				<li><a href="<c:url value="/guide/components/popupWidget/popupWidget.do" />" data-ajax="false">Popup Widget</a></li>
		        
		        <li data-role="list-divider" class="egov-bar-main2">페이지 구조 타입</li>
		        <li><a href="<c:url value="/guide/components/pageStructure/page.do" />" data-ajax="false">모바일 Page</a></li>
		        <li><a href="<c:url value="/guide/components/pageStructure/header.do" />" data-ajax="false">Header</a></li>
		        <li><a href="<c:url value="/guide/components/pageStructure/footer.do" />" data-ajax="false">Footer</a></li>
		        <li><a href="<c:url value="/guide/components/pageStructure/theme.do"/>" data-ajax="false">Theme Type</a></li>
		        
		        <li data-role="list-divider" class="egov-bar-main4">관련 사이트</li>
		        <li><a href="<c:url value="http://jquery.com/" />" data-ajax="false" >jQuery.com</a></li>
		        <li><a href="<c:url value="http://jquerymobile.com/" />" data-ajax="false" >jQuerymobile.com</a></li>
			</ul>
		</div><!--/content-primary-->	

	</div>
	
	<div data-role="footer" data-theme="z"  class="egovBar">
		<h4>Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
	</div>
	
</div>
</body>
</html>
