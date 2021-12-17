<%@page import="com.shop.VO.cartVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
int price = Integer.parseInt(request.getParameter("price"));

ArrayList<cartVO> cart = null;

Object obj = session.getAttribute("cart");	//세션 객체에서 cart 값을 가져온다.

if(obj == null) {	//세션 정보가 없으면 배열을 생성 : 최초 주문한 경우
	cart = new ArrayList<cartVO>();	
} else {			//세션 정보가 있으면 강제로 캐스팅 : 추가 주문
	cart = (ArrayList<cartVO>) obj;
}

int pos = -1;	//등록된 제품이 없다
//장바구니 세션에 동일한 제품이 있을 경우 : 수량(cnt) 증가
for(int i = 0; i < cart.size(); i++) {
	cartVO vo = cart.get(i);
	if(vo.getName().equals(name)) {
		pos = 1;
		vo.setCnt(vo.getCnt() + 1);
		break;
	}
}

//장바구니 세션에 등록된 제품이 없을 경우 : CartDTO 객체를 생성하여 배열에 등록(add())
if(pos == -1) {
	cartVO vo = new cartVO();
	vo.setName(name);
	vo.setPrice(price);
	vo.setCnt(1);
	cart.add(vo);
}

//cart 세션 객체를 만들어 준다.
session.setAttribute("cart", cart);
%>

<script>
	alert("장바구니에 담았습니다."); 
	history.go(-1);
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>