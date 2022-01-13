<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String errMsg = (String)session.getAttribute("errMsg");
	if(errMsg == null) errMsg = "";
	
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/loginout.css" type="text/css">
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="container">
		<div id ="Contents">
			<div id="login">
				<h1>DG</h1>
				<p><strong>로그인</strong>
				<div id="input">
					<form method="post" action="Signin.do">
						<p class="text"><strong>아이디</strong>
						<p><input type="text" name="id" size="35">
						<p class="text"><strong>비밀번호</strong>
						<p><input type="password" name="passwd" size="35">
						<div id="submit">
							<button>로그인</button>
						</div>
					</form>
					<div id = "errMsg"><%=errMsg %></div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>
