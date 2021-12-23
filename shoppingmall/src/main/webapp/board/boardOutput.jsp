<%@page import="com.shop.VO.boardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardOutput.jsp</title>
</head>
<body>
<%
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
	String password = (String) session.getAttribute("password");
	String email = (String) session.getAttribute("email");
	if (id == null) {
%>

<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="../loginmenu.jsp"></jsp:include>
	<jsp:include page="../MainMenu.jsp"></jsp:include>
<%
	} else if(id.equals("admin")) {
	%>

	<jsp:include page="../header.jsp"></jsp:include>
	<h3>관리자모드로 접속하셨습니다.</h3>
	<jsp:include page="../adminmenu.jsp"></jsp:include>
	
	<jsp:include page="../MainMenu.jsp"></jsp:include>
	<%
		} else {
			%> 
			<jsp:include page="../header.jsp"></jsp:include>
			<h3><%=session.getAttribute("name") %>고객님, 환영합니다~</h3>
			<jsp:include page="../logoutmenu.jsp"></jsp:include>
			
			<jsp:include page="../MainMenu.jsp"></jsp:include>
		<%
		}
	%>
	<br><br>
	<h3>정상적으로 등록되었습니다.</h3>
	<a href="${pageContext.request.contextPath }/boardList.do">게시판 돌아가기</a>
	<a href="index.jsp">메인 화면으로</a>
</body>
</html>