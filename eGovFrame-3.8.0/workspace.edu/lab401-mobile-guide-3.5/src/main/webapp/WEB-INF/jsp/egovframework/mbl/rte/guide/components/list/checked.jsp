<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : checked.jsp
  Description :  UX list component
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2012.08.22    박지민          신규 List 기능 추가
 
    author   : 모바일 실행환경 개발팀 황민희
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>UX Component - Checked List</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />    
        
        <!-- eGovFrame Common import -->        
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css" />" />
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" />" />
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"/>"></script>
		
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js"/>"></script>
        
        <!-- guide import -->
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/rte/guide/guide.css" />">
        <script type="text/javascript"  src="<c:url value="/js/egovframework/mbl/rte/guide/guide.js"/>"></script>
        
        <script type="text/javascript" >
        	$(document).bind('pageinit', function() {
        		$("#checkSubmit").click( function() {
	            	var str = "";
	            		            	
	            	$("#group_1 input[type='checkbox']:checked").each(function() {
	            	    str += ","+$(this).val();
	            	 });
	            	
	            	var ret = str.substring(1,str.length);
	            	if(ret.length == 0) {
	            		ret = "nothing.";
	            	}
	            	else {
	            		ret = ret + ". It's delicious.";
	            	}
	            	$("#promptOut").text(ret);
	            });
        	});
        </script>		
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
						<h2>Checked List</h2>
						<p>Checked List는 List로서의 기능과, Checkbox의 기능을 결합하여 List를 Checkbox형태로 선택할 수 있을 뿐만 아니라, 
						오른쪽의 버튼을 통해 특정 경로로 이동 또는 어떠한 Action을 부여하여, 현재 List의 자세한 내용 보기와 같은 기능으로 활용할 수 있을 것이다.<br>
						하지만, JqueryMobile의 기본 디자인 상 Button에 텍스트가 들어가지 않을 경우 높이가 자동 조절되어 낮아지는 문제로, 
						<strong>좌측의 Checkbox와 우측의 Button</strong> 의 형태를 맞추어 주지 않으면, <strong>높이가 같아지지 않는다.</strong><br>
						다시 말해서, Checkbox와 Button 둘 중 하나만 텍스트가 들어간 경우에는 텍스트 유무에 따라 높이가 자동조절 되므로 두 컴포넌트의 높이가 일치하지 않는다.<br> 
						따라서, <strong>Checkbox와 Button 모두 어떠한 Text를 삽입하는 방법으로 높이를 맞추어 주어야 한다.</strong>
						</p>
																	
						<div class="egov-deth2">
							<strong>What kind of fruits do you like?</strong><br>
							<div data-role="controlgroup" class="checkList">
								<ul data-role="listview" data-inset="true" id="group_1">
									<li>
										<input type="checkbox" name="checkbox-a" id="checkbox-a" value="Apple"/>
							 			<label for="checkbox-a">Apple</label>
							 			<div class="detailBtn"><a data-role="button" data-icon="info" data-iconpos="right" href="<c:url value="checked-detail.do"/>">View</a></div>
							 		</li>
									<li>
										<input type="checkbox" name="checkbox-b" id="checkbox-b" value="Orange"/>
							 			<label for="checkbox-b">Orange</label>
							 			<div class="detailBtn"><a data-role="button" data-icon="info" data-iconpos="right" href="<c:url value="checked-detail.do"/>">View</a></div>
							 		</li>					 		
							 		<li>
										<input type="checkbox" name="checkbox-c" id="checkbox-c" value="Melon"/>
							 			<label for="checkbox-c">Melon</label>
							 			<div class="detailBtn"><a data-role="button" data-icon="info" data-iconpos="right" href="<c:url value="checked-detail.do"/>">View</a></div>
							 		</li>
							 	</ul>
							</div>
							
							<strong>You want <span id="promptOut"></span></strong>
							<a href="#" id="checkSubmit" data-role="button">submit</a>
							
							<ul class="link">
								<li class="egov-txtIn1">&lt;div data-role="controlgroup" class="checkList"&gt;</li>
								<li class="egov-txtIn2">&lt;ul data-role="listview" data-inset="true" id="group_1"&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;</li>
								<li class="egov-txtIn4">&lt;input type="checkbox" name="checkbox-a" id="checkbox-a" value="Apple"/&gt;</li>
								<li class="egov-txtIn4">&lt;label for="checkbox-a"&gt;Apple&lt;/label&gt;</li>
								<li class="egov-txtIn4">&lt;div class="detailBtn"&gt;&lt;a data-role="button" data-icon="info" data-iconpos="right" href="&lt;c:url value="checked-detail.do"/&gt;"&gt;View&lt;/a&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn3">&lt;/li&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;</li>
								<li class="egov-txtIn4">&lt;input type="checkbox" name="checkbox-b" id="checkbox-b" value="Orange"/&gt;</li>
								<li class="egov-txtIn4">&lt;label for="checkbox-b"&gt;Orange&lt;/label&gt;</li>
								<li class="egov-txtIn4">&lt;div class="detailBtn"&gt;&lt;a data-role="button" data-icon="info" data-iconpos="right" href="&lt;c:url value="checked-detail.do"/&gt;"&gt;View&lt;/a&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn3">&lt;/li&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;</li>
								<li class="egov-txtIn4">&lt;input type="checkbox" name="checkbox-c" id="checkbox-c" value="Melon"/&gt;</li>
								<li class="egov-txtIn4">&lt;label for="checkbox-c"&gt;Melon&lt;/label&gt;</li>
								<li class="egov-txtIn4">&lt;div class="detailBtn"&gt;&lt;a data-role="button" data-icon="info" data-iconpos="right" href="&lt;c:url value="checked-detail.do"/&gt;"&gt;View&lt;/a&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn3">&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;/ul&gt;</li>
								<li class="egov-txtIn1">&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;strong&gt;You want &lt;span id="promptOut"&gt;&lt;/span&gt;&lt;/strong&gt;</li>
								<li class="egov-txtIn1">&lt;a href="javascript:checkSubmit()" data-role="button"&gt;submit&lt;/a&gt;</li>
							</ul>
						</div>
						
						
						<p><strong>Button 부분에 텍스트 없이 사용해야 할 경우에는 </strong> 높이를 맞추기 위해 우측의 Button부에는 anchor tag 가운데에 공백문자인 <strong>&amp;nbsp;</strong> 를 통해 높이를 맞출 수 있으나, 
								임의로 iconpos를 top, bottom 으로 지정할 경우에는 높이가 늘어나게 되어 이 경우에도 문제가 발생할 수 있다.<br>
								JqueryMobile의 기본 디자인 상의 이유들로, Checked List를 활용하기 위해서는 Checkbox와 Button에 모두 Text를 넣어야 하는 점, 
								iconpos를 지정할 때 left, right로만 지정할 수 있는 제약사항이 있다. 
						</p> 
						<div class="egov-deth2">							
							<p>공백 문자(&amp;nbsp;)를 삽입한 예</p>
							<div data-role="controlgroup" class="checkList">
								<ul data-role="listview" data-inset="true" id="group_2">
							 		<li>
										<input type="checkbox" name="checkbox-e" id="checkbox-e" value="No Text"/>
							 			<label for="checkbox-e">Apple</label>
							 			<div class="detailBtn"><a data-role="button" data-icon="info" data-iconpos="right" href="<c:url value="checked-detail.do"/>">&nbsp;</a></div>
							 		</li>							 	
								</ul>
							</div>
							
							<ul class="link">
								<li class="egov-txtIn1">&lt;div data-role="controlgroup" class="checkList"&gt;</li>
								<li class="egov-txtIn2">&lt;ul data-role="listview" data-inset="true" id="group_2"&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;</li>
								<li class="egov-txtIn4">&lt;input type="checkbox" name="checkbox-e" id="checkbox-e" value="No Text"/&gt;</li>
								<li class="egov-txtIn4">&lt;label for="checkbox-e"&gt;Apple&lt;/label&gt;</li>
								<li class="egov-txtIn4">&lt;div class="detailBtn"&gt;&lt;a data-role="button" data-icon="info" data-iconpos="right" href="&lt;c:url value="checked-detail.do"/&gt;"&gt;&nbsp;&lt;/a&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn3">&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;/ul&gt;</li>
								<li class="egov-txtIn1">&lt;/div&gt;</li>
							</ul>
