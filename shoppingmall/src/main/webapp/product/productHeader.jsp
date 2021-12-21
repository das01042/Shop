<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.header{
	margin-left :300px ;
	width : 1100px;
}
.search_input{
	border-radius: 5px;
	border: rgb(64, 190, 148) 3px solid;
}
#s_input2{
	background-color: rgb(64, 190, 148);
	color: azure;
}
</style>
</head>
<body>
	<table class="header">
		<tbody>
		<tr>
			<td>
			<a href="http://localhost/shoppingmall/index.jsp"> <img
				src="http://localhost/shoppingmall/upload/head.png">
			</a>
			</td>
			<td width="550px">
			<td>
			<form class="search_menu" action='../productSearchTool.do' method='get'>
			<input class="search_input" type='text' name='pName' placeholder="상품을 검색하세요.">
			<input id="s_input2" class="search_input" type='submit' value='검색'></form>
			
			</td>
			</tr>
		</tbody>
	</table>
</body>
</html>