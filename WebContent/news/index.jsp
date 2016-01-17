<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="menu.jsp" flush="true"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">

<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<link rel="stylesheet" type="text/css" href="/ProjectUsingSSH/css/style.css"/>
	<title>首页</title>
</head>
<body>
	<br />
	<br />
	<c:forEach items="${ list }" var="news" >
		<div id="news">
			<center>
				<a href="">${ news.title }</a>
				<br /><br />
				<c:out value="${ news.content }" escapeXml="false"></c:out>
			</center>
			<p class="date">${ news.date }</p>
		</div>
	</c:forEach>
	<br />
</body>
</html>