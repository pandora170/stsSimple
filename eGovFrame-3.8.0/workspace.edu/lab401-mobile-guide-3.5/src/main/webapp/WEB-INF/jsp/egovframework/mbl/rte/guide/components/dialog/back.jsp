<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : back.jsp
  Description :  UX dialog component
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
    <title>UX Component - Dialog</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
            
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
     <!-- dialog start -->
         <div data-role="page" data-theme="d"> 
            
            <div data-role="header" data-position="inline" data-theme="e">
            	<h1>eGovFrame</h1>	
				<a href="<c:url value="/guide/guide.do"/>" data-icon="home" class="ui-btn-right" data-ajax="false">Home</a>
			</div> 
            
             <div data-role="content"><!-- content start -->
			    	<h1>Dialog Sample Page !</h1>
					<br>
	             	<a href="<c:url value="/guide/components/dialog/dialog.do"/>" data-role="button" data-theme="b" data-ajax="false">GO TO DIALOG</a>	

             </div><!-- content end -->	 
         </div> 
     </body>
 </html>