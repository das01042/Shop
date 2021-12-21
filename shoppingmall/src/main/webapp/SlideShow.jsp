<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
<style>
.slide {margin:0;padding:0;}
.slide ul,li{list-style:none;}
    .slide{height:300px;overflow:hidden;}
    .slide ul{width:calc(100% * 4);display:flex;animation:slide 18s infinite;} /* slide를 8초동안 진행하며 무한반복 함 */
    .slide li{width:calc(100% / 4);height:300px;}
    .slide li:nth-child(1){background:#ffa;}
    .slide li:nth-child(2){background:#faa;}
    .slide li:nth-child(3){background:#afa;}
    .slide li:nth-child(4){background:#aaf;}
  	.slide img {width:100%; height:100%;}
    @keyframes slide {
      0% {margin-left:0;} /* 0 ~ 10  : 정지 */
      10% {margin-left:0;} /* 10 ~ 25 : 변이 */
      25% {margin-left:-100%;} /* 25 ~ 35 : 정지 */
      35% {margin-left:-100%;} /* 35 ~ 50 : 변이 */
      50% {margin-left:-200%;}
      60% {margin-left:-200%;}
      75% {margin-left:-300%;}
      85% {margin-left:-300%;}
      100% {margin-left:0;}
    }
  </style>
</head>
<body>
<div class="slide">
  <ul>

		<li>
		<a href="http://localhost/shoppingmall/product/ProductJJanggu.jsp">
        <img src="upload/슬라이드1.png" > 
        </a>
        </li>  
        <li>
         <a href="http://localhost/shoppingmall/product/ProductPoketmon.jsp">
        <img src="upload/슬라이드2.png" > 
        </a>
        </li>
        <li>    
         <a href="http://localhost/shoppingmall/product/ProductBig.jsp">
        <img src="upload/슬라이드3.png" > 
        </a>
     	</li>
     	<li>    
         <a href="http://localhost/shoppingmall/product/ProductDoraemong.jsp">
        <img src="upload/슬라이드4.png" > 
        </a>
     	</li>
</ul>
</div>
</body>
</html>