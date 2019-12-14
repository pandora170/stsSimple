<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<ul data-role="listview" data-inset="true" data-dividertheme="b">
	<li class="egov-bar-main1"><a href="<c:url value="/guide/intro/intro.do" />" style="color:#fff;" data-ajax="false">Overview</a></li>
		<li data-role="list-divider" class="egov-bar-main3">표준 화면 정의</li>
		<li><a href="<c:url value="/guide/template/outlinePrinciple.do"/>" data-ajax="false">개요 및 원칙</a></li>
		<li><a href="<c:url value="/guide/template/directory.do" />" data-ajax="false">디렉터리 구성 정의</a></li>
		<li><a href="<c:url value="/guide/template/namingRule.do" />" data-ajax="false">파일 명명규칙 정의</a></li>
		<li><a href="<c:url value="/guide/template/designRule.do" />" data-ajax="false">디자인 원칙</a></li>
		
		<li data-role="list-divider" class="egov-bar-main3" >웹 인터페이스 디자인 가이드</li>
		<li><a href="<c:url value="/guide/template/interfaceDesign.do" />" data-ajax="false">디자인 가이드 정의</a></li>
		<li><a href="<c:url value="/guide/template/interfaceComponent.do" />" data-ajax="false">디자인 구성요소</a></li>
		<li><a href="<c:url value="/guide/template/interfaceHtml.do" />" data-ajax="false">HTML5와 CSS3.0 기본활용</a></li>
		
		<li data-role="list-divider" class="egov-bar-main3" >환경구성</li>
		<li><a href="<c:url value="/guide/intro/platform.do" />" data-ajax="false">지원 플랫폼</a></li>
		<li><a href="<c:url value="/guide/intro/specification.do" />" data-ajax="false">지원 사양</a></li> 
		
		<li data-role="list-divider" class="egov-bar-main3">사용자 화면 구성 지원 API </li>
		<li><a href="<c:url value="/guide/api/configure.do" />" data-ajax="false">Configuring Defaults</a></li>
		<li><a href="<c:url value="/guide/api/events.do" />" data-ajax="false">Events</a></li>
		<li><a href="<c:url value="/guide/api/methodsUtilities.do" />" data-ajax="false">Methods &amp; Utilities</a></li>
		<li><a href="<c:url value="/guide/api/mediahelpers.do"/>" data-ajax="false">Responsive Layout</a></li>
		<li><a href="<c:url value="/guide/api/dynamicallyPage.do"/>" data-ajax="false">Dynamic Page Generation</a></li>          
	</ul>