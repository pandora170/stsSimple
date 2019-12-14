<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : codeDefinition.jsp
  Description :  지원 플랫폼
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.20    구지연          최초 생성
 
    author   : 모바일 실행환경 개발팀 구지연
    since    : 2011.07.19
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head> 
        <title>eGovFrame</title> 
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

        <!-- 모바일 페이지 start -->
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
						<h1>화면 표준코드 정의</h1>
						<p>전자정부 모바일 신규 공통 컴포넌트의 단위 시스템은 다음과 같이 규정한다.업무구분코드는 전체 표준가이드를 따른다.</p>
					</div>
					
					<div class="egov-deth1">
						<h2>시스템 구분코드</h2>
						<p>제안요청서 상의 관리환경 상세 개발내역의 중분류에 해당함.</p>
						<dl class="egov-deth3">
							<dt>관리환경</dt>
							<dd><table class="egov-table-code">
							<colgroup><col class="egov-colwidth30"><col class="egov-colwidth15"><col class="egov-colwidth55"></colgroup>
							<thead>
							<tr>
								<th>시스템명</th>
								<th>코드</th>
								<th>비고</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>신규공통컴포넌트개발</td>
								<td>MCOMD</td>
								<td>Mobile Common Component Development</td>
							</tr>
							<tr>
								<td>공통컴포넌트전환개발</td>
								<td>MCOM</td>
								<td>Mobile Common Component</td>
							</tr>
							</tbody>
							</table></dd>
						</dl>
					</div>
					
					<div class="egov-deth1">
						<h2>서브 시스템 구분코드</h2>
						<dl class="egov-deth3">
							<dt>관리환경</dt>
							<dd>제안요청서 상의 관리환경 상세 개발내역의 소분류에 해당함.</dd>
							<dd><table class="egov-table-code">
							<colgroup><col class="egov-colwidth20"><col class="egov-colwidth25"><col class="egov-colwidth15"><col class="egov-colwidth40"></colgroup>
							<thead>
							<tr>
								<th>시스템명 / 코드</th>
								<th>서브 시스템명</th>
								<th>코드</th>
								<th>비고</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td rowspan="10">신규공통컴포넌트</td>
								<td>실시간 공지 서비스</td>
								<td>RNS</td>
								<td>Real-time Notice Service</td>
							</tr>
							<tr>
								<td>모바일 사진 앨범</td>
								<td>MPA</td>
								<td>Mobile Photo Album</td>
							</tr>
							<tr>
								<td>OPEN-API 연계 서비스</td>
								<td>OAS</td>
								<td>OPEN-API Service</td>
							</tr>
							<tr>
								<td>모바일 차트/그래프</td>
								<td>MCG</td>
								<td>Mobile Chart/Graph</td>
							</tr>
							<tr>
								<td>모바일 기기 식별</td>
								<td>MDI</td>
								<td>Mobile Device Identification</td>
							</tr>
							<tr>
								<td>동기화 서비스</td>
								<td>SYN</td>
								<td>Synchronization Service</td>
							</tr>
							<tr>
								<td>멀티미디어 제어	</td>
								<td>MLT</td>
								<td>Multimedia Controller</td>
							</tr>
							<tr>
								<td>오프라인 웹 서비스</td>
								<td>OWS</td>
								<td>Offline Web Service</td>
							</tr>
							<tr>
								<td>위치정보연계</td>
								<td>GEO</td>
								<td>Geographical Location Information</td>
							</tr>
							<tr>
								<td>MMS 서비스 연계</td>
								<td>MMS</td>
								<td>MMS Service</td>
							</tr>
							<tr>
								<td rowspan="3">공통컴포넌트전환</td>
								<td>사용자디렉토리/통합인증</td>
								<td>UAT</td>		
								<td>User Authority Service</td>
							</tr>
							<tr>
								<td>협업</td>
								<td>USS</td>
								<td>User Support Service</td>
							</tr>
							<tr>
								<td>사용자지원</td>
								<td>COP</td>
								<td>Cooperation Service</td>
							</tr>
							</tbody>
							</table></dd>
						</dl>
					</div>
					
					<div class="egov-deth1">
						<h2>표준코드 명명규칙</h2>
						<p>표준코드의 명명은 아래와 같다.</p>
						<div class="egov-deth2">
							<p>[시스템 코드]_[서브시스템 코드]_[구분자]</p>
							<ul class="link">
					 			<li>예) cms_sys_001  시스템일반</li>
					 			<li class="egov-txtIn7"><img src="<c:url value="/images/egovframework/mbl/rte/guide/img_arrow1.png" />" alt="sequencenum" /><b>일련번호</b>  - 구분자 3자리</li>
					 			<li class="egov-txtIn5"><img src="<c:url value="/images/egovframework/mbl/rte/guide/img_arrow2.png" />" alt="subsystemcode" /><b>시스템일반</b> - 서브시스템 코드 3자리</li>
					 			<li class="egov-txtIn2"><img src="<c:url value="/images/egovframework/mbl/rte/guide/img_arrow3.png" />" alt="mainsystemcode" /><b>커뮤니케이션시스템</b> - 시스템 코드 3자리</li>
					 		</ul>
						</div>
					</div>
					
	             </div> 
	            
	             <div class="content-secondary"> 
					<jsp:include page="../introMenu.jsp"></jsp:include>
				</div>
			</div>	             
            
			<!-- footer start -->
			<div data-role="footer" data-theme="z"  class="egovBar">
				<h4>Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
      
        </div> 
        <!-- 모바일 페이지 end -->

    </body>
    
</html>