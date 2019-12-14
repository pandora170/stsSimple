<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : namingRule.jsp
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
						<h1>파일 명명규칙 정의 (Naming Rule)</h1>
						<p>웹 디자인 이미지 파일의 명명 규칙 이외의 사항은 별도의 "운영환경 개발가이드"에 의하여 규정한다.</p>
					</div>
					
					<div class="egov-deth1">
						<h2>이미지타입 구분코드</h2>
						<p>이미지의 사용 용도에 따라 아래와 같이 유형을 구분하여 파일 명명에 사용한다.</p>
						<div class="egov-deth4">
							<table class="egov-table-file">
							<colgroup><col class="egov-colwidth30"><col class="egov-colwidth70"></colgroup>
							<thead>
							<tr>
								<th>이미지 유형</th>
								<th>형태</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td class="tyCen">bt</td>
								<td>버튼 이미지</td>
							</tr>
							<tr>
								<td class="tyCen">bul</td>
								<td>글머리표</td>
							</tr>
							<tr>
								<td class="tyCen">Img</td>
								<td>이미지</td>
							</tr>
							<tr>
								<td class="tyCen">img_event</td>
								<td>이벤트 페이지용 이미지</td>
							</tr>
							<tr>
								<td class="tyCen">txt</td>
								<td>Text 형 이미지</td>
							</tr>
							<tr>
								<td class="tyCen">title</td>
								<td>타이틀용 이미지</td>
							</tr>
							<tr>
								<td class="tyCen">title_s</td>
								<td>소 타이틀용 이미지</td>
							</tr>
							<tr>
								<td class="tyCen">ttitle</td>
								<td>테이블 타이틀용 이미지</td>
							</tr>
							<tr>
								<td class="tyCen">tab</td>
								<td>Tab Menu 용 이미지</td>
							</tr>
							<tr>
								<td class="tyCen">topmn_</td>
								<td>유틸리티 메뉴용 이미지(상단메인)</td>
							</tr>
							<tr>
								<td class="tyCen">bttmn_</td>
								<td>Bottom 용 이미지 (하단)</td>
							</tr>
							<tr>
								<td class="tyCen">ban_</td>
								<td>Banner 형 이미지</td>
							</tr>
							</tbody>
							</table>
							<p>※ 위 유형은 화면 구성 시 추가 혹은 변경될 수 있음.</p>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>파일 명명규칙</h2>
						<p>파일 이름은 소문자로 작성하며, 서브시스템 코드와 유형 일련번호의 조합으로 구성한다. 
						(본 가이드라인은 하나의 예시로써 사용자의 개발환경에 따라 충분히 변경 가능함)</p>
						<div class="egov-deth2">
							<p>[서브시스템 코드]_[이미지 유형]_일련번호</p>
							<ul class="link">
					 			<li>예) bbs_title_001</li>
					 			<li class="egov-txtIn7"><img src="<c:url value="/images/egovframework/mbl/rte/guide/img_arrow1.png" />" alt="sequencenum" /><b>일련번호</b></li>
					 			<li class="egov-txtIn5"><img src="<c:url value="/images/egovframework/mbl/rte/guide/img_arrow2.png" />" alt="imagetype" /><b>이미지 유형</b> - 타이틀용 이미지</li>
					 			<li class="egov-txtIn2"><img src="<c:url value="/images/egovframework/mbl/rte/guide/img_arrow3.png" />" alt="subsystem" /><b>서브시스템 BBS</b> - 커뮤니티&gt;게시판</li>
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