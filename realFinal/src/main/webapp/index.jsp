<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 쓰기</title>
<style type="text/css">

h3.third span {
  display: inline;
  background-image: 
    linear-gradient(to right, #46eabb, #5cf95e);
  background-size: 100% 15%;
  background-repeat: no-repeat;
  background-position: center;
  max-width: 960px; 
  height: 100%;
  margin: 0 auto; 
  padding: 20px;
  text-align: center;
}
h3 {
	text-align: center;
}

nav {
	margin: 27px auto 0;

	position: relative;
	width: 590px;
	height: 50px;
	background-color: #34495e;
	border-radius: 8px;
	font-size: 0;
}
nav a {
	line-height: 50px;
	height: 100%;
	font-size: 15px;
	display: inline-block;
	position: relative;
	z-index: 1;
	text-decoration: none;
	text-transform: uppercase;
	text-align: center;
	color: white;
	cursor: pointer;
}
nav .animation {
	position: absolute;
	height: 100%;
	top: 0;
	z-index: 0;
	transition: all .5s ease 0s;
	border-radius: 8px;
}
a:nth-child(1) {
	width: 100px;
}
a:nth-child(2) {
	width: 110px;
}
a:nth-child(3) {
	width: 100px;
}
a:nth-child(4) {
	width: 160px;
}
a:nth-child(5) {
	width: 120px;
}
nav .start-home, a:nth-child(1):hover~.animation {
	width: 100px;
	left: 0;
	background-color: #1abc9c;
}
nav .start-about, a:nth-child(2):hover~.animation {
	width: 110px;
	left: 100px;
	background-color: #e74c3c;
}
nav .start-blog, a:nth-child(3):hover~.animation {
	width: 100px;
	left: 210px;
	background-color: #3498db;
}
nav .start-portefolio, a:nth-child(4):hover~.animation {
	width: 160px;
	left: 310px;
	background-color: #9b59b6;
}
nav .start-contact, a:nth-child(5):hover~.animation {
	width: 120px;
	left: 470px;
	background-color: #e67e22;
}

body {
	font-size: 12px;
	font-family: sans-serif;
	background: #2c3e50;
}

</style>
</head>
<body>

<h3 class="third"><span>soupieeeee<br>정확하고 빠른 국비학원 비교!</span></h3>
<nav>
	<a href="#">지식게시판</a>
	<a href="#">게시판</a>
	<a href="#">게시판</a>
	<a href="#">게시판</a>
	<a href="#">게시판</a>
	<div class="animation start-home"></div>
</nav>

	<form action="getPostlist" method="post">
		<input type="submit" value="글 목록" name="getPostlist">
	
	</form>
	
</body>
</html>