<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : changemode.jsp
  Description :  UX list component
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2012.08.07    박지민          신규 List 기능 추가
 
    author   : 모바일 실행환경 개발팀 황민희
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>UX Component - Change Mode List</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />    
        
        <!-- eGovFrame Common import -->        
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css" />" />
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" />" />
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"/>"></script>
		
		<!-- Swipe Button 관련 CSS 및 JS 임포트 시작 - 박지민 ( 2012.08.03 ) -->
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/swipebutton/jquery-mobile-custom.css"/>">
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/swipebutton/jquery-mobile-custom.js"/>"></script>
      
        <!-- Swipe Button 관련 CSS 및 JS 임포트 끝 - 박지민 ( 2012.08.03 ) -->
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js"/>"></script>
        
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
					<div class="egov-deth1">
						<h2>Change Mode List - Swipe Menu, Swipe Delete</h2>
						<p>Change Mode List는 List에서 Swipe라는 Action을 통해 버튼을 생성하고, 
						버튼에 Event를 발생시켜 페이지 이동이나 선택된 List를 삭제할 수 있다.
						이 샘플에서는 오른쪽으로 Swipe할 경우에 버튼을 생성하여 페이지 이동 또는 리스트 삭제의 샘플을 보여준다.<br>
						Change Mode List 관련 내용들을 사용하기 위해서는  <strong>jquery-mobile-custom.css, jquery-mobile-custom.js</strong> 
						를 반드시 jquery와 jquerymobile 사이에 포함해주어야 하며 li 의 데이터 속성을 추가함으로서 기능을 이용할 수 있다.<br> 
						li의 속성에 <strong>data-swipefg="menu"</strong> 라는 속성을 추가함으로서 list에서 swiperight를 통해  버튼 메뉴가 생성되고
						버튼을 클릭함으로서 li의 속성에 <strong>data-swipeurl, data-swipeurl2</strong> 속성에 적용된 별도의 경로로 이동할 수 있다.<br>
						또한, li의 속성에 <strong>data-swipefg="delete"</strong> 라는 속성을 추가함으로서 list에서 swiperight를 통해 list에 삭제 버튼이 생성되고
						버튼을 클릭함으로서 이벤트가 발생한 list를 제거할 수 있다.<br>
						jquery-mobile-custom.js 의 주요 기능은, pageshow event에서 div내에 있는 ul li 개체들 중 swiperight 이벤트가 발생 시
						data-swipefg 의 속성값을 확인하여 menu 기능 혹은 delete의 기능을 수행한다.
						</p>
						
						<p>jquery-1.9.1.min.js 와 jquery.mobile-1.1.1.js 스크립트 사이에 적용</p>
                        <div class="egov-deth2">
                            <ul class="link">                                    
	                            <li>&lt;!-- swipemenu  css--&gt;</li>
	                            <li>&lt;!-- jquery-mobile-custom.css - Swipe Menu 관련 디자인 css 파일 --&gt;</li>                                    
	                            <li>&lt;!-- swipemenu  javascript--&gt;</li>
	                            <li>&lt;!-- jquery-mobile-custom.js - Swipe Menu 관련 Javascript 파일 --&gt;</li>
								<li>&lt;link type="text/css" rel="stylesheet" href="&lt;c:url value="/css/egovframework/mbl/cmm/swipebutton/jquery-mobile-custom.css" /&gt;" /&gt;</li>                                    
	                            <li>&lt;script type="text/javascript" src="&lt;c:url value="/js/egovframework/mbl/cmm/swipebutton/jquery-mobile-custom.js"&gt;&lt;/script&gt;</li>
                            </ul>
                        </div>
						
						<p>Swipe Menu 예제 코드</p>
						<div class="egov-deth2">
							<ul data-role="listview" data-inset="true">
								<li data-role="list-divider">Swipe Menu</li>
								<li data-swipeurl="mode-page1.do" data-swipeurl2="mode-page2.do" data-swipefg="menu">
									<a href="#">Swipe Menu Item 1</a>
								</li>								
								<li data-swipeurl="mode-page1.do" data-swipeurl2="mode-page2.do" data-swipefg="menu">
									<a href="#">Swipe Menu Item 2</a>
								</li>								
								<li data-swipeurl="mode-page1.do" data-swipeurl2="mode-page2.do" data-swipefg="menu">
									<a href="#">Swipe Menu Item 3</a>
								</li>
							</ul>

							<ul class="link">								
								<li>&lt;ul data-role="listview" data-inset="true"&gt;</li>
								<li class="egov-txtIn1">&lt;li data-role="list-divider">Swipe Menu&lt;/li&gt; </li>
								<li class="egov-txtIn1">&lt;li data-swipeurl="mode-page1.do" data-swipeurl2="mode-page2.do" data-swipefg="menu"&gt;</li>
								<li class="egov-txtIn2">&lt;a href="#">Swipe Item 1&lt;/a&gt; </li>
								<li class="egov-txtIn1">&lt;/li&gt; </li>
								<li class="egov-txtIn1">&lt;li data-swipeurl="mode-page1.do" data-swipeurl2="mode-page2.do" data-swipefg="menu"&gt;</li>
								<li class="egov-txtIn2">&lt;a href="#">Swipe Item 2&lt;/a&gt; </li>
								<li class="egov-txtIn1">&lt;/li&gt; </li>
								<li class="egov-txtIn1">&lt;li data-swipeurl="mode-page1.do" data-swipeurl2="mode-page2.do" data-swipefg="menu"&gt;</li>
								<li class="egov-txtIn2">&lt;a href="#">Swipe Item 3&lt;/a&gt; </li>
								<li class="egov-txtIn1">&lt;/li&gt; </li>							
								<li>&lt;/ul&gt;</li>								
							</ul>
						</div>
						
						<p>Swipe Delete 예제 코드</p>
						<div class="egov-deth2">
							<ul data-role="listview" data-inset="true">
								<li data-role="list-divider">Swipe Delete</li>
								<li data-swipefg="delete">
									<a href="#">Swipe Delete Item 1</a>
								</li>								
								<li data-swipefg="delete">
									<a href="#">Swipe Delete Item 2</a>
								</li>
								<li data-swipefg="delete">
									<a href="#">Swipe Delete Item 3</a>
								</li>								
							</ul> 

							<ul class="link">
								<li>&lt;ul data-role="listview" data-inset="true"&gt;</li>
								<li class="egov-txtIn1">&lt;li data-role="list-divider">Swipe Delete&lt;/li&gt; </li>
								<li class="egov-txtIn1">&lt;li data-swipefg="delete"&gt;</li>
								<li class="egov-txtIn2">&lt;a href="#">Swipe Delete Item 1&lt;/a&gt; </li>
								<li class="egov-txtIn1">&lt;/li&gt; </li>
								<li class="egov-txtIn1">&lt;li data-swipefg="delete"&gt;</li>
								<li class="egov-txtIn2">&lt;a href="#">Swipe Delete Item 2&lt;/a&gt; </li>
								<li class="egov-txtIn1">&lt;/li&gt; </li>
								<li class="egov-txtIn1">&lt;li data-swipefg="delete"&gt;</li>
								<li class="egov-txtIn2">&lt;a href="#">Swipe Delete Item 3&lt;/a&gt; </li>
								<li class="egov-txtIn1">&lt;/li&gt; </li>
								<li>&lt;/ul&gt;</li>								
							</ul>
						</div>
						
						<h2>추가 설명 Change Mode List - Swipe Menu에서 버튼 관련 수정 방법 예시</h2>
						<p>
						<strong>jquery-mobile.custom.js</strong> 파일을 보게 되면 'ul li' 에 발생하는 swiperight 이벤트의 function 에서 로직을 처리하게 된다.<br> 
						$('ul li').unbind('swiperight').bind('swiperight', function(e){ . . . }<br>
						실제적인 활용을 위해 다음과 같은 두 가지의 경우를 생각해볼 수 있다.<br>
						1. 버튼의 개수 변경<br>
						2. 버튼의 이름 변경<br><br>
						이와 같은 경우 다음과 같이 처리할 수 있다.
						</p>
						<div class="egov-deth2">
						<p>이름을 $name, $name2 변수에 할당하여 $myBtn01 에 들어가는 태그에 $name을 넣는 처리<strong>(swiperight function() 내부에 작성)</strong></p>
						<p>var $li = $(this);<br>
						<br>
						var <strong>$name</strong> = $li.data('btnname');<br>
						var <strong>$name2</strong> = $li.data('btnname2');<br>
						<br>			
						if(<strong>$name</strong> == undefined) {<br>
							<strong>$name</strong> = 'Button1';<br>
						}<br>
						if(<strong>$name2</strong> == undefined) {<br>
							<strong>$name2</strong> = 'Button2';<br>
						}<br>
						</p>
						<p>... 중략 ...</p>					
						<p>var $myBtn01 = $('&lt;a&gt;'+<strong>$name</strong>+'&lt;/a&gt;')<br>
								.attr({<br>
									'class': 'aSwipeBtn ui-btn-up-b',<br>
									'href': $li.data('swipeurl')<br>
								});<br>
						var $myBtn02 = $('&lt;a&gt;'+<strong>$name2</strong>+'&lt;/a&gt;')<br>
								.attr({<br>
									'class': 'aSwipeBtn ui-btn-up-e',<br>
									'href': $li.data('swipeurl2')<br>
								});<br>
						</p>
						<p><strong>$li.data('btnname'), $li.data('btnname2')</strong> 이와 같이 처리하였다면 HTML 코드에서 li tag 내에 <strong>data-*</strong> 를 통해 추가적인 사용자 데이터(버튼명)를 보낸다.<br>
						<strong>예&gt;</strong><br>
						&lt;li data-swipeurl="mode-page1.do" data-swipeurl2="mode-page2.do" data-swipefg="menu" <strong>data-btnname="custom1" data-btnname2="custom2"</strong>&gt;
						</p>
						
						<p>버튼의 개수 변경은 var $myBtn[번호] 를 더 선언하여 하단의 <br>
						$divSwipe.prepend($myBtn01,$myBtn02,<strong>$myBtn[번호]</strong>).show(100); 와 같이 추가적으로 처리할 수 있을 것이다. </p>
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