<%@page import="com.shop.VO.boardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardInput.jsp</title>
</head>
<body>
<%
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
	String password = (String) session.getAttribute("password");
	String email = (String) session.getAttribute("email");
	if (id==null) {
String script = "<script>alert('로그인이 필요합니다.'); "
		+ "location.href='/shoppingmall/login.jsp';</script>";
		out.println(script);
			out.flush();

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
	
	<a href="${pageContext.request.contextPath }/boardList.do">게시판 돌아가기</a>
	<form action='../boardInsert.do' method='post'>
	 제목 :<input type='text' name='title'><br>
	 작성자 :<input type='text' name='writer' value='<%=session.getAttribute("id") %>' readonly><br>
	 내용 : <textarea name='content'></textarea><br>
		   <input type='submit' value='작성'>
	</form>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>