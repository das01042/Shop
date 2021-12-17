<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <style>
  
ul {
    list-style:none;
    margin:0 30px;
    padding:0 300px 0 0;
}

li {

    margin: 0 0 0 5px;
    padding: 0 0 0 0;
    border : 0;
    float: right;
}
        </style>
<body>
<h3>어서오세요!!!!!!!!!!!!!!!!!!!!!!!</h3>
	<ul>
	<li><a href="${pageContext.request.contextPath }/logout.do">로그아웃</a>
	<li><a href="${pageContext.request.contextPath }/adminUser.jsp">회원관리</a>
	<li><a href="${pageContext.request.contextPath }/adminProduct.jsp">상품관리</a>
    </ul>
</body>
</html>