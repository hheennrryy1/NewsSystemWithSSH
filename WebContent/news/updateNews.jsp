<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="menu.jsp" flush="true"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/ProjectUsingSSH/css/style.css"/>
<script src="/ProjectUsingSSH/js/nicEdit.js" type="text/javascript"></script>
<script type="text/javascript">
	bkLib.onDomLoaded(function() {
		new nicEditor({ fullPanel: true }).panelInstance('content');
		});
</script>
</head>
<body>
	<br /><br />
	<div id="form">
		<form action="updateNews" method="POST">
			<input type="hidden" name="news.newsId" value="${ news.newsId }"/>
			<input type="hidden" name="news.date" value="${ news.date }"/>
			<label for="title">标题:</label>
				<input name="news.title" id="title" value="${ news.title }" required="required"/>
			<br /><br />
				<label for="type">类别:</label>
				<select name="news.type" id="type">
					<option value="society" <c:if test='${news.type == "society"}'> selected='selected' </c:if> >社会</option>
					<option value="politics" <c:if test='${news.type == "politics"}'> selected='selected' </c:if> >政治</option>
					<option value="finance" <c:if test='${news.type == "finance"}'> selected='selected' </c:if> >财经</option>
					<option value="technology" <c:if test='${news.type == "technology"}'> selected='selected' </c:if> >科技</option>
					<option value="sport" <c:if test='${news.type == "sport"}'> selected='selected' </c:if> >体育</option>
					<option value="entertainment" <c:if test='${news.type == "entertainment"}'> selected='selected' </c:if> >娱乐</option>
				</select>
			<br /><br />
			<label for="summary">摘要</label>
			<br />
			<textarea rows="5" cols="90" name="news.summary" placeholder="摘要不超过140个字" required="required">${ news.summary }</textarea>
			<br /><br />
			<textarea rows="25" cols="190" name="news.content" id="content">${ news.content }</textarea>
			<br /><br />
			<input type="image" src="/ProjectUsingSSH/img/submit.jpg" alt="Submit"/>
		</form>
	</div>
</body>
</html>