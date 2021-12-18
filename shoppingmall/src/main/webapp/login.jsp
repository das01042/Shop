<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="loginmenu.jsp"></jsp:include>
<h3>로그인 화면</h3>
<form action='login.do' method='post'>
	ID: <input type='text' name='id'><br>
	PW: <input type='password' name='password'><br>
	<input type='submit' value='Login'>
	</form>
</body>
</html>