<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : nested.jsp
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
						<h2>Nested List</h2>
						<p>&lt;li&gt;Tag 내부에 새로운 리스트 Tag를 적용하면  리스트를 하나의 리스트 아이템으로 갖는 중첩된 리스트를 생성할 수 있다. 
						리스트를 중첩시키면 자동으로 상위 리스트의 내용이 하위 리스트 타이틀로 적용되며 하위 리스트는 상위리스트의 리스트 링크 형식으로 제공된다.
						리스트는 다양한 레벨로 중첩이 가능하며 두 번째 레벨에 해당하는 리스트에는 자동으로 'b 테마'가 적용된다.</p>
						
						<div class="egov-deth2">
							<ul data-role="listview" data-inset="true">
								<li>COFFEE SHOP
									<ul data-role="listview" data-inset="true">
										<li>COFFEE
											<ul data-role="listview" data-inset="true">
												<li>Americano</li>
												<li>Caffe Latte</li>
												<li>Caffe Mocha</li>
											</ul>
										</li>
										<li>ICECREAM
											<ul data-role="listview" data-inset="true">
												<li>Vanilla</li>
												<li>Yogurt</li>
												<li>Strawberry</li>
												<li>Fashion fruit</li>
												<li>Chocolate</li>
											</ul>
										</li>
										<li>WAFFLE SET
											<ul data-role="listview" data-inset="true">
												<li>Original Waffle</li>
												<li>Waffle + Coffee</li>
												<li>Waffle + Icecream</li>
												<li>Waffle + Juice</li>
											</ul>
										</li>
									</ul>
								</li>
								<li>SANDWICH
									<ul data-role="listview">
										<li>Hamburger Sandwich</li>
										<li>Club Sandwich</li>
										<li>Submarine Sandwich</li>
										<li>BLT Sandwich</li>
										<li>Montecristo Sandwich</li>
										<li>Ruben Sandwich</li>
										<li>Pitta Sandwich</li>
									</ul>
								</li>
							</ul>
						
							<ul class="link">
								<li>&lt;ul data-role="listview" data-inset="true"></li>
								<li class="egov-txtIn1">&lt;li&gt;COFFEE SHOP</li>
								<li class="egov-txtIn2">&lt;ul data-role="listview" data-inset="true"&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;COFFEE</li>
								<li class="egov-txtIn4">&lt;ul data-role="listview" data-inset="true"&gt;</li>
								<li class="egov-txtIn5">&lt;li&gt;Americano&lt;/li&gt;</li>
								<li class="egov-txtIn5">&lt;li&gt;Caffe Latte&lt;/li&gt;</li>
								<li class="egov-txtIn5">&lt;li&gt;Caffe Mocha&lt;/li&gt;</li>
								<li class="egov-txtIn4">&lt;/ul&gt;</li>
								<li class="egov-txtIn3">&lt;/li&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;ICECREAM</li>
								<li class="egov-txtIn4">&lt;ul data-role="listview" data-inset="true"&gt;</li>
								<li class="egov-txtIn5">&lt;li&gt;Vanilla&lt;/li&gt;</li>
								<li class="egov-txtIn5">&lt;li&gt;Yogurt&lt;/li&gt;</li>
								<li class="egov-txtIn5">&lt;li&gt;Strawberry&lt;/li&gt;</li>
								<li class="egov-txtIn5">&lt;li&gt;Fashion fruit&lt;/li&gt;</li>
								<li class="egov-txtIn5">&lt;li&gt;Chocolate&lt;/li&gt;</li>
								<li class="egov-txtIn4">&lt;/ul&gt;</li>
								<li class="egov-txtIn3">&lt;/li&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;WAFFLE SET</li>
								<li class="egov-txtIn4">&lt;ul data-role="listview" data-inset="true"&gt;</li>
								<li class="egov-txtIn5">&lt;li&gt;Belgium Waffle&lt;/li&gt;</li>
								<li class="egov-txtIn5">&lt;li&gt;Waffle + Coffee&lt;/li&gt;</li>
								<li class="egov-txtIn5">&lt;li&gt;Waffle + Icecream&lt;/li&gt;</li>
								<li class="egov-txtIn5">&lt;li&gt;Waffle + Juice&lt;/li&gt;</li>
								<li class="egov-txtIn4">&lt;/ul&gt;</li>
								<li class="egov-txtIn3">&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;/ul&gt;</li>
								<li class="egov-txtIn1">&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;SANDWICH</li>
								<li class="egov-txtIn2">&lt;ul data-role="listview"&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;Hamburger Sandwich&lt;/li&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;Club Sandwich&lt;/li&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;Submarine Sandwich&lt;/li&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;BLT Sandwich&lt;/li&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;Montecristo Sandwich&lt;/li&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;Ruben Sandwich&lt;/li&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;Pitta Sandwich&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;/ul&gt;</li>
								<li class="egov-txtIn1">&lt;/li&gt;</li>
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