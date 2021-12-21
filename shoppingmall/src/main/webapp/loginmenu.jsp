<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.login ul {
    list-style:none;
    margin:0 30px;
    padding:0 300px 0 0;
}

.login li {

    margin: 0 0 0 5px;
    padding: 0 0 0 0;
    border : 0;
    float: right;
    
}
.login li>a{
	text-decoration-line : none;
	border-radius: 5px;
	background-color: rgb(48, 190, 179);
	color: white;
	font-size: 14px;
	padding : 2px;
}
.login li>a:hover{
	
	background-color: rgb(48, 190, 179);
	color : black;
	cursor: pointer;
}
</style>
<body>
<div class="login">
<ul>
		<li><a href="${pageContext.request.contextPath }/member/memberInput.jsp">회원가입</a></li>
		<li><a href="${pageContext.request.contextPath }/login.jsp">로그인</a>

	</ul>
	</div>
</body>
</html>