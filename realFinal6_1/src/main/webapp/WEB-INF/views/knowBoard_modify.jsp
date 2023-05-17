<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<meta content="" name="description">
 <meta content="" name="keywords">
 
<link href="resources/assets/img/favicon.png" rel="icon">
<link href="resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

 <!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="resources/assets/vendor/aos/aos.css" rel="stylesheet">
<link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="resources/assets/css/style2.css" rel="stylesheet">
  
  <!-- 테이블 CSS -->
<link href="resources/css/css.css" rel="stylesheet">
  
<script type="text/javascript"  src="http://code.jquery.com/jquery-1.9.0.js"></script>  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

</head>

<script type="text/javascript">
$(document).ready(function(){//document가 준비가 되면 function함수를 실행하겠다
	$("#subject").val('${board.subject}').prop("selected", true);
});
</script>

<body>

<header id="header" class="fixed-top ">
		<div class="container d-flex align-items-center">

			<h1 class="logo me-auto">
				<a href="home.do">soupieeeee</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

			<nav id="navbar" class="navbar">
				<ul>
					<li><a class="nav-link scrollto active" href="getPostlist">지식게시판</a></li>
					<li><a class="nav-link scrollto" href="#about">게시판</a></li>
					<li><a class="nav-link scrollto" href="#services">Services</a></li>
					<li><a class="nav-link   scrollto" href="#portfolio">Portfolio</a></li>
					<li><a class="nav-link scrollto" href="#team">Team</a></li>
					<li class="dropdown"><a href="#"><span>Drop Down</span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="#">Drop Down 1</a></li>
							<li class="dropdown"><a href="#"><span>Deep Drop
										Down</span> <i class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Deep Drop Down 1</a></li>
									<li><a href="#">Deep Drop Down 2</a></li>
									<li><a href="#">Deep Drop Down 3</a></li>
									<li><a href="#">Deep Drop Down 4</a></li>
									<li><a href="#">Deep Drop Down 5</a></li>
								</ul></li>
							<li><a href="#">Drop Down 2</a></li>
							<li><a href="#">Drop Down 3</a></li>
							<li><a href="#">Drop Down 4</a></li>
						</ul></li>
					<li><a class="nav-link scrollto" href="#contact">Contact</a></li>
					<li><a class="getstarted scrollto" href="#about">Get
							Started</a></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->
		</div>
	</header>
	<!-- End Header -->
	
	<div class="board_wrap">
         <div class="board_title">
            <strong>지식 공유 글쓰기</strong>
            <p>지식을 공유하고 새로운 아이디어를 얻어보세요!</p>
        </div>
	
		    <form action="modifyPost" >
	            <div class="board_write">
	                <div class="title">
	                    <dl>
	                        <dt>제목</dt>
	                        <dd><input type="hidden" name="R_SEQ"><input type="text" name="title" value="${board.title}"></dd>
	                    </dl>
	                </div>
	                <div class="info">
	                    <dl>
	                        <dt>말머리</dt>
	                        <dd>
		                        <select name="subject" id="subject" size="1">
									<option value="select" hidden="hidden">말머리를 선택하세요</option>
								    <option value="nothing">선택안함</option>
								    <option value="JavaScript">JavaScript</option>
								    <option value="php">PHP</option>
								    <option value="JAVA">JAVA</option>
								    <option value="golang">Golang</option>
								    <option value="python">Python</option>
								    <option value="c#">C#</option>
								    <option value="C++">C++</option>
								    <option value="erlang">Erlang</option>
								 </select>
							 </dd>
	                    </dl>
<!-- 	                    <dl> -->
<!-- 	                        <dt>비밀번호</dt> -->
<!-- 	                        <dd><input type="password" placeholder="비밀번호 입력"></dd> -->
<!-- 	                    </dl> -->
	                </div>
	                <div class="cont">
	                    <textarea name="content" class="textarea" >${board.content}</textarea>
	                </div>
	            </div>
	            <div class="bt_wrap">
					<button type="submit" class="on btn">등록</button>
	                <button type="button" class="btn">임시저장</button>
	            </div>
	            <input name="seq" type="text" readonly="readonly" value="${board.seq }" style="display:none;" />
            </form>
    </div>
  <!-- Vendor JS Files -->
  <script src="resources/assets/vendor/aos/aos.js"></script>
  <script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="resources/assets/vendor/php-email-form/validate.js"></script>
  <script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="resources/assets/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/assets/js/main.js"></script>
</body>

</html>