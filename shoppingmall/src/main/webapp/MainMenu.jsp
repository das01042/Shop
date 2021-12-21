<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>메인메뉴</title>
	<style>
		/* 기본 설정*/
		.main a {
			float: center;
			text-decoration: none;
			color: black;
			
		}

		.main a:hover {
			color: white;
		}

		
		.main nav ul {
			padding-top: 1px;
		}
		
		
		.main nav ul ul {
			display: none;
		}

		.main nav ul li:hover ul {
			margin: 0px 0px;
			display: inline;
			padding-right: 0;
		}

		
		.main nav ul li {
			text-align: center;
			float: left;
			list-style-type: none;
			font: bold 16px Dotum;
			padding: 0 5px;
		}
		
		.main_first_li{
			width: 85px;
			height: 20px;
		}
		.main_first_li>a{
			display: block;
			background-color: hsl(176, 44%, 64%);
			border-radius: 5px ;
		}
		.main_second_li>a{
			display: block;
			width: 85px;
			background-color: hsl(176, 44%, 64%);
			border-radius: 5px ;
		}
	</style>
</head>

<body>
	<div class="main">
		<nav>
			<ul>
				<li class="main_first_li"><a href="${pageContext.request.contextPath }/product/ProductBig.jsp">대형인형</a>
				</li>
				<li class="main_first_li"><a href="${pageContext.request.contextPath }/product/ProductCharacter.jsp">캐릭터인형</a>
					<ul>
						<li class="main_second_li"><a href="${pageContext.request.contextPath }/product/ProductPoketmon.jsp">포켓몬스터</a></li>
						<li class="main_second_li"><a href="${pageContext.request.contextPath }/product/ProductJJanggu.jsp">짱구</a></li>
						<li class="main_second_li"><a href="${pageContext.request.contextPath }/product/ProductDoraemong.jsp">도라에몽</a></li>
					</ul>
				</li>
				<li class="main_first_li"><a
						href="${pageContext.request.contextPath }/product/ProductAnimal.jsp">동물인형</a>
					<ul>
						<li class="main_second_li"><a href="${pageContext.request.contextPath }/product/ProductDog.jsp">강아지인형</a></li>
						<li class="main_second_li"><a href="${pageContext.request.contextPath }/product/ProductBear.jsp">곰인형</a></li>
						<li class="main_second_li"><a href="${pageContext.request.contextPath }/product/ProductCat.jsp">고양이인형</a></li>
					</ul>
				</li>
				<li class="main_first_li"><a href="${pageContext.request.contextPath }/product/Product1000.jsp">싹다
						천원</a></li>
				<li class="main_first_li"><a href="${pageContext.request.contextPath }/product/ProductSale.jsp">할인상품</a>
				</li>
				<li class="main_first_li"><a href="${pageContext.request.contextPath }/boardList.do">자유게시판</a></li>
			</ul>
		</nav>
	</div>
</body>

</html>