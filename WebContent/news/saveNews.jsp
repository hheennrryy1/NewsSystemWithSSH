<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="menu.jsp" flush="true"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/ProjectUsingSSH/css/style.css"/>
<script src="/ProjectUsingSSH/js/nicEdit.js" type="text/javascript"></script>
<script type="text/javascript">
	bkLib.onDomLoaded(function() {
		new nicEditor({ fullPanel: true }).panelInstance('content');
		});
</script>

<title>添加新闻</title>
</head>
<body>
	<br /><br />
	<div id="form">
		<form action="saveNews" method="POST">
			<label for="title">标题:</label>
				<input name="news.title" id="title" required="required" placeholder="标题"/>
			<br /><br />
			<label for="type">类别:</label>
				<select name="news.type" id="type">
					<option value="society">社会</option>
					<option value="politics">政治</option>
					<option value="finance">财经</option>
					<option value="technology">科技</option>
					<option value="sport">体育</option>
					<option value="entertainment">娱乐</option>
				</select>
			<br /><br />
			<label for="summary">摘要</label>
				<br />
				<textarea rows="5" cols="90" name="news.summary" placeholder="摘要不超过140个字" required="required"></textarea>
			<br /><br />
			<label for="content">正文</label>
				<textarea rows="50" cols="190" name="news.content" id="content"></textarea>
			<br /><br />
			<input type="image" src="/ProjectUsingSSH/img/submit.jpg" alt="Submit"/>
		</form>
	</div>
</body>
</html>