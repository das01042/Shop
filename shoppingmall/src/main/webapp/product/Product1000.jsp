<%@page import="com.shop.VO.productVO"%>
<%@page import="java.util.List"%>
<%@page import="com.shop.service.productService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script >

function fnCart(name, price) {
	//alert("Name : " + name + "\nPrice : " + price);
	if(confirm("장바구니에 담으시겠습니까?")) {
		location.href = "../cart/cartInput.jsp?name=" + name + "&price=" + price;
	}
}
</script>
<style>
.outProduct {
display : flex;
flex-wrap: wrap;
text-align:center;
margin-left:105px;
}
.inProduct{
width: 400px;
border-style: inset;
border-width:2px;
margin:5px;
}



@font-face {
  font-family: neon;
  src: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/707108/neon.ttf);
}

.black {
background-color:black;
width:700px;
margin: 0 500px;
border-radius:100px;
}

.container {
	margin: 0, 200px
  display: table-cell;
  text-align: center;
  vertical-align: middle;
}

.neon {
  font-family: neon;
  color: #FB4264;
  font-size: 9vw;
  line-height: 9vw;
  text-shadow: 0 0 3vw #F40A35;
}

.flux {
  font-family: neon;
  color: #426DFB;
  font-size: 9vw;
  line-height: 9vw;
  text-shadow: 0 0 3vw #2356FF;
}

.neon {
  animation: neon 1s ease infinite;
  -moz-animation: neon 1s ease infinite;
  -webkit-animation: neon 1s ease infinite;
}

@keyframes neon {
  0%,
  100% {
    text-shadow: 0 0 1vw #FA1C16, 0 0 3vw #FA1C16, 0 0 10vw #FA1C16, 0 0 10vw #FA1C16, 0 0 .4vw #FED128, .5vw .5vw .1vw #806914;
    color: #FED128;
  }
  50% {
    text-shadow: 0 0 .5vw #800E0B, 0 0 1.5vw #800E0B, 0 0 5vw #800E0B, 0 0 5vw #800E0B, 0 0 .2vw #800E0B, .5vw .5vw .1vw #40340A;
    color: #806914;
  }
}

.flux {
  animation: flux 2s linear infinite;
  -moz-animation: flux 2s linear infinite;
  -webkit-animation: flux 2s linear infinite;
  -o-animation: flux 2s linear infinite;
}

@keyframes flux {
  0%,
  100% {
    text-shadow: 0 0 1vw #1041FF, 0 0 3vw #1041FF, 0 0 10vw #1041FF, 0 0 10vw #1041FF, 0 0 .4vw #8BFDFE, .5vw .5vw .1vw #147280;
    color: #28D7FE;
  }
  50% {
    text-shadow: 0 0 .5vw #082180, 0 0 1.5vw #082180, 0 0 5vw #082180, 0 0 5vw #082180, 0 0 .2vw #082180, .5vw .5vw .1vw #0A3940;
    color: #146C80;
  }
}


</style>
</head>
<body>
<%
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
	String password = (String) session.getAttribute("password");
	String email = (String) session.getAttribute("email");
	if (id == null) {
%>
	<jsp:include page="../loginmenu.jsp"></jsp:include>
	<jsp:include page="productHeader.jsp"></jsp:include>
	
	<jsp:include page="../MainMenu.jsp"></jsp:include>
<%
	} else if(id.equals("admin")) {
	%>
	<jsp:include page="../adminmenu.jsp"></jsp:include>
	<jsp:include page="productHeader.jsp"></jsp:include>
	<form class="search_menu" action='../productSearchTool.do' method='get'>
			<input type='text' name='pName' placeholder="상품을 검색하세요.">
			<input type='submit' value='검색'>
	</form>
	<h3>관리자모드로 접속하셨습니다.</h3>
	
	<jsp:include page="../MainMenu.jsp"></jsp:include>
	<%
		} else {
			%> 
			<jsp:include page="../logoutmenu.jsp"></jsp:include>
			<jsp:include page="productHeader.jsp"></jsp:include>
			<form class="search_menu" action='../productSearchTool.do' method='get'>
			<input type='text' name='pName' placeholder="상품을 검색하세요.">
			<input type='submit' value='검색'>
			</form>
			<h3><%=session.getAttribute("name") %>고객님, 환영합니다~</h3>
			<jsp:include page="../MainMenu.jsp"></jsp:include>
		<%
		}
	%>
	<br><br>
	<div class="black">
	<div class="container">
  <div class="neon">1000 </div>
  <div class="flux">Shop </div>
</div>
</div>
	<br><br><br>
<section>
      <div class="outProduct">
<% productService service = new productService();
		List<productVO> list = service.searchAll();
      for(productVO p:list){  
      if(p.getSalePrice()==1000 || p.getOriginPrice()==1000){
      %>
  	<div class="inProduct">
      <div class="image">
          <img src="../upload/<%=p.getImage()%>" width="70" >
          </div>
          <div class="name">
          <%=p.getpName() %> 
          </div>
          <div class="desc">
          <%=p.getpDesc() %> 
		  </div>
          <%if(p.getSalePrice()==0){ 
			%>
			<div class="Price">
	       <%=p.getOriginPrice()%>원
			  </div> <%
			}else{
				%>
          <div class="Price">
		  <span style="text-decoration: line-through !important"><%=p.getOriginPrice()%>원</span>
       <%=p.getSalePrice()%>원
		  </div>
			<%
			}%>
			
		
		  
       <div class="information">
      <form action='../productSearch.do' method='get'>
      <input type='hidden' name='pName' value='<%=p.getpName() %>'>
      <input type='hidden' name='pId' value='<%=p.getpId() %>'>
      <input type='hidden' name='job' value='search'>
      <input type='submit' value='상세조회'>
      
      </form>
      <c:set var="id" value="${sessionScope.id }"></c:set>
      <c:if test="${id!='admin' && id!=null }">
      <input type='image' src="../image/장바구니.png" width="50" onclick="fnCart( '<%=p.getpName() %>' , <%=p.getSalePrice() %> )" >
      </c:if>
      </div>
       
       </div>
       
    <%   
     }}
      %> 
     
</div>
</section>
		<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>