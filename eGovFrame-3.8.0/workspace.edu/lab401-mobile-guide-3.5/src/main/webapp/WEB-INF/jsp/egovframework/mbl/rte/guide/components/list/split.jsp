 <%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : split.jsp
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
            <div data-role="header" data-position="inline" data-theme="z"  class="egovBarHeader">
                <a href="<c:url value="/guide/guide.do"/>" data-icon="home" class="ui-btn-left" data-ajax="false">Home</a>
                <a href="<c:url value="/guide/components/list/list.do"/>" data-icon="back" class="ui-btn-right" data-ajax="false">Back</a>
                <h1><img src="<c:url value="/images/egovframework/mbl/rte/guide/h1_logo.png"/>" alt="egovframework" /></h1>
            </div>  
            <!-- header end -->
			
			<!-- content start -->		
			<div data-role="content" data-theme="d">
			
				<!-- content-primary start -->
				<div class="content-primary">
					<div class="egov-deth1">
						<h2>Split Button</h2>
						<p>리스트 아이템에 개별적으로 두 가지 action을 부여하려면 Split Button 을 이용하면 된다.
						Split Button 은 리스트의 오른쪽 가장자리에 위치한 아이콘 영역이다.
						&lt;li&gt; Tag 내부에 링크를 하나 더 추가하면 전자정부 모바일 표준프레임워크가 자동으로 Split Button 을 생성한다.
						아이콘 이름을 <strong>data-split-icon</strong> 속성 값으로 적용하면 원하는 아이콘을 Split Button에 삽입할 수 있다. 
						Split Button의 색상은 <strong>data-split-theme</strong> 속성에 해당 테마를 적용하여 변경할 수 있다.</p>

					
						<div class="egov-deth2">
							<ul data-role="listview" data-inset="true" data-split-icon="gear">
								<li data-role="list-divider">Coffee</li>
								<li><a href="#">Americano</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li><a href="#">Caffe Latte</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li data-role="list-divider">Icecream</li>
								<li><a href="#">Vanilla</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li><a href="#">Yogurt</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li><a href="#">Strawberry</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li><a href="#">Fashion fruit</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li><a href="#">Chocolate</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
							</ul>
							
							<ul class="link">
								<li>&lt;ul data-role="listview" data-inset="true" data-split-icon="gear"&gt;</li>
								<li class="egov-txtIn1">&lt;li data-role="list-divider"&gt;Coffee&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Americano&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Caffe Latte&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li data-role="list-divider"&gt;Icecream&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Vanilla&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Yogurt&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Strawberry&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Fashion fruit&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Chocolate&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li>&lt;/ul&gt;</li>
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