<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : listIcon.jsp
  Description :  UX list component
  Modification Information

      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.07.14    권자영          최초 생성
 
    author   : 모바일 실행환경 개발팀 권자영
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>UX Component - List </title> 
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
                <a href="<c:url value="/guide/components/list/list.do"/>" data-icon="back" class="ui-btn-right" data-ajax="false">Back</a>
                <h1><img src="<c:url value="/images/egovframework/mbl/rte/guide/h1_logo.png"/>" alt="egovframework" /></h1>
            </div>  
            <!-- header end -->
			
			<!-- content start -->		
			<div data-role="content" data-theme="d">
			
				<!-- content-primary start -->
				<div class="content-primary">
					<div class="egov-tit">
						<h1>List Icon</h1>
						<p>리스트 아이템 왼쪽에 아이콘형 이미지를 추가하려면 리스트 아이템 첫 번째 내용으로 아이콘형 이미지를 삽입하면 된다.
						16X16 pixel 기본 아이콘 크기의 이미지를 삽입하려면 <strong>class=”ui-li-icon”</strong> 속성을 추가한다.
						</p>
						<div class="egov-deth2">
							<ul data-role="listview" data-inset="true">
								<li><a href="#"> 
									<img src="<c:url value="/images/egovframework/mbl/rte/guide/components/list/coffee.png" />" alt="coffee" class="ui-li-icon"/>
									<h3>Americano</h3> 
								</a></li> 
								<li><a href="#">
									<img src="<c:url value="/images/egovframework/mbl/rte/guide/components/list/icecream.png"/>" alt="icecream" class="ui-li-icon"/>
									<h3>Icecream</h3> 
								</a></li>
							</ul>
						
							<ul class="link">
								<li>&lt;ul data-role="listview" data-inset="true"&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;</li> 
								<li class="egov-txtIn2">&lt;img src="/images/egovframework/mbl/rte/guide/ components/list/coffee.png" alt="coffee" class="ui-li-icon"&gt;</li>
								<li class="egov-txtIn2">&lt;h3&gt;Americano&lt;/h3&gt; </li>
								<li class="egov-txtIn1">&lt;/a&gt;&lt;/li&gt; </li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;</li>
								<li class="egov-txtIn2">&lt;img src="/images/egovframework/mbl/rte/guide/ components/list/icecream.png" alt="icecream" class="ui-li-icon"&gt;</li>
								<li class="egov-txtIn2">&lt;h3&gt;Icecream&lt;/h3&gt; </li>
								<li class="egov-txtIn1">&lt;/a&gt;&lt;/li&gt;</li>
								<li>&lt;/ul&gt;
							</ul>
						</div>
					</div>

				</div>
				<!-- content-primary end -->
				
				<!-- content-secondary start -->
				<div class="content-secondary"> 
					<jsp:include page="listIndex.jsp"></jsp:include>
				</div>			
				<!-- content-secondary end -->
				
			</div>
			<!-- content end -->
			
			<!-- footer start -->
			<div data-role="footer" data-theme="z"  class="egovBar">
				 <h4 class="main">Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
			
		</div>
		<!-- page end -->
	
    </body>
</html>