<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberUpdate.jsp</title>
</head>
<body>
<%
	String id = (String) session.getAttribute("id");
	String password = (String) session.getAttribute("password");
	if (id == null) {
		response.sendRedirect("../login.jsp");

	} else if(id.equals("admin")){
		
			%>
			<%@ include file="../adminmenu.jsp"%>
			<jsp:include page="memberHeader.jsp"></jsp:include>

			<a href='../index.jsp'>첫 페이지</a>
			<h3>회원수정</h3>
			<form action='../memberSearch.do' method='get'>
				ID: <input type='text' name='id' placeholder="ID를 입력하세요"><br>
				PW: <input type='text' name='password' placeholder="비밀번호를 입력하세요"  ><br>
					<input type='hidden' name='job' value='update'>
					<input type='submit' value='검색'>
			</form>
			<%@ include file="../footer.jsp"%>
			<%}else {%>
			
	
	<%@ include file="../logoutmenu.jsp"%>
	<jsp:include page="memberHeader.jsp"></jsp:include>

	<a href='../index.jsp'>첫 페이지</a>
	<h3>마이페이지</h3>
	<form action='../memberSearch.do' method='get'>
		ID: <input type='text' name='id' value='${sessionScope.id }' readonly><br>
		PW: <input type='text' name='password' placeholder="비밀번호를 입력하세요"  ><br>
			<input type='hidden' name='job' value='update'>
			<input type='submit' value='검색'>
	</form>
	<%@ include file="../footer.jsp"%>
	<%} %>
</body>
</html>