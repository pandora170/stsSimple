<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : panel.jsp
  Description :  UX panel component
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    황민희          최초 생성
 
    author   : 모바일 실행환경 개발팀 황민희
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>UX Component - Panel</title> 
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
    
		<!-- page start -->
		<div data-role="page" class="type-index">
		
            <!-- header start -->
            <div data-role="header" data-position="inline" data-theme="z" class="egovBarHeader">
                <a href="<c:url value="/guide/guide.do"/>" data-icon="home" class="ui-btn-left" data-ajax="false">Home</a>
                <a href="<c:url value="/guide/guide.do"/>" data-icon="back" class="ui-btn-right" data-ajax="false">Back</a>
                <h1><img src="<c:url value="/images/egovframework/mbl/rte/guide/h1_logo.png"/>" alt="egovframework" /></h1>
            </div>  
            <!-- header end -->
			
			<!-- content start -->		
			<div data-role="content" data-theme="d">
			
				<!-- content-primary start -->
				<div class="content-primary">
					<div class="egov-tit">
						<h1>Panel</h1>
						<p>Panel은 Header/Footer bar와 함께 페이지를 구성하는 요소이다. Panel은 여러 색상을 지원하며 겹쳐서 사용도 가능하다.</p>
					</div>
					
					<div class="egov-deth1">
						<h2>기본코드</h2>
					<p>Panel의 기본코드는 <strong>&lt;div class="ui-body-[a~g]"&gt;</strong>를 사용하며 a~g는 Panel 의 색상 변경을 지원한다.</p>
						<div class="egov-deth2">
				     		<div class="ui-body-c center">
				     			<h4>Panel</h4>
				     		</div>
					 		<ul class="link">
					 			<li>&lt;div class="ui-body-c center"&gt;&lt;h4&gt;Panel&lt;/h4&gt;&lt;/div&gt;</li>
					 		</ul>
						</div>
					</div>
					
	        		<div class="egov-deth1">
						<h2>색상변경</h2>
						<p>색상 변경시에는 <strong>&lt;div class="ui-body-[a~g]"&gt;</strong>를 변경한다.</p>
						<div class="egov-deth2">
								<div class="ui-body-a">
									<h4>Content A</h4>
								</div>
								<div class="ui-body-b">
									<h4>Content B</h4>
								</div>
								<div class="ui-body-c">
									<h4>Content C</h4>
								</div>
								<div class="ui-body-d">
									<h4>Content D</h4>
								</div>
								<div class="ui-body-e">
									<h4>Content E</h4>
								</div>
								<div class="ui-body-f">
									<h4>Content F</h4>
								</div>
								<div class="ui-body-g">
									<h4>Content G</h4>
								</div>
								
							<ul class="link">
								<li>&lt;div class="ui-body-a"&gt;</li>
								<li class="egov-txtIn1">&lt;h4&gt;Content A&lt;/h4&gt;</li>
								<li>&lt;/div&gt;</li>
                                <li>&lt;div class="ui-body-b"&gt;</li>
                                <li class="egov-txtIn1">&lt;h4&gt;Content B&lt;/h4&gt;</li>
                                <li>&lt;/div&gt;</li>
                                <li>&lt;div class="ui-body-c"&gt;</li>
                                <li class="egov-txtIn1">&lt;h4&gt;Content C&lt;/h4&gt;</li>
                                <li>&lt;/div&gt;</li>
                                <li>&lt;div class="ui-body-d"&gt;</li>
                                <li class="egov-txtIn1">&lt;h4&gt;Content D&lt;/h4&gt;</li>
                                <li>&lt;/div&gt;</li>
                                <li>&lt;div class="ui-body-e"&gt;</li>
                                <li class="egov-txtIn1">&lt;h4&gt;Content E&lt;/h4&gt;</li>
                                <li>&lt;/div&gt;</li>
                                <li>&lt;div class="ui-body-f"&gt;</li>
                                <li class="egov-txtIn1">&lt;h4&gt;Content F&lt;/h4&gt;</li>
                                <li>&lt;/div&gt;</li>
                                <li>&lt;div class="ui-body-g"&gt;</li>
                                <li class="egov-txtIn1">&lt;h4&gt;Content G&lt;/h4&gt;</li>
                                <li>&lt;/div&gt;</li>                                                                                                                                                                								
					 		</ul>
						</div>
					</div>
	               
	               	<div class="egov-deth1">
						<h2>무늬 변경</h2>
						<p>Panel 의 무늬 변경은 기본코드에 <strong>class="egov-panel-pattern-a~g"</strong> 을 추가한다.</p>
						<div class="egov-deth2">							
							<div class="ui-body-f egov-panel-pattern-f">
								<h4>무늬 변경</h4>
							</div>							
							<ul class="link">
								<li>&lt;div class="ui-body-f egov-panel-pattern-f"&gt;&lt;h4&gt;무늬 변경&lt;/h4&lt;/div&gt;</li>
					 		</ul>
						</div>
					</div>
				</div>
				<!-- content-primary end -->
				
				<!-- content-secondary start -->
				<div class="content-secondary"> 
					<jsp:include page="../../componentMenu.jsp"></jsp:include>
				</div>			
				<!-- content-secondary end -->
				
			</div>
			<!-- content end -->
			
			<!-- footer start -->
			<div data-role="footer" data-theme="z"  class="egovBar">
				 <h4>Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
			
		</div>
		<!-- page end -->
	
    </body>
</html>