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
	border: rgb(48, 190, 179) 3px solid;
}
#s_input2{
	border : 1px solid white;
	border-radius: 5px;
	background-color: rgb(48, 190, 179);
	color: azure;
	
}
#s_input2:hover{
	background-color: rgb(48, 190, 179);
	color : black;
	cursor: pointer;
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
			</td>
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