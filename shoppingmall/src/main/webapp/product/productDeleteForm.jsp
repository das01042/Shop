<%@page import="com.shop.VO.productVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<jsp:include page="../adminmenu.jsp"></jsp:include>
<%
	productVO vo = (productVO) request.getAttribute("product");
	
%>
<h1>!!!!삭제하기전 마지막으로 확인후 삭제버튼을 눌러주세요!!!!</h1>
<form action='productDelete.do' method= 'post'>
		<input type='text' name='pId' value='<%=vo.getpId() %>' readonly><br>
		<input type='text' name='pName' value='<%=vo.getpName() %>' readonly><br>
		
		<input type='submit' value='삭제'>
	</form>
	
	<%@ include file="../footer.jsp"%>
</body>
</html>