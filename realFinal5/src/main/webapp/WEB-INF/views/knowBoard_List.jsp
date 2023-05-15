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

		<form action="getPostlist" method="post">

			<select class="search">
				<option value='title'>제목</option>
				<option value='content'>내용</option>
				<option value='writer'>작성자</option>
			</select>
			<!--  넘어갈 데이터 1 : 여기 value값이 넘어갈거임 -->
			<input type="text" name="searchKeyword" class="searchBox" />
			<!-- 넘어갈 데이터2 : input박스 안에 입력된 value값이 넘어갈거임 -->
			<input type="submit" value="검색" />

		</form>

		<section>

	         <div class="board_title">
	            <strong>지식 공유 글쓰기</strong>
	            <p>지식을 공유하고 새로운 아이디어를 얻어보세요!</p>
	        </div>

			<div class="tbl-header">
				<table class="tbl_1" class="knowledgeList">
					<tr>
						<th><select name="searchSubject" class="searchSubject">
								<option value='subject' hidden="hidden">말머리</option>
								<option value='all'>전체보기</option>
								<option value='JAVA'>JAVA</option>
								<option value='JavaScript'>JavaScript</option>
								<option value='C++'>C++</option>
						</select></th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>

					<c:if test="${empty boardList }">
						<tr>
							<td colspan="5" align="center">😅 아직 작성된 글이 없습니다!</td>
						</tr>
					</c:if>
					<c:forEach items="${boardList}" var="board">
						<tr class="currentList">
							<td>${board.seq }</td>
							<td align="left"><a href="getBoard.do?seq=${board.seq}">[${board.subject}] ${board.title }</a></td>
							<td>${board.writer }</td>
							<td><fmt:formatDate value="${board.postingdate }"
									pattern="yyyy-MM-dd" /></td>
							<td>${board.hits }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</section>
		
		
			<div class="board_page">
				<a href="#" class="bt first"><<</a> <a href="#" class="bt prev"><</a>
				<a href="#" class="num on">1</a> <a href="#" class="num">2</a> <a
					href="#" class="num">3</a> <a href="#" class="num">4</a> <a
					href="#" class="num">5</a> <a href="#" class="bt next">></a> <a
					href="#" class="bt last">>></a>
			</div>
			

			<form action="knowBoard_write.do" method="post" class="write bt_wrap">
				<input type="submit" value="글 쓰기" name="write" class="btn on">
			</form>

	</div>
<!-- Vendor JS Files -->
<script src="resources/assets/vendor/aos/aos.js"></script>
<script	src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script	src="resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="resources/assets/vendor/php-email-form/validate.js"></script>
<script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="resources/assets/vendor/waypoints/noframework.waypoints.js"></script>

<!-- Template Main JS File -->
<script src="resources/assets/js/main.js"></script>

</body>


<script type="text/javascript">
	$(document).ready( function() {
		
		
	    let groupNo = 1;

	    
		$(".searchSubject").on("change", function() {

		var selectedValue = $(this).val();
		console.log(selectedValue);

		$.ajax({
			//url : 우리 form태그에 있던 action과 같은 기능, 내가 접속하려고 하는 페이지의 맵핑명, controller에 있는 맵핑명
			url : "searchSubject", // 여기서 "ajax"는 컨트롤러에 있던 @RequestMapping("ajax")의 ajax이다
			data : { "selectedValue" : selectedValue },
			type : "post",
			dataType : 'json',
			//----------------------------------
			success : function(ajaxData) { // ajaxData : 그냥 아무 변수명을 쓰면된다, 뭐 data라고 써도되고
				alert("성공"); // 이때 ajaxData는 컨트롤러의 return데이터이다

				$('.currentList').remove();
				$.each(	ajaxData['jsonList'], function(	index, item) { // 데이터 =item
					console.log(index);
					let tagHtml = "<tr class='currentList'>"
								+ "<td>"+ ajaxData['jsonList'][index]['seq']+ "</td>"
								+ "<td align='left'>"+ "<a href='getBoard.do?seq="+ ajaxData['jsonList'][index]['seq']+ "'>"+ "["+ ajaxData['jsonList'][index]['subject']+ "] "
								+ ajaxData['jsonList'][index]['title'] + "</a>"	+ "</td>" + "<td>"+ ajaxData['jsonList'][index]['writer']+ "</td> "	
								+ "<td>"
																						+ ajaxData['jsonList'][index]['postingdate']
																						+ "</td> "
																						+ "<td>"
																						+ ajaxData['jsonList'][index]['hits']
																						+ "</td> "
																						+ "</tr>";
																				// 									let tagHtml = "<tr class='currentList'></tr>";

																				$(
																						'.tbl_1 > tbody')
																						.append(
																								tagHtml);
																			});

														},
														error : function() {
															alert('실패');
														},
													//dataType 은 지금은 필요없대, 주고받을때 에러 생기면 쓰는 거라 지금은 필요없대
													});

										});
					});
</script>
</html>
