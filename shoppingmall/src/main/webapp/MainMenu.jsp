<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인메뉴</title>
<style>
/* 기본 설정*/
a {
	float: center;
	text-decoration: none;
	color: #000000;
}

a:hover {
	color: #ff0000;
} /* nav tag */
nav ul {
	padding-top: 10px;
} /* 상단 여백 10px */
nav ul ul{
	display:none;
}
nav  ul li:hover ul {
 display: block;
 padding-right:0;
}

/* nav ul ul li { */

/* float:none; */
/* margin-top:3px; */
/* } */
nav ul li {
	float: left;
	list-style-type: none;
	border-left: 1px solid #999; /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
	font: bold 16px Dotum; /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
	padding: 0 10px; /* 각 메뉴 간격 */
}
</style>
</head>
<body>
	<nav>
		<ul>

			<li><a href="#">대형 인형</a></li>

			<li><a href="#">캐릭터 인형</a>
				<ul>
					<li><a href="#">포켓몬스터</a></li>
					<li><a href="#">짱구</a></li>
					<li><a href="#">도라에몽</a></li>
				</ul></li>
			<li><a href="#">동물 인형</a>
				<ul>
					<li><a href="#">강아지인형</a></li>
					<li><a href="#">곰인형</a></li>
					<li><a href="#">펭귄인형</a></li>
				</ul></li>
			<li><a
				href="${pageContext.request.contextPath }/product/Product1000.jsp">싹다
					천원</a></li>
			<li><a
				href="${pageContext.request.contextPath }/product/ProductSale.jsp">할인상품</a></li>
			<li><a href="${pageContext.request.contextPath }/boardList.do">게시판</a></li>
		</ul>
	</nav>

</body>
</html>