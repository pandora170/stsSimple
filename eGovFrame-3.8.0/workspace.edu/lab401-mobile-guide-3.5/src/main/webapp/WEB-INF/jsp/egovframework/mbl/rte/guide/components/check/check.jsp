<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : check.jsp
  Description :  UX check box component
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
    <title>UX Component - Check Box</title> 
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
            function checkRefresh() {
                $("#group_1 input[type='checkbox']").attr("checked",false).checkboxradio("refresh");
            }
         </script>
	</head>
	
    <body>
    
        <!-- page start -->
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
						<h1>Check Box</h1>
						<p>체크 박스는 하나 이상의 항목을 선택 할 수 있는 기능을 제공한다. </p>
					</div>
					
					<div class="egov-deth1">
						<h2>기본코드</h2>
						<p>체크 박스를 세로로 정렬 하기 위해서는
						&lt;fieldset data-role="controlgroup"&gt;으로 체크 박스를 감싸 주어야 한다.
						또한 기본으로 체크된 효과를 나타내고 싶을 때는 &lt;input type="checkbox"&gt; Tag에 checked="checked"를 추가 한다.
						</p>
						<div class="egov-deth2">
							 <fieldset data-role="controlgroup">
							 <legend>취미 선택 :</legend>
							 <input type="checkbox" name="checkbox-1" id="checkbox-1" class="custom" />
							 <label for="checkbox-1">음악감상</label>
							 <input type="checkbox" name="checkbox-2" id="checkbox-2" class="custom" checked="checked"/>
							 <label for="checkbox-2">영화감상</label>
							 </fieldset>
					 		<ul class="link">
								<li> &lt;fieldset data-role="controlgroup"&gt;<li>
								<li class="egov-txtIn1"> &lt;legend&gt;취미 선택 :&lt;/legend&gt;<li>
								<li class="egov-txtIn1">&lt;input type="checkbox" name="checkbox-1" id="checkbox-1" class="custom" /&gt;<li>
								<li class="egov-txtIn1">&lt;label for="checkbox-1"&gt;음악감상&lt;/label&gt;<li>
								<li class="egov-txtIn1">&lt;input type="checkbox" name="checkbox-2" id="checkbox-2" class="custom" checked="checked"/&gt;<li>
								<li class="egov-txtIn1">&lt;label for="checkbox-2"&gt;영화감상&lt;/label&gt;<li>
								<li>&lt;/fieldset&gt;</li>
					 		</ul>
						</div>
					</div>
					
	        		<div class="egov-deth1">
						<h2>형태 변경</h2>
						<p>체크 박스는 가로 정렬도 가능하며 그룹에서 하나를 선택 할 수 있다.
						      가로 형으로 그룹화할 때는 기본코드의 &lt;fieldset data-role="controlgroup"&gt; Tag에  
						      <strong>data-type="horizontal"</strong>을 추가 한다.</p>
						<div class="egov-deth2">
								<div data-role="fieldcontain">
									 <fieldset data-role="controlgroup" data-type="horizontal">
									 <legend>취미 선택 :</legend>
									 <input type="checkbox" name="checkbox-3" id="checkbox-3" class="custom" />
									 <label for="checkbox-3">음악감상</label>
									 <input type="checkbox" name="checkbox-4" id="checkbox-4" class="custom" />
									 <label for="checkbox-4">영화감상</label>
									 </fieldset>
								</div>
							<ul class="link">
								 <li>&lt;div data-role=&quot;fieldcontain&quot;&gt;</li>
								 <li class="egov-txtIn1">&lt;fieldset data-role=&quot;controlgroup&quot; data-type=&quot;horizontal&quot;&gt;</li>
								 <li class="egov-txtIn2">&lt;legend&gt;취미 선택 :&lt;/legend&gt;</li>
								 <li class="egov-txtIn2">&lt;input type=&quot;checkbox&quot; name=&quot;checkbox-3&quot; id=&quot;checkbox-3&quot; class=&quot;custom&quot; /&gt;</li>
								 <li class="egov-txtIn2">&lt;label for=&quot;checkbox-3&quot;&gt;음악감상&lt;/label&gt;</li>
								 <li class="egov-txtIn2">&lt;input type=&quot;checkbox&quot; name=&quot;checkbox-4&quot; id=&quot;checkbox-4&quot; class=&quot;custom&quot; /&gt;</li>
								 <li class="egov-txtIn2">&lt;label for=&quot;checkbox-4&quot;&gt;영화감상&lt;/label&gt;</li>
								 <li class="egov-txtIn1">&lt;/fieldset&gt;</li>
								 <li>&lt;/div&gt;</li>
					 		</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>색상 변경</h2>
						<p>체크 박스에 색상을 지정하기 위해서는 input 내에 <strong>data-theme="a~g"</strong> 를 통해 적용할 수 있다.
						</p>
						<div class="egov-deth2">
							 <fieldset data-role="controlgroup">
							 <legend>취미 선택 :</legend>
							 <input type="checkbox" name="checkbox-5" id="checkbox-5" class="custom" data-theme="e" />
							 <label for="checkbox-5">음악감상</label>
							 <input type="checkbox" name="checkbox-6" id="checkbox-6" class="custom" data-theme="g" />
							 <label for="checkbox-6">영화감상</label>
							 </fieldset>
					 		<ul class="link">
								<li> &lt;fieldset data-role="controlgroup"&gt;<li>
								<li class="egov-txtIn1"> &lt;legend&gt;취미 선택 :&lt;/legend&gt;<li>
								<li class="egov-txtIn1">&lt;input type="checkbox" name="checkbox-5" id="checkbox-5" class="custom" data-theme="e" /&gt;<li>
								<li class="egov-txtIn1">&lt;label for="checkbox-5"&gt;음악감상&lt;/label&gt;<li>
								<li class="egov-txtIn1">&lt;input type="checkbox" name="checkbox-6" id="checkbox-6" class="custom" data-theme-"g" /&gt;<li>
								<li class="egov-txtIn1">&lt;label for="checkbox-6"&gt;영화감상&lt;/label&gt;<li>
								<li>&lt;/fieldset&gt;</li>
					 		</ul>
						</div>
					</div>
	               
					<div class="egov-deth1">
						<h2>새로고침</h2>
						<p>Check Box는 새로고침 기능이 제공된다.
							  자바 스크립트에 아래 코드를 추가 한 후 이벤트로 연결 해주면 체크된 박스가 해제된다.
						</p>
						<div class="egov-deth2">
                           <div data-role="fieldcontain">
                                  <fieldset data-role="controlgroup" id="group_1" >
	                                  <legend>취미 선택 :</legend>
	                                  <input type="checkbox" name="checkbox-7" id="checkbox-7" class="custom" checked="checked" />
	                                  <label for="checkbox-7">음악감상</label>
	                                  <input type="checkbox" name="checkbox-8" id="checkbox-8" class="custom" />
	                                  <label for="checkbox-8">영화감상</label>
                                  </fieldset>
                             </div>
                          <a href="javascript:checkRefresh()" data-role="button">refresh</a>                                     						
							<ul class="link">
					 			<li>$("input[type='checkbox']").attr("checked",true).checkboxradio("refresh");</li>
					 		</ul>
						</div>
					</div>
									
				</div>
				<!-- content-primary end -->
				
				<!-- content-secondary start -->
				<div class="content-secondary"> 
					<jsp:include page="../../componentMenu.jsp"></jsp:include>
				</div>			
				<!-- content-secondary start -->
				
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