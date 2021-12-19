<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String id = (String) request.getAttribute("id"); %>
<%String pw = (String) request.getAttribute("pw"); %>

	<h3><%=id %>님의 비밀번호는 <%=pw %> 입니다 </h3>
	<a href="${pageContext.request.contextPath }/login.jsp">로그인 하러가기</a>
</body>
</html>