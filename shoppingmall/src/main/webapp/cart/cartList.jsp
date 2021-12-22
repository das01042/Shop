<%@page import="java.text.DecimalFormat"%>
<%@page import="com.shop.VO.cartVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
ArrayList<cartVO> cart = null; 

Object obj = session.getAttribute("cart");

if(obj==null){ // 세션에 제품이 없으면 배열생성
	cart = new ArrayList<cartVO>();
} else { // 세션에 제품이 있으면 강제로 카트에 넣기
	cart = (ArrayList<cartVO>) obj;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.t_cart{
border : 1px solid gray;
}
.t_cart th{
border-bottom : 1px solid gray;
}

.t_cart td {
border-bottom : 1px solid gray;
}
.td_last{
 border-bottom: 1px solid white;
}
</style>
<script type="text/javascript">

function fnPay(){
	alert("결제 기능을 지원하지 않습니다.");
}

function fnClear(){
	if(confirm("장바구니를 비우시겠습니까?")) {
		location.href = "cartDelete.jsp";	
	}
}

function fnGo(){
	location.href = "../index.jsp";
}

</script>

</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="../MainMenu.jsp"></jsp:include>
	<br><br>
<div align="center" class = "d_cart">
	<h3>[장바구니 보기]</h3>
	<table class="t_cart" >
		<tr>
			<th>번호</th>
			<th>상품이름</th>
			<th>가격</th>
			<th>주문 수량</th>
			<th>총 가격</th>
		</tr>
<%
		if(cart.size() == 0) {
%>
		<tr align='center'>
			<td colspan= '5'>
				장바구니에 담긴 상품이 없습니다.
				<a href= '../index.jsp'>주문하기</a>
			</td>
		</tr>
<%
		} else {
			int totalSum = 0, total = 0;
			for(int i = 0; i < cart.size(); i++) {
				cartVO vo = cart.get(i);
		%>
		<tr align= 'center'>
			<td><%=(i + 1) %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getPrice() %></td>
			<td><%=vo.getCnt() %></td>
			<% 
				 total = vo.getPrice() * vo.getCnt();
			%>
			<td><%= (total) %></td>
		</tr>
		<% 
			totalSum += total;
		}
		%>
		<tr align = 'center'>
			<td colspan= '4' class = "td_last">
				<input type='button' value='결제하기' onclick='fnPay()' />
				<input type='button' value='장바구니 비우기' onclick='fnClear()' />
				<input type='button' value='쇼핑 계속하기' onclick='fnGo()' />
			</td>
		<td>
		 <%=(totalSum) %>
		 </td>
			</tr>
		<% 
			}//if else
		%>
	</table>
	<jsp:include page="../footer.jsp"></jsp:include>
</div>
</body>
</html>