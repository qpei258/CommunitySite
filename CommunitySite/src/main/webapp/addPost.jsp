<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/addPost.css" type="text/css">
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="container">
		<div id="contents">
			<div id="addPost">
				<div id="chanel">
					<ul>
						<li><a href="#">@채널</a></li>
						<li><a href="#">이용자 수</a></li>
						<li><a href="#">요약 설명</a></li>
					</ul>
				</div>
				<div id="title">
					<p><strong>글쓰기</strong>
				</div>
				<div id="category">
					<ul>
						<li>분류</li>
						<li id="notice"><a href="#notice">공지</a></li>
						<li id="info""><a href="#info">정보</a></li>
						<li id="qna"><a href="#qna">질문</a></li>
						<li id="att"><a href="#att">공략</a></li>
					</ul>
				</div>
				<div id="search">
					<button>제목</button>
					<input type="text" placeholder=""> 
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>