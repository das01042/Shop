<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.logout ul {
    list-style:none;
    margin:0 30px;
    padding:0 300px 0 0;
}

.logout li {

    margin: 0 0 0 5px;
    padding: 0 0 0 0;
    border : 0;
    float: right;
}
.logout li>a{
	text-decoration-line : none;
	border-radius: 5px;
	background-color: rgb(48, 190, 179);
	color: white;
	font-size: 14px;
	padding : 2px;
}
.logout li>a:hover{
	
	background-color: rgb(48, 190, 179);
	color : black;
	cursor: pointer;
}
</style>
<body>
<div class="logout">
<ul>
		<li><a href="${pageContext.request.contextPath }/logout.do">로그아웃</a>
		<li><a href="${pageContext.request.contextPath }/member/memberInput.jsp">회원등록</a></li>
		<li><a href="${pageContext.request.contextPath }/member/memberUpdate.jsp">마이페이지</a></li>
		<li><a href="${pageContext.request.contextPath }/cart/cartList.jsp">장바구니</a></li>

	</ul>
	</div>
</body>
</html>