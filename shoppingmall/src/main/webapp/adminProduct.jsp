<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="adminproduct">
	<ul>
		<li><a href="${pageContext.request.contextPath }/product/productInput.jsp">상품등록</a></li>
		<li><a href="${pageContext.request.contextPath }/product/productUpdate.jsp">상품수정</a></li>
		<li><a href="${pageContext.request.contextPath }/product/productDelete.jsp">상품삭제</a></li>
	</ul>
	</div>
</body>
</html>