<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="productHeader.jsp"></jsp:include>
<form class="search_menu" action='../productSearchTool.do' method='get'>
			<input type='text' name='pName' placeholder="상품을 검색하세요.">
			<input type='submit' value='검색'>
	</form>
<jsp:include page="../adminmenu.jsp"></jsp:include>

<h3>상품수정</h3>
<form action='../productSearch.do' method='get'>
		상품이름: <input type='text' name='pName'><br>
			<input type='hidden' name='job' value='update'>
			<input type='submit' value='검색'>
	</form>
	<%@ include file="../footer.jsp"%>
</body>
</html>