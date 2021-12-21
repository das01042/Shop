<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인메뉴</title>
<style>
nav{
	width: 70%;
	height: 120px;
	text-align: center;
	
	
}
/* 기본 설정*/
a {
	
	float: center;
	text-decoration: none;
	color: black;
	
}
body>nav>ul>li>ul>li>a{
	width : 100px;
	height: 30px;
}

li>a:hover {
	color: white;
} /* nav tag */
nav ul {
	padding-top: 25px;
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
	
	font: bold 16px;  /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
	padding: 5px 0px; /* 각 메뉴 간격 */
	background-color:rgb(120, 212, 206);
	border-radius: 5px;
	width: 100px;
	
	
}

</style>
</head>
<body>
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

</body>
</html>