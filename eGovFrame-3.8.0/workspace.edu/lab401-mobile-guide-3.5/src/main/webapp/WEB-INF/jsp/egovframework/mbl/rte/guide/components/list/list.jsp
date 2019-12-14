<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : list.jsp
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
        <title>UX Component - Table / List</title> 
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
        
        <script type="text/javascript" >
            function listRefresh() {
                
                var $listRefresh = $('#listRefresh');

                var listHtml = '<li><a href="#">';
                listHtml += '<h3>Refresh Sample</h3>';
                listHtml += '<p><strong>$(\'findList\').listview(\'refresh\')</strong></p>';
                listHtml += '<p>Refresh : ' + new Date() + '</p>';
                listHtml += '</a></li>';

                $listRefresh.html(listHtml);
                $listRefresh.listview('refresh');
                
            }
        </script>
        
	</head>
	
    <body>
    
        <!-- page one start -->
		<div data-role="page" class="type-index">
		
            <!-- header start -->
            <div data-role="header" data-position="inline" data-theme="z"  class="egovBarHeader">
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
						<h1>List</h1>
						<p>전자정부 모바일 표준프레임워크를 통해 생성된 리스트는 모바일 환경에 최적화된 형태로 제공된다.
						리스트의  너비는 화면의 너비에 자동으로 맞춰지며 리스트 아이템 오른쪽에 arrow-r 아이콘이 적용된다.
						리스트는 데이터의 정렬, 내비게이션(링크), 결과 목록, 데이터 입력폼 등 폭 넓은 기능을 수행하므로
						전자정부 모바일 표준프레임워크에서는 다양한 종류의 리스트를 지원하고 있다.</p>
		     		</div>
					
					<div class="egov-deth1">
						<h2>기본코드</h2> 
						<p>리스트 Tag(ol, ul)에 <strong>data-role=”listview”</strong> 속성을 추가하면 
						전자정부 모바일 표준프레임워크에서 제공하는 리스트를 생성할 수 있다. 
						페이지 내용의 레이아웃에 맞춰 리스트를 삽입하려면 <strong>data-inset=”true”</strong> 속성을 리스트 Tag에 추가한다.
						data-inset 속성을 true 로 지정하면 리스트에 여백과 둥근 모서리가 적용된다.</p>
						
						<div class="egov-deth2">
							<ul data-role="listview" data-inset="true" data-theme="c">
								<li>List Item 1</li>
								<li>List Item 2</li>
								<li>List Item 3</li>
							</ul>
	
							<ul class="link">
								<li>&lt;ul data-role="listview" data-inset="true"&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;List Item 1&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;List Item 2&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;List Item 3&lt;/li&gt;</li>
								<li>&lt;/ul&gt;</li>
							</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>리스트 링크</h2> 
						<p>&lt;li&gt;Tag에 <strong>Anchor 링크</strong>를 추가하면 내비게이션 기능을 수행하는 리스트 링크를 생성할 수 있다.</p>
						
						<div class="egov-deth2">
							<ul data-role="listview" data-inset="true">
								<li><a href="<c:url value="/guide/guide.do"/>">Link to Home</a></li>
								<li><a href="http://www.egovframe.go.kr">Link to egovframe</a></li>
							</ul>
							
							<ul class="link">
								<li>&lt;ul data-role="listview" data-inset="true"&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="<c:url value="/guide/guide.do"/>"&gt;Link to Home&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="http://www.egovframe.go.kr"&gt;Link to egovFrame&lt;/a&gt;&lt;/li&gt;</li>
								<li>&lt;/ul&gt;</li>
							</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>확장된 기능의 리스트</h2> 
						
						<div class="egov-deth2">
		                <ul data-role="listview" data-inset="true" data-theme="d" data-dividertheme="y">
							<li><a href="<c:url value="/guide/components/list/nested.do"/>">Nested List</a></li>
							<li><a href="<c:url value="/guide/components/list/numbered.do"/>">Numbered List</a></li>
							<li><a href="<c:url value="/guide/components/list/split.do"/>">Split Button</a></li>
							<li><a href="<c:url value="/guide/components/list/divider.do"/>">List Divider</a></li>
							<li><a href="<c:url value="/guide/components/list/bubble.do"/>">Count Bubble</a></li>
							<li><a href="<c:url value="/guide/components/list/thumb.do"/>">Thumbnail</a></li>
							<li><a href="<c:url value="/guide/components/list/listIcon.do"/>">List Icon</a></li>
							<li><a href="<c:url value="/guide/components/list/format.do"/>">Content Formatting</a></li>
							<li><a href="<c:url value="/guide/components/list/filter.do"/>">Search Filter Bar</a></li>
							<li><a href="<c:url value="/guide/components/list/changemode.do"/>" data-ajax="false">Change Mode List</a></li>
							<li><a href="<c:url value="/guide/components/list/checked.do"/>" data-ajax="false">Checked List</a></li>
						</ul>
	
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>리스트 업데이트</h2> 
						<p><strong>refresh()</strong> 메소드를 이용하여 리스트의 스타일 및 내용을 동적으로 업데이트할 수 있다. </p>
						
						<div class="egov-deth2">		

			                <a href="javascript:listRefresh()" data-role="button">refresh</a>
	                        <ul data-role="listview" data-inset="true" data-theme="c" id="listRefresh">
	                            <li>refresh 버튼을 눌러 주세요.</li>
	                        </ul>
                        
							<ul class="link">
								<li>$('findList').listview('refresh');</li>
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
				 <h4 class="main">Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
			
		</div>
		<!-- page end -->
	
    </body>
</html>