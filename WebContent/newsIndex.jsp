<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/ProjectUsingSSH/css/newsIndex.css"/>
<title>Henry新闻网</title>
</head>
<body>
	<div id="container">
		<div id="header">
				<ul> 
					<li><a href="showNewsForIndex">新闻</a></li> 
					<li><a href="findNewsByType?type=society">社会</a></li> 
					<li><a href="findNewsByType?type=politics">政治</a></li> 
					<li><a href="findNewsByType?type=finance">财经</a></li> 
					<li><a href="findNewsByType?type=technology">科技</a></li> 
					<li><a href="findNewsByType?type=sport">体育</a></li> 
					<li><a href="findNewsByType?type=entertainment">娱乐</a></li> 
					<li><a href="logIn.jsp">后端</a></li> 
					<li>	
						<form action="searchNews">
						<input type="text" placeholder="搜索新闻" required="required" name="keyword"/>
						<input type="submit" value="搜索"/>
						</form>
					</li>
				</ul>
				<br/>
				
				
		</div>
		
            <div id="main">
                <div id="main_content">
					
		                <c:if test="${ list!=null }">
							<c:forEach items="${ list }" var="news" >
								<div id="news">
									<a href="findNewsToShow?news.newsId=${news.newsId}" style="font-size: 30px;">${ news.title }</a>
									<br />
									<p style="font-size: 20px;text-indent:2em;text-align: left; ">
										<c:out value="${ news.summary }"></c:out>
									</p>
									<a href="findNewsToShow?news.newsId=${news.newsId}" style="font-size: 15px;"> <strong>继续阅读全文</strong></a> <span style="float: right;">${ news.date }</span>
								</div>
							</c:forEach> 
						</c:if>
						
						
						<c:if test="${ news!=null }">
							<div id="news">
					            <p style="font-size: 40px;"><c:out value="${ news.title }"></c:out></p>
								<c:out value="${ news.content }" escapeXml="false"></c:out>
								<c:out value="${ news.date }"></c:out>
							</div>
						</c:if>
						
						<c:if test="${ news==null && list==null }">
							<h2 style="text-align: center;">暂无新闻</h2>
						</c:if>
                </div>
            </div>
            
          <div id="footer">
          	<span style="font-family:微软雅黑,Arial;">Copyright &copy; 2015-12 Henry. All Rights Reserved</span>
		</div>
    </div>
</body>
</html>