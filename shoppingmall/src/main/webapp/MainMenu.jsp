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
.main nav ul {
	padding-top: 10px;
} /* 상단 여백 10px */
.main nav ul ul{
	display:none;
}
.main nav  ul li:hover ul {
 display: block;
 padding-right:0;
}

/* nav ul ul li { */

/* float:none; */
/* margin-top:3px; */
/* } */
.main nav ul li {
	float: left;
	list-style-type: none;
	border-left: 1px solid #999; /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
	font: bold 16px Dotum; /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
	padding: 0 10px; /* 각 메뉴 간격 */
}
</style>
</head>
<body>
<div class="main">
	<nav>
		<ul>

			<li><a href="${pageContext.request.contextPath }/product/ProductBig.jsp">대형인형</a></li>

			<li><a href="${pageContext.request.contextPath }/product/ProductCharacter.jsp">캐릭터인형</a>
				<ul>
					<li><a href="${pageContext.request.contextPath }/product/ProductPoketmon.jsp">포켓몬스터</a></li>
					<li><a href="${pageContext.request.contextPath }/product/ProductJJanggu.jsp">짱구</a></li>
					<li><a href="${pageContext.request.contextPath }/product/ProductDoraemong.jsp">도라에몽</a></li>
				</ul></li>
			<li><a href="${pageContext.request.contextPath }/product/ProductAnimal.jsp">동물인형</a>
				<ul>
					<li><a href="${pageContext.request.contextPath }/product/ProductDog.jsp">강아지인형</a></li>
					<li><a href="${pageContext.request.contextPath }/product/ProductBear.jsp">곰인형</a></li>
					<li><a href="${pageContext.request.contextPath }/product/ProductCat.jsp">고양이인형</a></li>
				</ul></li>
			<li><a
				href="${pageContext.request.contextPath }/product/Product1000.jsp">싹다
					천원</a></li>
			<li><a
				href="${pageContext.request.contextPath }/product/ProductSale.jsp">할인상품</a></li>
			<li><a href="${pageContext.request.contextPath }/boardList.do">자유게시판</a></li>
		</ul>
	</nav>
</div>
</body>
</html>