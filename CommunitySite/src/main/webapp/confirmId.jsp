<%@page import="model.MemberDAO"%>
<%
	String id = request.getParameter("id");
	MemberDAO dao = MemberDAO.getInstance();
	boolean result = dao.confirmId(id);
	if(result){%>
	<center>
		<h4>이미 사용 중인 아이디입니다.</h4>
		<button>확인</button>
	</center>	
<%	}else {%>
	<center>
	<h4>사용 가능한 아이디입니다.</h4>
	<button>확인</button>
	</center>	
<%}
%>