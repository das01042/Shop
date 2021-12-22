<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <style>
  .adminmenu{
  float:right;
  }
  
.adminmenu ul {
    list-style:none;
    margin:0 30px;
    padding:0 300px 0 0;
}

.adminmenu li {

   
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

/* 기본 설정*/
		.adminmenu a {
			float: center;
			text-decoration: none;
			color: black;
			
		}

		.adminmenu a:hover {
			color: white;
		}

		
		.adminmenu ul {
			padding-top: 1px;
		}
		
		
		.adminmenu ul ul {
			display: none;
		}

		.adminmenu  ul li:hover ul {
			margin: 0px 0px;
			display: inline;
			padding-right: 0;
		}

		
		.adminmenu  ul li {
			text-align: center;
			float: left;
			list-style-type: none;
			font: bold 16px Dotum;
			padding: 0 5px;
		}
		
		.admin_first_li{
			width: 85px;
			height: 20px;
		}
		.admin_first_li>a{
			display: block;
			background-color: hsl(176, 44%, 64%);
			border-radius: 5px ;
		}
		.admin_second_li>a{
			display: block;
			width: 85px;
			background-color: hsl(176, 44%, 64%);
			border-radius: 5px ;
		}

        </style>
<body>
<div class="adminmenu">
		<ul>
			<li class="admin_first_li">
				<a href="${pageContext.request.contextPath }/logout.do">로그아웃</a></li>
			<li class="admin_first_li">
				<a>회원관리</a>
				<ul>
					<li class="admin_second_li"><a href="${pageContext.request.contextPath }/member/memberSearch.jsp">회원조회</a></li>
			        <li class="admin_second_li"><a href="${pageContext.request.contextPath }/member/memberUpdate.jsp">회원수정</a></li>
			        <li class="admin_second_li"><a href="${pageContext.request.contextPath }/memberList.do">회원목록</a></li>
			        <li class="admin_second_li"><a href="${pageContext.request.contextPath }/member/memberDelete.jsp">회원삭제</a></li>
				</ul>
			</li>
			<li class="admin_first_li">
				<a>상품관리</a>
				<ul>
					<li class="admin_second_li"><a href="${pageContext.request.contextPath }/product/productInput.jsp">상품등록</a></li>
					<li class="admin_second_li"><a href="${pageContext.request.contextPath }/product/productUpdate.jsp">상품수정</a></li>
					<li class="admin_second_li"><a href="${pageContext.request.contextPath }/product/productDelete.jsp">상품삭제</a></li>
				</ul>
			</li>
	    </ul>
    </div>
</body>
</html>