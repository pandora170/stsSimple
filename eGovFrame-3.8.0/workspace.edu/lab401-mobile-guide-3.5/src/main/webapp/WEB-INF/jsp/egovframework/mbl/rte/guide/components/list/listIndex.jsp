<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : listIndex.jsp
  Description :  UX list component
  Modification Information

      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.07.14    권자영          최초 생성
 
    author   : 모바일 실행환경 개발팀 권자영
    since    : 2011.07.06
--%>
					
<ul data-role="listview" data-inset="true" data-theme="d" data-dividertheme="y">
    <li data-role="list-divider">List</li>
	<li><a href="<c:url value="/guide/components/list/nested.do"/>" data-ajax="false">Nested List</a></li>
	<li><a href="<c:url value="/guide/components/list/numbered.do"/>" data-ajax="false">Numbered List</a></li>
	<li><a href="<c:url value="/guide/components/list/split.do"/>" data-ajax="false">Split Button</a></li>
	<li><a href="<c:url value="/guide/components/list/divider.do"/>" data-ajax="false">List Divider</a></li>
	<li><a href="<c:url value="/guide/components/list/bubble.do"/>" data-ajax="false">Count Bubble</a></li>
	<li><a href="<c:url value="/guide/components/list/thumb.do"/>" data-ajax="false">Thumbnail</a></li>
	<li><a href="<c:url value="/guide/components/list/listIcon.do"/>" data-ajax="false">List Icon</a></li>
	<li><a href="<c:url value="/guide/components/list/format.do"/>" data-ajax="false">Content Formatting</a></li>
	<li><a href="<c:url value="/guide/components/list/filter.do"/>" data-ajax="false">Search Filter Bar</a></li>
	<li><a href="<c:url value="/guide/components/list/changemode.do"/>" data-ajax="false">Change Mode List</a></li>
	<li><a href="<c:url value="/guide/components/list/checked.do"/>" data-ajax="false">Checked List</a></li>
</ul>