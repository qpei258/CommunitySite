<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/regist.css" type="text/css">
<script src="js/validation.js"></script>
<title>회원가입</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="container">
		<div id="contents">
			<div id="regist">
				<h1>DG</h1>
				<p><strong>회원가입</strong>
				<div id="input">
					<form name="signUpForm" method="post">
						<p class="text"><strong>이름</strong>
						<p><input type="text" name="name" size="35">
						<p class="text"><strong>아이디</strong>
						<p><input type="text" name="id" size="35">
						<p class="text"><strong>비밀번호</strong>
						<p><input type="password" name="passwd" size="35">
						<p class="text"><strong>비밀번호 확인</strong>
						<p><input type="password" name="passwdcheck" size="35">
						<p class="text"><strong>연락처</strong>
						<div id="phone">
							<input type="text" name="phone1" maxlength="3" size="3" value="010"> -
							<input type="text" name="phone2" size="3"> -
							<input type="text" name="phone3" size="3">
						</div>
						<p class="text"><strong>email</strong>
						<div id="email">
							<input type="text" name="email1" size="4"> @
							<input type="text" name="email2" size="10"> 
						</div>
						<p class="text"><strong>주소</strong>
						<p><input type="text" name="address" size="35">
						<div id="submit">
							<button id="button">회원가입</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>
