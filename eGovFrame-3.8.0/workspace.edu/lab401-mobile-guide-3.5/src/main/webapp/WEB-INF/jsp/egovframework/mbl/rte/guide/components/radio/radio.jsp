<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : radio.jsp
  Description :  UX radio component
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
    <title>UX Component - Radio Button</title> 
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
          	function radioRefresh() {
    			$("#group_1 input[type='radio']").attr("checked",false).checkboxradio("refresh");
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
						<h1>Radio Button</h1>
						<p>라디오 버튼은 여러개의 항목에서 하나를 선택 할 수 있는 기능을 제공한다. </p>
					</div>				
					
					<div class="egov-deth1">
						<h2>기본코드</h2>
						<p>라디오 버튼을 사용 할 경우 &lt;input type="radio"&gt;의 name 속성이 동일 해야하며 세로로 정렬 하기 위해서는
						&lt;fieldset data-role="controlgroup"&gt;으로 Radio 버튼을 감싸 주어야 한다.
						또한 기본으로 체크된 효과를 나타내고 싶을 때는 &lt;input type="radio"&gt; Tag에 checked="checked"를 추가 한다.
						</p>
						<div class="egov-deth2">
							 <fieldset data-role="controlgroup">
								<legend>동의 여부: </legend>
								<input type="radio" name="radio-1" id="radio-1" value="choice-1" checked="checked"/>
								<label for="radio-1">Yes</label>
								<input type="radio" name="radio-1" id="radio-2" value="choice-2" />
								<label for="radio-2">No</label>
							</fieldset>
					 		<ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
								<li class="egov-txtIn1">&lt;fieldset data-role="controlgroup"&gt;</li>
								<li class="egov-txtIn2">&lt;legend&gt;동의 여부: &lt;/legend&gt;</li>
								<li class="egov-txtIn2">&lt;input type="radio" name="radio-1" id="radio-1" value="choice-1" checked="checked" /&gt;</li>
								<li class="egov-txtIn2">&lt;label for="radio-1"&gt;Yes&lt;/label&gt;</li>
								<li class="egov-txtIn2">&lt;input type="radio" name="radio-1" id="radio-2" value="choice-2" /&gt;</li>
								<li class="egov-txtIn2"> &lt;label for="radio-2"&gt;No&lt;/label&gt;</li>
								<li class="egov-txtIn1"> &lt;/fieldset&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>
					</div>
					
	        		<div class="egov-deth1">
						<h2>형태 변경</h2>
						<p>라디오 버튼은 가로 정렬도 가능하며 그룹에서 하나를 선택 할 수 있다.
						      가로 형으로 그룹화할 때는 기본코드의 &lt;fieldset data-role="controlgroup"&gt; Tag에  
						      <strong>data-type="horizontal"</strong>을 추가 한다.</p>
						<div class="egov-deth2">
                             <div data-role="fieldcontain">
								 <fieldset data-role="controlgroup" data-type="horizontal" >
									 <legend>동의 여부: </legend>
									 <input type="radio" name="radio-2" id="radio-3" value="choice-1" checked="checked" />
									 <label for="radio-3">Yes</label>
									 <input type="radio" name="radio-2" id="radio-4" value="choice-2" />
									 <label for="radio-4">No</label>									 
								 </fieldset>
							</div>
							<ul class="link">
								 <li>&lt;div data-role="fieldcontain"&gt;</li>
								 <li class="egov-txtIn1">&lt;fieldset data-role="controlgroup" data-type="horizontal"&gt;</li>
								 <li class="egov-txtIn2">&lt;legend&gt;동의 여부: &lt;/legend&gt;</li>
								 <li class="egov-txtIn2">&lt;input type="radio" name="radio-2" id="radio-3" value="choice-1" checked="checked" /&gt;</li>
								 <li class="egov-txtIn2">&lt;label for="radio-3"&gt;Yes&lt;/label&gt;</li>
								 <li class="egov-txtIn2">&lt;input type="radio" name="radio-2" id="radio-4" value="choice-2" /&gt;</li>
								 <li class="egov-txtIn2">&lt;label for="radio-4"&gt;No&lt;/label&gt;</li>
								 <li class="egov-txtIn1">&lt;/fieldset&gt;</li>
								 <li>&lt;/div&gt;</li>
					 		</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>색상 변경</h2>
						<p>라디오 버튼에 색상을 지정하기 위해서는 input 내에 <strong>data-theme="a~g"</strong> 를 통해 적용할 수 있다.
						</p>
						<div class="egov-deth2">
							 <fieldset data-role="controlgroup">
								<legend>동의 여부: </legend>
								<input type="radio" name="radio-3" id="radio-5" value="choice-1" data-theme="e"/>
								<label for="radio-5">Yes</label>
								<input type="radio" name="radio-3" id="radio-6" value="choice-2" data-theme="g"/>
								<label for="radio-6">No</label>
							</fieldset>
					 		<ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
								<li class="egov-txtIn1">&lt;fieldset data-role="controlgroup"&gt;</li>
								<li class="egov-txtIn2">&lt;legend&gt;동의 여부: &lt;/legend&gt;</li>
								<li class="egov-txtIn2">&lt;input type="radio" name="radio-3" id="radio-5" value="choice-1" data-theme="e" /&gt;</li>
								<li class="egov-txtIn2">&lt;label for="radio-5"&gt;Yes&lt;/label&gt;</li>
								<li class="egov-txtIn2">&lt;input type="radio" name="radio-3" id="radio-6" value="choice-2" data-theme="g" /&gt;</li>
								<li class="egov-txtIn2"> &lt;label for="radio-6"&gt;No&lt;/label&gt;</li>
								<li class="egov-txtIn1"> &lt;/fieldset&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>
					</div>
	               
					<div class="egov-deth1">
						<h2>새로고침</h2>
						<p>Radio button은 새로고침 기능이 제공된다.
							  자바 스크립트에 아래 코드를 추가 한 후 이벤트로 연결 해주면 체크된 버튼이 해제된다.
						</p>
						<div class="egov-deth2">			      
					       <div data-role="fieldcontain">
								<fieldset data-role="controlgroup" id="group_1">
									<legend>동의 여부 : </legend>
									<input type="radio" name="radio-choice-1" id="radio-choice-1" value="choice-1" checked="checked" />
									<label for="radio-choice-1">Yes</label> 
									<input type="radio" name="radio-choice-1" id="radio-choice-2" value="choice-2" />
									<label for="radio-choice-2">No</label>
								</fieldset>
						  </div>	
					      <a href="javascript:radioRefresh()" data-role="button">refresh</a>					       
							<ul class="link">
					 			<li>$("input[type='radio']").attr("checked",true).checkboxradio("refresh");</li>
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
				 <h4 class="main">Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
			
		</div>
		<!-- page end -->
	
    </body>

</html>