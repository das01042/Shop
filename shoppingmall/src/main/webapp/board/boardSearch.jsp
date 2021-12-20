<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardSearch.jsp</title>
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
	<form action='../productSearchTool.do' method='get'>
		검색: <input type='text' name='pName' placeholder="상품을 검색하세요."><br>
			<input type='submit' value='검색'>
	</form>
	<jsp:include page="../MainMenu.jsp"></jsp:include>
<%
	} else if(id.equals("admin")) {
	%>

	<jsp:include page="../header.jsp"></jsp:include>
	<h3>관리자모드로 접속하셨습니다.</h3>
	<jsp:include page="../adminmenu.jsp"></jsp:include>
	<form action='../productSearchTool.do' method='get'>
		검색: <input type='text' name='pName' placeholder="상품을 검색하세요."><br>
			<input type='submit' value='검색'>
	</form>
	<jsp:include page="../MainMenu.jsp"></jsp:include>
	<%
		} else {
			%> 
			<jsp:include page="../header.jsp"></jsp:include>
			<h3><%=session.getAttribute("name") %>고객님, 환영합니다~</h3>
			<jsp:include page="../logoutmenu.jsp"></jsp:include>
			<form action='../productSearchTool.do' method='get'>
		검색: <input type='text' name='pName' placeholder="상품을 검색하세요."><br>
			<input type='submit' value='검색'>
			</form>
			<jsp:include page="../MainMenu.jsp"></jsp:include>
		<%
		}
	%>
	<br><br>
	<h2>[자유게시판]</h2>
	
	<form action='../boardSearch.do' method='get'>
	  제목 : <input type='text' name="title"><br>
		  <input type='hidden' name="job" value='search'>
		  <input type='hidden' name ='no'>
		  <input type='submit' value='검색'>
	</form>
	<a href="${pageContext.request.contextPath }/boardList.do">게시판 돌아가기</a>
</body>
</html>