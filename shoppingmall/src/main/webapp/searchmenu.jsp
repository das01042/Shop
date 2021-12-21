<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.search_menu {
	display: inline-block;
	text-align: center;
	margin-left: 300px;
	width: 1100px;
}

</style>
</head>
<body>
	<form class="search_menu" action='productSearchTool.do' method='get'>
		<input class="search_input" type='text' name='pName' placeholder="상품을 검색하세요."> 
		<input class="search_input" type='submit' value='검색'>
	</form>
</body>
</html>