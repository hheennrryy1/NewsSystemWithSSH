<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>新闻发布系统</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="css/LogIn.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
	var xmlHttpRequest = null;
	function check() {
		var url = "findUser";
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
	 	var params = "user.userName=" + username + "&user.password=" + password;
	 		if(window.XMLHttpRequest) {
				xmlHttpRequest = new XMLHttpRequest();
			} else { 
			  xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
			}
	  	xmlHttpRequest.open("POST", url, true);
		xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
	   	xmlHttpRequest.onreadystatechange = function() {
	   	  			if(xmlHttpRequest.readyState==4) {
		  				if(xmlHttpRequest.status==200) {
		  					var result = xmlHttpRequest.responseText;
			  					if("success" === result) {
			  						window.location.href = "showNews";
			  					} else {
				  					document.getElementById("result").innerHTML = result;
			  					}
		  					} 
	   				}
		}
		xmlHttpRequest.send(params);
}
</script>
</head>

<body>
	<form id="login" method="POST">
	    <h1>新闻发布系统</h1>
 	    <fieldset id="inputs">
	        <input id="username" name="user.userName" type="text" placeholder="用户名" autofocus required>   
	        <input id="password" name="user.password" type="password" placeholder="密码" required>
	    </fieldset>
	    <fieldset id="actions">
	        <input type="button" id="submit" value="登录" onclick="check()">
	        <a href="http://jwc.hzu.edu.cn/">联系我</a>
	        <h3 id="result"></h3>
	    </fieldset> 
	</form>
</body>
</html>