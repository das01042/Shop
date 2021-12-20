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
	align : center;
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
			<form class="seachHeader" action='productSearchTool.do' method='get'>
				<input type='text' name='pName' placeholder="상품을 검색하세요."> <input
					type='submit' value='검색'>
			</form>
			
			</td>
			</tr>
		</tbody>
	</table>
</body>
</html>