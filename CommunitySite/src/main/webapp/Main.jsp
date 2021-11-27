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
								<option><p>등록순</option>
								<option><p>추천순</option>
								<option><p>댓글순</option>
						</select>
						<a href="#">글쓰기</a>
					</div>
					<nav id="tab">
						<div id ="latest">
							<b>최근 방문</b>
						</div>
						<ul>
							<li><a href="#">공지</a></li>
							<li><a href="#">정보</a></li>
							<li><a href="#">질문</a></li>
							<li><a href="#">공략</a></li>
						</ul>
					</nav>
					<div id="board">
						<table>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
									<th>조회수</th>
									<th>추천</th>
								</tr>
							</table>
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
						<div id="search">
							<input type="text" placeholder=""> 
							<button>검색</button>
						</div>
					</div>
					<nav id="boardNum">
						<ul>
							<li><a href="#">⟪</a></li>
							<li><a href="#">⟨</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">6</a></li>
							<li><a href="#">7</a></li>
							<li><a href="#">8</a></li>
							<li><a href="#">9</a></li>
							<li><a href="#">10</a></li>
							<li><a href="#">⟩</a></li>
							<li><a href="#">⟫</a></li>
							
						</ul>
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
