<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DG's Site</title>
	<link rel="stylesheet" href="./css/style.css" type="text/css">
</head>
<body>
	<div id="container">
	<jsp:include page="header.jsp"/>
		<div id = "body">
			<div id ="Contents">
				<div id="mainContents">
					<div id="chanel">
						<ul>
							<li><a href="#">@채널</a></li>
							<li><a href="#">이용자 수</a></li>
							<li><a href="#">요약 설명</a></li>
						</ul>
					</div>
					
					<div class="boardMenu">
						<ul>
							<li><a href="#">전체글</a></li>
							<li><a href="#">추천글</a></li>
						</ul>
						<select>
								<option>등록순</option>
								<option>추천순</option>
								<option>댓글순</option>
						</select>
						<a href="#">글쓰기</a>
					</div>
					
					<nav id="tab">
					
					</nav>
					<div id="board">
						
					</div>
					<div class="boardMenu">
						<ul>
							<li><a href="#">전체글</a></li>
							<li><a href="#">추천글</a></li>
						</ul>
						<select>
								<option>등록순</option>
								<option>추천순</option>
								<option>댓글순</option>
						</select>
						<a href="#">글쓰기</a>
					</div>
					<nav id="boardNum">
					
					</nav>
				</div>
				<div id ="sideContents">
					<div id="bestPost">
				
					</div>
					<div id="notice">
				
					</div>
				</div>	
			</div>
		</div>
	<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>
