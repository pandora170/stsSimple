<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : theme.jsp
  Description :  pageStructure
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    황민희          최초 생성
 
    author   : 모바일 실행환경 개발팀 황민희
    since    : 2011.07.06
--%>
<%
    String dataTheme = (request.getParameter("dataTheme") == null) ? "a" : request.getParameter("dataTheme");
%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>UX Component - pageStructure</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- eGovFrame Common import -->
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css" />">
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" />">
		<script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"/>"></script>
 
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js" />"></script>
        
		<!-- guide import -->
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/rte/guide/guide.css" />">
        <script type="text/javascript"  src="<c:url value="/js/egovframework/mbl/rte/guide/guide.js"/>"></script>

        <script type="text/javascript"> 
	        $.mobile.actionsheetShow = function (changeTheme) {
	      	  var btmItem = [{id : 'button1', value: "커피"},
	                               {id : 'button2', value: "사이다"},
	                               {id : 'button3', value: "맥주"}];
	            jActionSheet('Can you make a choice?', 'EgovFrame', changeTheme, btmItem);
	        };
	        
	        $.mobile.overlayShow = function (changeTheme) {
	        	jOverlay('This is a Overbox', 'EgovFrame', changeTheme);
	        };
	        
	        $.mobile.alertShow = function (changeTheme) {
	            jAlert('This is a alert box', 'EgovFrame', changeTheme);
	        };
	        
	        $.mobile.confirmShow = function (changeTheme) {
	        	 jConfirm('Can you confirm this?', 'EgovFrame', changeTheme,  function(r) { });
	        }; 
	        $.mobile.promptShow = function (changeTheme) {
	            jPrompt('Type something:', 'EgovFrame', changeTheme, function(r) {}); 
	        };
        </script>
               
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
						<h1>Theme</h1>
						<p>Theme 기능을 이용하여 하위 레벨의 색상을 변경할 수 있다. 최상위 테마 변경 Tag는 
						      &lt;data-role="page"&gt; 이며 변경시 page 하위의 Header, Footer, Panel, UX Component의 색상이 변한다.<br>
						</p>
					</div>
					
					<div class="egov-deth1">
							<h2>기본코드</h2>
							<p>테마를 적용할 최상위 div Tag에 <strong>data-theme="[a~g]"</strong>를 추가한다.</p>
							<div class="egov-deth2">						
								<div data-role="header" data-theme="e">
									<h1>Header Title</h1>
								</div>
								<div class="ui-body ui-body-e">
									<p>Page 테마 적용시 <br>
									Header, Panel, Footer 의 색상이 변경된다.</p>
								</div>
								<div data-role="footer" data-theme="e">
									<h1>Footer Title</h1>
								</div>				
					 		<ul class="link">
								 <li>&lt;div data-role="header" data-theme="e"&gt;</li>
								 <li class="egov-txtIn1">&lt;h1&gt;Header Title&lt;/h1&gt;</li>
								 <li>&lt;/div&gt;</li>
								 <li>&lt;div data-role="content"&gt;</li>
								 <li class="egov-txtIn1">&lt;p&gt;Page 테마 적용시</li>
								 <li class="egov-txtIn1">Header, Panel, Footer 의 색상이 변경된다.&lt;/p&gt;</li>
								 <li>&lt;/div&gt;</li>
								 <li>&lt;div data-role="footer" data-theme="e"&gt;</li>
								 <li class="egov-txtIn1">&lt;h1&gt;Footer Title&lt;/h1&gt;</li>
								 <li>&lt;/div&gt;</li>
					 		</ul>
						</div>
					</div>
					
	        		<div class="egov-deth1">
						<h2>테마 예제</h2>
						<p>테마를 적용 할 경우 하위 컴포넌트들의 색상이 일괄 변형된다.
						만약 해당 상위테마를 사용하고 싶지 않은 경우 적용하고 싶지 않은 요소의 최상위 div Tag에 다른 테마를 정의한다.
						</p>
						
						<div class="egov-deth2">
	                        <form>
								<div data-role="fieldcontain">
									<label for="dataTheme" class="select">테마 선택 : </label>
									<select name="dataTheme" id="dataTheme" onchange="javascript:document.forms[0].submit();">
										<option value="a" <%= (dataTheme.equals("a")) ? "selected" : "" %>>data-theme="a"</option>
										<option value="b" <%= (dataTheme.equals("b")) ? "selected" : "" %>>data-theme="b"</option>
										<option value="c" <%= (dataTheme.equals("c")) ? "selected" : "" %>>data-theme="c"</option>
										<option value="d" <%= (dataTheme.equals("d")) ? "selected" : "" %>>data-theme="d"</option>
										<option value="e" <%= (dataTheme.equals("e")) ? "selected" : "" %>>data-theme="e"</option>
										<option value="f" <%= (dataTheme.equals("f")) ? "selected" : "" %>>data-theme="f"</option>
										<option value="g" <%= (dataTheme.equals("g")) ? "selected" : "" %>>data-theme="g"</option>
									</select>
								</div>
							</form>
						</div>
						
						<dl class="egov-deth3">
							<dt><%= dataTheme %> 테마 적용 (data-theme="<%= dataTheme %>")</dt>
							<dd></dd>
						</dl>	
					
						<dl class="egov-deth3">
							<dd class="egovBul">Header</dd>
						</dl>	
						<div class="egov-deth2">
							<div data-role="header" data-position="inline" data-theme="<%= dataTheme %>">
								<a href="#" data-icon="plus">New</a> 
								<h1>Bar theme "<%= dataTheme %>"</h1> 
								<a href="#" data-icon="arrow-r" data-iconpos="right">Save</a> 
							</div> 
							<ul class="link">
								<li>&lt;div data-role="header" data-position="inline" data-theme="<%= dataTheme %>"></li>
								<li class="egov-txtIn1">&lt;a href="#" data-icon="plus">New&lt;/a&gt;</li>
								<li class="egov-txtIn1">&lt;h1&gt;Bar theme "<%= dataTheme %>"&lt;/h1&gt;</li>
								<li class="egov-txtIn1">&lt;a href="#" data-icon="arrow-r" data-iconpos="right">Save&lt;/a&gt;</li>
								<li>&lt;div&gt;</li>
							</ul>
						</div>
						
						
						<dl class="egov-deth3">
							<dd class="egovBul">Footer</dd>
						</dl>	
						<div class="egov-deth2">
					    	<div data-role="footer" data-theme="<%= dataTheme %>"> 
					            <a href="#" data-role="button" data-icon="arrow-l" data-iconpos="right">left</a> 
					            <a href="#" data-role="button" data-icon="arrow-r" data-iconpos="right">right</a> 
					            <a href="#" data-role="button" data-icon="arrow-u" data-iconpos="right">up</a> 
					            <a href="#" data-role="button" data-icon="arrow-d" data-iconpos="right">down</a> 
							</div> 
							<ul class="link">
								<li>&lt;div data-role="footer" data-theme="<%= dataTheme %>"&gt;</li>
								<li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="arrow-l" data-iconpos="right"&gt;left&lt;/a&gt;</li>
								<li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="arrow-r" data-iconpos="right"&gt;right&lt;/a&gt;</li>
								<li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="arrow-u" data-iconpos="right"&gt;up&lt;/a&gt;</li>
								<li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="arrow-d" data-iconpos="right"&gt;down&lt;/a&gt;</li>
								<li>&lt;/div&gt;</li>                                                                           
							</ul>
						</div>											
						
						<dl class="egov-deth3">
							<dd class="egovBul">Button</dd>
						</dl>	
						<div class="egov-deth2">
							<a href="#" data-role="button" data-theme="<%= dataTheme %>">Button</a>
							<ul class="link">
								<li>&lt;a href="#" data-role="button" data-theme="<%= dataTheme %>"&gt;Button&lt;/a&gt;</li>
							</ul>
						</div>						
						
						<dl class="egov-deth3">
							<dd class="egovBul">Panel</dd>
						</dl>
						<div class="egov-deth2">
							<div class="ui-body-<%= dataTheme %>">
								<h4>Panel <%= dataTheme %></h4>
							</div>
							<ul class="link">
								<li>&lt;div class="ui-body-<%= dataTheme %>"&gt;</li>
								<li class="egov-txtIn1">&lt;h4&gt;Panel <%= dataTheme %>&lt;/h4&gt;</li>
								<li>&lt;/div&gt;</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">	
							<dd class="egovBul">Tabs</dd>
						</dl>
						<div class="egov-deth2">
							<div data-role="navbar" data-theme="<%= dataTheme %>">
								<ul>
									<li><a href="#" class="ui-btn-active" data-theme="<%= dataTheme %>">One</a></li>
									<li><a href="#" data-theme="<%= dataTheme %>">Two</a></li>
									<li><a href="#" data-theme="<%= dataTheme %>">Three</a></li>
								</ul>
							</div>
	
							<ul class="link">
								<li>&lt;div data-role="navbar" data-theme="<%= dataTheme %>"&gt;</li>
								<li class="egov-txtIn1">&lt;ul&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" class="ui-btn-active"&gt;One&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Two&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Three&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;/ul&gt;</li>
								<li>&lt;/div&gt;</li>
							</ul>
						</div>
	
						<dl class="egov-deth3">	
							<dd class="egovBul">Form</dd>
						</dl>
						<div class="egov-deth2">
							<form>
								<div data-role="content" data-theme="<%= dataTheme %>">
									<div data-role="fieldcontain">
										<label for="name">Text :</label>
										<input type="text" id="name"/>
									</div>
					
									<div data-role="fieldcontain">              
										<label for="slider">Slider:</label>
										<input type="range" id="slider" value="0" min="0" max="100"  />
									</div>
								</div>
							</form>
							<ul class="link">
								<li>&lt;form&gt;</li>
								<li class="egov-txtIn1">&lt;div data-role="content" data-theme="<%= dataTheme %>"&gt;</li>
								<li class="egov-txtIn2">&lt;div data-role="fieldcontain"&gt;</li>
								<li class="egov-txtIn3">&lt;label for="name"&gt;Text :&lt;/label&gt;</li>
								<li class="egov-txtIn3">&lt;input type="text" id="name"/&gt;</li>
								<li class="egov-txtIn2">&lt;/div&gt;</li>
								<li class="egov-txtIn2">&lt;div data-role="fieldcontain"&gt;</li>              
								<li class="egov-txtIn3">&lt;label for="slider"&gt;Slider:&lt;/label&gt;</li>
								<li class="egov-txtIn3">&lt;input type="range" id="slider" value="0" min="0" max="100"  /&gt;</li>
								<li class="egov-txtIn2">&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;/div&gt;</li>
								<li>&lt;/form&gt;</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">	
							<dd class="egovBul">Menu</dd>
						</dl>
						<div class="egov-deth2">
							<ul data-role="listview" data-inset="true" data-theme="<%= dataTheme %>" data-dividertheme="<%= dataTheme %>">
			                    <li data-role="list-divider">Menu</li>
			                    <li><a href="#menu1" data-rel="dialog" data-transition="slide">전자정부 모바일 표준프레임워크 개요</a></li>
			                </ul>   
							<ul class="link">
								<li>&lt;ul data-role="listview" data-inset="true" data-theme="<%= dataTheme %>" data-dividertheme="<%= dataTheme %>"&gt;</li>
				                <li class="egov-txtIn1">&lt;li data-role="list-divider"&gt;Menu&lt;/li&gt;</li>
				                <li class="egov-txtIn1">&lt;li&gt;&lt;a href="#menu1" data-rel="dialog" data-transition="slide"&gt;전자정부 모바일 표준프레임워크 개요&lt;/a&gt;&lt;/li&gt;</li>
				                <li>&lt;/ul&gt;</li>  
							</ul>
						</div>
	
						<dl class="egov-deth3">	
							<dd class="egovBul">Dialog</dd>
						</dl>
						<div class="egov-deth2">
	                           <a href="javascript:$.mobile.actionsheetShow('<%= dataTheme %>');" data-role="button" data-theme="<%= dataTheme %>"> ActionSheet Dialog  data-theme="<%= dataTheme %>"</a>
	                           <a href="javascript:$.mobile.overlayShow('<%= dataTheme %>');" data-role="button" data-theme="<%= dataTheme %>">Overlay Dialog  data-theme="<%= dataTheme %>"</a>
	                           <a href="javascript:$.mobile.alertShow('<%= dataTheme %>');" data-role="button" data-theme="<%= dataTheme %>">Alert Dialog  data-theme="<%= dataTheme %>"</a>
	                           <a href="javascript:$.mobile.confirmShow('<%= dataTheme %>');" data-role="button" data-theme="<%= dataTheme %>"> Confirm Dialog  data-theme="<%= dataTheme %>"</a>
	                           <a href="javascript:$.mobile.promptShow('<%= dataTheme %>');" data-role="button" data-theme="<%= dataTheme %>">Show prompt Dialog  data-theme="<%= dataTheme %>"</a>
							<ul class="link">
							</ul>
						</div>
						
						<dl class="egov-deth3">	
							<dd class="egovBul">Grid</dd>
						</dl>
						<div class="egov-deth2">
							<div class="ui-grid-a">
								<div class="ui-block-a"><div class="ui-body-<%= dataTheme %>" style="text-align:center"><h3>ui-block-a</h3></div></div>
								<div class="ui-block-b"><div class="ui-body-<%= dataTheme %>" style="text-align:center"><h3>ui-block-b</h3></div></div>
							</div>	
							<ul class="link">
								<li>&lt;div class="ui-grid-a"&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-a"&gt;&lt;div class="ui-body-<%= dataTheme %>" style="text-align:center"&gt;&lt;h3&gt;ui-block-a&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-b"&gt;&lt;div class="ui-body-<%= dataTheme %>" style="text-align:center"&gt;&lt;h3&gt;ui-block-b&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li>&lt;/div&gt;</li>	
							</ul>
						</div>
						
						<dl class="egov-deth3">	
							<dd class="egovBul">List</dd>
						</dl>
						<div class="egov-deth2">
							<ul data-role="listview" data-inset="true" data-theme="<%= dataTheme %>">
								<li>Nested List</li>
								<li>Numbered List</li>
								<li>Split Button</li>
								<li>List Divider</li>
								<li>Count Bubble</li>
								<li>Thumbnail</li>
								<li>List Icon</li>
								<li>Content Formatting</li>
								<li>Search Filter Bar</li>
								<li>Change Mode List</li>
								<li>Checked List</li>
			                </ul>   
							<ul class="link">
								<li>&lt;ul data-role="listview" data-inset="true" data-theme="<%= dataTheme %>"&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;Nested List&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;Numbered List&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;Split Button&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;List Divider&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;Count Bubble&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;Thumbnail&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;List Icon&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;Content Formatting&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;Search Filter Bar&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;Change Mode List&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;Checked List&lt;/li&gt;</li>
				                <li>&lt;/ul&gt;</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">	
							<dd class="egovBul">Check Box</dd>
						</dl>
						<div class="egov-deth2">
							<div data-role="fieldcontain"> 
			                    <fieldset data-role="controlgroup" data-type="horizontal">
			                        <legend>Check Box :</legend> 
			                        <input type="checkbox" name="checkbox-6" id="checkbox-6" data-theme="<%= dataTheme %>" /> 
			                        <label for="checkbox-6" >check 1</label> 
			                        <input type="checkbox" name="checkbox-7" id="checkbox-7" data-theme="<%= dataTheme %>" /> 
			                        <label for="checkbox-7" >check 2</label>             
			                        <input type="checkbox" name="checkbox-8" id="checkbox-8" data-theme="<%= dataTheme %>" /> 
			                        <label for="checkbox-8" >check 3</label> 
			                    </fieldset> 
			                </div>
							<ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
				                <li class="egov-txtIn1">&lt;fieldset data-role="controlgroup" data-type="horizontal"&gt;</li>
				                <li class="egov-txtIn2">&lt;legend&gt;Check Box :&lt;/legend&gt;</li>
				                <li class="egov-txtIn2">&lt;input type="checkbox" name="checkbox-6" id="checkbox-6" data-theme="<%= dataTheme %>" /&gt;</li>
				                <li class="egov-txtIn2">&lt;label for="checkbox-6" >check 1&lt;/label&gt;</li>
				                <li class="egov-txtIn2">&lt;input type="checkbox" name="checkbox-7" id="checkbox-7" data-theme="<%= dataTheme %>" /&gt;</li>
				                <li class="egov-txtIn2">&lt;label for="checkbox-7" >check 2&lt;/label&gt;</li>   
				                <li class="egov-txtIn2">&lt;input type="checkbox" name="checkbox-8" id="checkbox-8" data-theme="<%= dataTheme %>" /&gt;</li>
				                <li class="egov-txtIn2">&lt;label for="checkbox-8" >check 3&lt;/label&gt;</li>
				                <li class="egov-txtIn1">&lt;/fieldset&gt;</li>
				                <li>&lt;/div&gt;</li>
							</ul>
						</div>
	
						<dl class="egov-deth3">	
							<dd class="egovBul">Radio</dd>
						</dl>
						<div class="egov-deth2">
							<fieldset data-role="controlgroup">
		                        <legend>Radio Button:</legend>
		                        <input type="radio" name="radio-choice-1" id="radio-choice-1" value="choice-1" data-theme="<%= dataTheme %>" checked="checked" />
		                        <label for="radio-choice-1" >radio 1</label>
		                        <input type="radio" name="radio-choice-1" id="radio-choice-2" value="choice-2" data-theme="<%= dataTheme %>" />
		                        <label for="radio-choice-2" >radio 2</label>
		                    </fieldset>
							<ul class="link">
								<li>&lt;fieldset data-role="controlgroup"&gt;</li>
			                    <li class="egov-txtIn1">&lt;legend&gt;Radio Button:&lt;/legend&gt;</li>
			                    <li class="egov-txtIn1">&lt;input type="radio" name="radio-choice-1" id="radio-choice-1" value="choice-1" data-theme="<%= dataTheme %>" checked="checked" /&gt;</li>
			                    <li class="egov-txtIn1">&lt;label for="radio-choice-1" &gt;radio 1&lt;/label&gt;</li>
			                    <li class="egov-txtIn1">&lt;input type="radio" name="radio-choice-1" id="radio-choice-2" value="choice-2" data-theme="<%= dataTheme %>" /&gt;</li>
			                    <li class="egov-txtIn1">&lt;label for="radio-choice-2" &gt;radio 2&lt;/label&gt;</li>
			                    <li>&lt;/fieldset&gt;</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">	
							<dd class="egovBul">Icon</dd>
						</dl>
						<div class="egov-deth2">
						<div data-role="controlgroup" data-type="horizontal">
		                    <a href="#" data-role="button" data-icon="arrow-l" data-iconpos="notext" data-theme="<%= dataTheme %>">arrow-l</a>
		                    <a href="#" data-role="button" data-icon="arrow-r" data-iconpos="notext" data-theme="<%= dataTheme %>">arrow-r</a>
		                    <a href="#" data-role="button" data-icon="arrow-u" data-iconpos="notext" data-theme="<%= dataTheme %>">arrow-u</a>
		                    <a href="#" data-role="button" data-icon="arrow-d" data-iconpos="notext" data-theme="<%= dataTheme %>">arrow-d</a>
		                    <a href="#" data-role="button" data-icon="delete" data-iconpos="notext" data-theme="<%= dataTheme %>">delete</a>
		                    <a href="#" data-role="button" data-icon="plus" data-iconpos="notext" data-theme="<%= dataTheme %>">plus</a>
		                    
		                    <a href="#" data-role="button" data-icon="minus" data-iconpos="notext" data-theme="<%= dataTheme %>">minus</a>
		                    <a href="#" data-role="button" data-icon="check" data-iconpos="notext" data-theme="<%= dataTheme %>">check</a>
		                    <a href="#" data-role="button" data-icon="gear" data-iconpos="notext" data-theme="<%= dataTheme %>">gear</a>
		                    <a href="#" data-role="button" data-icon="refresh" data-iconpos="notext" data-theme="<%= dataTheme %>">refresh</a>
		                    <a href="#" data-role="button" data-icon="forward" data-iconpos="notext" data-theme="<%= dataTheme %>">forward</a>
		                    <a href="#" data-role="button" data-icon="back" data-iconpos="notext" data-theme="<%= dataTheme %>">back</a>
		                    
		                    <a href="#" data-role="button" data-icon="grid" data-iconpos="notext" data-theme="<%= dataTheme %>">grid</a>
		                    <a href="#" data-role="button" data-icon="star" data-iconpos="notext" data-theme="<%= dataTheme %>">star</a>
		                    <a href="#" data-role="button" data-icon="alert" data-iconpos="notext" data-theme="<%= dataTheme %>">alert</a>
		                    <a href="#" data-role="button" data-icon="info" data-iconpos="notext" data-theme="<%= dataTheme %>">info</a>
		                    <a href="#" data-role="button" data-icon="search" data-iconpos="notext" data-theme="<%= dataTheme %>">search</a>
		                    <a href="#" data-role="button" data-icon="home" data-iconpos="notext" data-theme="<%= dataTheme %>">home</a>
		                    
                            <a href="#" data-role="button" data-icon="phone" data-iconpos="notext" data-theme="<%= dataTheme %>">phone</a>
                            <a href="#" data-role="button" data-icon="mail" data-iconpos="notext" data-theme="<%= dataTheme %>">mail</a>		                    
                            
                            <a href="#" data-role="button" data-icon="gps" data-iconpos="notext" data-theme="<%= dataTheme %>">gps</a>
                            <a href="#" data-role="button" data-icon="audio" data-iconpos="notext" data-theme="<%= dataTheme %>">audio</a>
                            <a href="#" data-role="button" data-icon="camera" data-iconpos="notext" data-theme="<%= dataTheme %>">camera</a>
                            <a href="#" data-role="button" data-icon="file" data-iconpos="notext" data-theme="<%= dataTheme %>">file</a>
                            <a href="#" data-role="button" data-icon="mic" data-iconpos="notext" data-theme="<%= dataTheme %>">mic</a>
                            <a href="#" data-role="button" data-icon="explorer" data-iconpos="notext" data-theme="<%= dataTheme %>">explorer</a>
						</div>      
							<ul class="link">
								<li>&lt;div data-role="controlgroup" data-type="horizontal"&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="arrow-l" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;arrow-l&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="arrow-r" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;arrow-r&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="arrow-u" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;arrow-u&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="arrow-d" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;arrow-d&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="delete" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;delete&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="plus" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;plus&lt;/a&gt;</li>
				                    
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="minus" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;minus&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="check" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;check&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="gear" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;gear&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="refresh" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;refresh&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="forward" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;forward&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="back" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;back&lt;/a&gt;</li>
				                    
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="grid" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;grid&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="star" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;star&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="alert" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;alert&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="info" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;info&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="search" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;search&lt;/a&gt;</li>
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="home" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;home&lt;/a&gt;</li>
				                
				                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="phone" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;phone&lt;/a&gt;</li>
                                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="mail" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;mail&lt;/a&gt;</li>
                                
                                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="gps" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;gps&lt;/a&gt;</li>
                                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="audio" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;audio&lt;/a&gt;</li>
                                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="camera" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;camera&lt;/a&gt;</li>
                                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="file" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;file&lt;/a&gt;</li>
                                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="mic" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;mic&lt;/a&gt;</li>
                                <li class="egov-txtIn1">&lt;a href="#" data-role="button" data-icon="explorer" data-iconpos="notext" data-theme="<%= dataTheme %>"&gt;explorer&lt;/a&gt;</li>
								<li>&lt;/div&gt;</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">	
							<dd class="egovBul">Selector / Switch</dd>
						</dl>
						<div class="egov-deth2">
							<div data-role="fieldcontain"> 
			                    <label for="select-choice-1" class="select">Select Menu:</label> 
			                    <select id="select-choice-1" data-theme="<%= dataTheme %>"> 
			                        <option value="choice1">choice 1</option> 
			                        <option value="choice2">choice 2</option> 
			                        <option value="choice3">choice 3</option> 
			                        <option value="choice4">choice 4</option> 
			                    </select> 
			                </div> 
							<ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li> 
				                <li class="egov-txtIn1">&lt;label for="select-choice-1" class="select"&gt;Select Menu:&lt;/label&gt;</li>  
				                <li class="egov-txtIn1">&lt;select id="select-choice-1" data-theme="<%= dataTheme %>"&gt;</li>  
				                <li class="egov-txtIn2">&lt;option value="choice1"&gt;choice 1&lt;/option&gt;</li>  
				                <li class="egov-txtIn2">&lt;option value="choice2"&gt;choice 2&lt;/option&gt;</li>  
				                <li class="egov-txtIn2">&lt;option value="choice3"&gt;choice 3&lt;/option&gt;</li>  
				                <li class="egov-txtIn2">&lt;option value="choice4"&gt;choice 4&lt;/option&gt;</li>  
				                <li class="egov-txtIn1">&lt;/select&gt; </li> 
				                <li>&lt;/div&gt; </li> 
							</ul>
						</div>
						<br>
						<div class="egov-deth2">
							<div data-role="fieldcontain">
			                    <label for="switch">Switch :</label>
			                    <select id="switch" data-role="slider" data-theme="<%= dataTheme %>" data-track-theme="<%= dataTheme %>">
			                        <option value="off">Off</option>
			                        <option value="on">On</option>
			                    </select> 
			                </div>
							<ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
				                <li class="egov-txtIn1">&lt;label for="switch"&gt;Switch :&lt;/label&gt;</li>
				                <li class="egov-txtIn1">&lt;select id="switch" data-role="slider" data-theme="<%= dataTheme %>" data-track-theme="<%= dataTheme %>"&gt;</li>
				                <li class="egov-txtIn2">&lt;option value="off"&gt;Off&lt;/option&gt;</li>
				                <li class="egov-txtIn2">&lt;option value="on"&gt;On&lt;/option&gt;</li>
				                <li class="egov-txtIn1">&lt;/select&gt;</li>
				                <li>&lt;/div&gt;</li>
							</ul>
						</div>
						<br>
						<div class="egov-deth2">
							<div data-role="collapsible-set">
								<div data-role="collapsible" data-theme="<%= dataTheme %>" data-content-theme="<%= dataTheme %>"> 
									<h3>collapsible 1</h3> 
									<p>collapsible 1 content</p> 
								</div>
								<div data-role="collapsible" data-collapsed="false" data-theme="<%= dataTheme %>" data-content-theme="<%= dataTheme %>"> 
									<h3>collapsible 2</h3> 
									<p>collapsible 2 content</p> 
								</div>	
							</div>
							<ul class="link">
								<li>&lt;div data-role="collapsible-set"&gt;</li>
								<li class="egov-txtIn1">&lt;div data-role="collapsible" data-theme="<%= dataTheme %>" data-content-theme="<%= dataTheme %>"&gt;</li> 
								<li class="egov-txtIn2">&lt;h3&gt;collapsible 1&lt;/h3&gt;</li>
								<li class="egov-txtIn2">&lt;p&gt;collapsible 1 content&lt;/p&gt;</li> 
								<li class="egov-txtIn1">&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div data-role="collapsible" data-collapsed="false" data-theme="<%= dataTheme %>" data-content-theme="<%= dataTheme %>"&gt;</li> 
								<li class="egov-txtIn2">&lt;h3&gt;collapsible 2&lt;/h3&gt;</li>
								<li class="egov-txtIn2">&lt;p&gt;collapsible 2 content&lt;/p&gt;</li>
								<li class="egov-txtIn1">&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;/div&gt;</li> 	
								<li>&lt;/div&gt;</li>
							</ul>
						</div>						
						<!--  
						<div class="egov-deth1">
							<h2>사용자 지원 테마</h2>
							<p>지원 테마 외에 사용자 지원 테마를 만들경우 .....XXXX 이런 것</p>
							<div class="egov-deth2">
								<div class="ui-grid-a">
								 <div class="ui-block-a"><strong>I'm Block A</strong>&nbsp;and text inside will wrap</div>
								 <div class="ui-block-b"><strong>I'm Block B</strong>&nbsp;and text inside will wrap</div>
						       </div>
						 		<ul class="link">
						 		</ul>
							</div>
						</div>
						-->							      
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
				 <h4 class="main">Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
			
		</div>
		<!-- page end -->
	
		<!-- dialog menu1 start -->
        <div id="menu1" data-role="page" data-theme="<%= dataTheme %>">          
            <div data-role="header" data-theme="<%= dataTheme %>">
                <h1>전자정부 모바일 표준프레임워크 개요</h1> 
            </div>         
            <div data-role="content" data-theme="<%= dataTheme %>">                
                <a href="#" data-role="button">소개</a>
                <a href="#" data-role="button">구성</a>
                <a href="#" data-role="button">아키텍쳐</a>
                <a href="#" data-role="button">라이선스</a>
                <a href="#" data-role="button">추진성과 및 적용사례</a>
                <a href="#" data-role="button">찾아오시는 길</a>                  
            </div>         
        </div> 
        <!-- dialog menu1 end -->
    </body>

</html>