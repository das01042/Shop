<%@page import="com.shop.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%String id = (String) request.getAttribute("id"); %>
	<%if(id==null){%>
		<script>alert("입력하신 정보가 올바르지 않습니다");
				history.back();
		</script>
	<%} %>
	<h3>아이디는 <%=id %> 입니다 </h3>
	<a href="${pageContext.request.contextPath }/login.jsp">로그인 하러가기</a>
</body>
</html>