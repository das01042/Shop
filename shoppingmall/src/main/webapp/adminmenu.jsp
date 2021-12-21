<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <style>
  
.adminmenu ul {
    list-style:none;
    margin:0 30px;
    padding:0 300px 0 0;
}

.adminmenu li {

    margin: 0 0 0 5px;
    padding: 0 0 0 0;
    border : 0;
    float: right;
}
.adminmenu li>a{
	text-decoration-line : none;
	border-radius: 5px;
	background-color: rgb(48, 190, 179);
	color: white;
	font-size: 14px;
	padding : 2px;
}
.adminmenu li>a:hover{
	background-color: rgb(48, 190, 179);
	color : black;
	cursor: pointer;
}

        </style>
<body>
<div class="adminmenu">
		<ul>
			<li><a href="${pageContext.request.contextPath }/logout.do">로그아웃</a>
			<li><a href="${pageContext.request.contextPath }/adminUser.jsp">회원관리</a>
			<li><a href="${pageContext.request.contextPath }/adminProduct.jsp">상품관리</a>
	    </ul>
    </div>
</body>
</html>