<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="menu.jsp" flush="true"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/ProjectUsingSSH/css/style.css"/>
<script type="text/javascript">
	function doDelete(id) {
		var confirm = window.confirm("您确定要删除吗?");
		if(confirm) {
			window.location.href = "findNewsToDelete?news.newsId=" + id;
		}
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<br/>
	<h3 style="text-align: center;">共有${ size }条新闻</h3>
	<table style="text-align: center;margin: 0px auto;" class="imagetable">
		<tr>
			<th>id</th>
			<th>标题</th>
			<th>类别</th>
			<th>发布日期</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list}" var="news">
			<tr>
				<td><c:out value="${news.newsId }"></c:out></td>
				<td><c:out value="${news.title }"></c:out></td>
				<td><c:out value="${news.type }"></c:out></td>
				<td><c:out value="${news.date }"></c:out></td>
				<td>
					<a href="findNewsToUpdate?news.newsId=${news.newsId}">编辑</a>
					<a href="javascript:doDelete('${ news.newsId }')">删除</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>