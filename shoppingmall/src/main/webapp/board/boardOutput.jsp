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
<jsp:include page="../header.jsp"></jsp:include>
		
	<h3>정상적으로 등록되었습니다.</h3>
	<a href="${pageContext.request.contextPath }/boardList.do">게시판 돌아가기</a>
	<a href="index.jsp">메인 화면으로</a>
</body>
</html>