<!-- 														
							<p>Checkbox와 Button에 모두 Text를 제거하고 싶은 경우 높이를 맞추기 위해 해당 list tag에 <strong>&lt;li class="notxtno"&gt;</strong> 와 같이 추가한다.<br>
							</p>
							<div data-role="controlgroup" class="checkList">
								<ul data-role="listview" data-inset="true" id="group_3">
							 		<li class="notxtno">
										<input type="checkbox" name="checkbox-g" id="checkbox-g" value="4"/>
							 			<label for="checkbox-g"></label>
							 			<div class="detailBtn"><a data-role="button" data-icon="gear" data-iconpos="notext" href="<c:url value="checked-detail.do"/>">Detail</a></div>
							 		</li>								 	
								</ul>
							</div>
							
							<ul class="link">
								<li class="egov-txtIn1">&lt;div data-role="controlgroup" class="checkList"&gt;</li>
								<li class="egov-txtIn2">&lt;ul data-role="listview" data-inset="true" id="group_3"&gt;</li>
								<li class="egov-txtIn3">&lt;li class="notxtno"&gt;</li>
								<li class="egov-txtIn4">&lt;input type="checkbox" name="checkbox-g" id="checkbox-g" value="4"/&gt;</li>
								<li class="egov-txtIn4">&lt;label for="checkbox-g"&gt;&lt;/label&gt;</li>
								<li class="egov-txtIn4">&lt;div class="detailBtn"&gt;&lt;a data-role="button" data-icon="gear" data-iconpos="notext" href="&lt;c:url value="checked-detail.do"/&gt;"&gt;Detail&lt;/a&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn3">&lt;/li&gt;</li>								 	
								<li class="egov-txtIn2">&lt;/ul&gt;</li>
								<li class="egov-txtIn1">&lt;/div&gt;</li>					
							</ul>
 -->
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