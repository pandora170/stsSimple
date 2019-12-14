   <%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : intro.jsp
  Description :  eGovframe 소개
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    구지연          최초 생성
 
    author   : 모바일 실행환경 개발팀 구지연
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>전자정부 모바일 표준프레임워크 사용자 경험(UX) 지원 기능 소개</title> 
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
                <a href="<c:url value="/guide/guide.do"/>" data-icon="back" class="ui-btn-right" data-ajax="false">Back</a>
                <h1><img src="<c:url value="/images/egovframework/mbl/rte/guide/h1_logo.png"/>" alt="egovframework" /></h1>
            </div>  
            <!-- header end -->
			
			<!-- content start -->		
			<div data-role="content" data-theme="d">
			
                <!-- content-primary start -->
				<div class="content-primary">
					<div class="egov-tit">
						<h1>사용자 경험(UX) 지원 기능 소개</h1>
						<p>전자정부 모바일 표준프레임워크의 <strong>사용자 경험(UX) 지원 기능은 스마트 기반 모바일 환경에서 최적화</strong>된 화면  처리 기능, 개발도구, 모바일 특화 컴포넌트 제공을 통해  
						모바일 웹 서비스개발에 대한 생선성 향상, 모바일 전자정부 시스템 간의 컴포넌트 재사용성 향상, 연계 표준을 통한 상호 운용성 향상, 응용 소프트웨어의 표준화 효과를 제공합니다. 
						</p>
					</div>
					<dl class="egov-deth3">
						<dt>사용자 경험(UX)지원 기능의 특징</dt>
						<dd class="egovArr">스마트 기반의 다양한 모바일 디바이스 플랫폼에 통합된 사용자 인터페이스를 제공합니다.</dd>
						<dd class="egovArr">스마트폰의 터치 이벤트 기반에 가장 최적화된 전자정부 모바일 표준 사용자 경험(UX/UI)을 제공합니다.</dd>
						<dd class="egovArr">HTML5, CSS3, JavaScript의 경량화된 코드로 조합되어 있는 구조는 터치 이벤트 환경에 맞는 화면 구성을 제공합니다.</dd>
						<dd class="egovArr">유연하고 쉽게, 모바일에 특화 된 화면의 그래픽 레이아웃을 설계·적용하고, 다양한 테마를 디자인 할 수 있습니다.</dd>
						<dd class="egovArr">복잡한 cross-platform & cross-device 환경에서 터치 이벤트에 최적화된 그래픽 레이아웃을 제공 합니다.</dd>
						<dd class="egovArr">개발 편의성을 고려하여 쉽고 편하게 개발을 진행하고 적용할 수 있도록 개발자 표준 코드 및 예제가 적용된 개발자 가이드 기능을 제공합니다.</dd>
					</dl>
					<dl class="egov-deth3">
						<dt>전자정부 모바일 표준프레임워크의 사용자 경험(UX)지원 기능 제공 전략</dt>
						<dd><span>Cross-platform & Cross-device를 통한 Any Device Any platform Any OS 서비스를 지향 합니다.</span></dd>
					</dl>
					<div class="egov-deth2">
						<img style="max-width:100%; margin-top:10px;" alt="Smartphone and tablet designs" src="<c:url value="/images/egovframework/mbl/rte/guide/intro_1.png"/>">
					</div>

	             </div> 
	            
	             <div class="content-secondary"> 
					<jsp:include page="../introMenu.jsp"></jsp:include>
				</div>
			</div>	             
            
			<!-- footer start -->
			<div data-role="footer" data-theme="z" class="egovBar">
				<h4>Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
      
         </div> 
     </body>
 </html>