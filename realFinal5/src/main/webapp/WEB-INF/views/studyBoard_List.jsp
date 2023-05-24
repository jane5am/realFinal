<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>스터디 & 모임 게시판</title>
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
<link href="resources/assets/css/style3.css" rel="stylesheet">
  
  <!-- 테이블 CSS -->
<link href="resources/css/css.css" rel="stylesheet">
  
<script type="text/javascript"  src="http://code.jquery.com/jquery-1.9.0.js"></script>  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
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
        			<li><a class="nav-link scrollto" href="getStudyPostlist">스터디게시판</a></li>
        			<li><a class="nav-link scrollto" href="stusyBoard_write.do">스터디게시판 글쓰기</a></li>
        			<li><a class="nav-link scrollto" href="getBookmark">북마크</a></li>
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
<!-- 		<input type="hidden" name="board_id" value="2"> -->
		<div class="serchForm" >
			<select class="search boardSearch">
				<option value='title'>제목</option>
				<option value='content'>내용</option>
				<option value='writer'>작성자</option>
			</select>

			<input type="text" name="searchKeyword" class="searchBox" />
			<input type="submit" value="검색" class="knowBLsearchBtn" />
		</div>

		<section>

	         <div class="board_title">
	            <strong>스터디 & 모임 게시판</strong>
	            <p>개발과 관련된 공통 주제나 관심사로 사람을 모아보세요!</p>
	        </div>

			<div class="tbl-header">
				<table class="tbl_1">
					<tr>
						<th class="subjectTH">
							<select name="selectBox" class="selectBox">
									<option value='recruitment' hidden="hidden">모집 상태</option>
									<option value='all'>전체보기</option>
									<option value='모집중'>모집중</option>
									<option value='마감'>마감</option>
							</select>
						</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>

					<c:if test="${empty boardList }">
						<tr>
							<td colspan="5" class="notingBoardList">😅 아직 작성된 글이 없습니다!</td>
						</tr>
					</c:if>
					
					<c:forEach items="${boardList}" var="board">
						<tr class="currentList subjectTH">
							<td>${board.seq }</td>
							<td align="left"><div class="subjectS"><a href="geStudytBoard.do?seq=${board.seq}">[${board.recruitment}]</div>  ${board.title }</a></td>
							<td>${board.writer }</td>
							<td>${board.postingdate }
<%-- 							  <c:choose> --%>
<%-- 							    <c:when test="${board.postingdate < today}"> --%>
<%-- 							      <fmt:formatDate value="${board.postingdate}" pattern="yyyy-MM-dd" /> --%>
<%-- 							    </c:when> --%>
<%-- 							    <c:otherwise> --%>
<%-- 							      <fmt:formatDate value="${board.postingdate}" pattern="HH:mm" /> --%>
<%-- 							    </c:otherwise> --%>
<%-- 							  </c:choose> --%>
							</td>
							<td>${board.hits }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</section>
		
		<c:if test="${not empty boardList }"> <!-- 만약 게시물이 하나도 없다면 페이지버튼을 작성하지 않는다 -->
				<div class="board_page">
					<c:choose>
						<c:when test="${pageInfoVO.groupNum > 1}">
						 	<a href="getStudyPostlist?pageNum=${pageInfoVO.startGroup-1}&amp;groupNum=${pageInfoVO.groupNum-1}" class="bt first"> ◀ </a>
						</c:when>
						<c:otherwise>
						 	<a class="bt first" style="pointer-events: none;" > ◀ </a>
						</c:otherwise>
					</c:choose>
					<c:forEach var="i" begin="${pageInfoVO.startGroup}" end="${pageInfoVO.endGroup}" >
						<a href="getStudyPostlist?pageNum=${i}&amp;groupNum=${pageInfoVO.groupNum}" class="num">${i}</a>
						
					</c:forEach>  
						<c:choose>
						<c:when test="${pageInfoVO.groupNum < pageInfoVO.totalGroup}">
						 	<a href="getStudyPostlist?pageNum=${pageInfoVO.endGroup+1}&amp;groupNum=${pageInfoVO.groupNum+1}" class="bt last"> ▶ </a>
						</c:when>
						<c:otherwise>
						 	<a class="bt last" style="pointer-events: none;"> ▶ </a>
						</c:otherwise>
					</c:choose>
					
				</div>
		</c:if>
	
			
			<form action="stusyBoard_write.do" method="post" class="write bt_wrap">
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
		
		// 말머리 검색
		$(".selectBox").on("change", function() {

			var selectedRecruitment = $(this).val();
			console.log(selectedRecruitment);
	
			$.ajax({
				url : "searchStudySubject", // 여기서 "ajax"는 컨트롤러에 있던 @RequestMapping("ajax")의 ajax이다
				data : { "selectedRecruitment" : selectedRecruitment },
				type : "post",
				dataType : 'json',
				//----------------------------------
				success : function(ajaxData) { // ajaxData : 그냥 아무 변수명을 쓰면된다, 뭐 data라고 써도되고
					alert("성공"); // 이때 ajaxData는 컨트롤러의 return데이터이다
					
					$('.currentList').remove();
					$.each(	ajaxData['jsonList'], function(	index, item) { // 데이터 =item
						console.log(index);
						
						let tagHtml = "<tr class='currentList subjectTH'>"
							+ "<td>"+ ajaxData['jsonList'][index]['seq']+ "</td>"
							+ "<td align='left'>"+ "<a href='geStudytBoard.do?seq="+ ajaxData['jsonList'][index]['seq']+ "'>"+ "<div class='subjectS'>["+ ajaxData['jsonList'][index]['recruitment']+ "] </div>"
							+ ajaxData['jsonList'][index]['title'] + "</a>"	+ "</td>" 
							+ "<td>"+ ajaxData['jsonList'][index]['writer']+ "</td> "	
							+ "<td>"+ ajaxData['jsonList'][index]['postingdate']+ "</td> "
							+ "<td>"+ ajaxData['jsonList'][index]['hits']+ "</td> "
							+ "</tr>";
									 
						$('.tbl_1 > tbody').append(tagHtml);
	
					});
				}, error : function() { 
					alert('실패');
				},
			});

		}); // selectBox 끝!
		
		
// 		게시판 글 목록 검색하기
		$('.knowBLsearchBtn').on('click', function() {
			let type = $(".search").val();
		   console.log(type);
		   let keyword = $(".searchBox").val();
		   console.log(keyword);
		   
			$.ajax({
				url : "studyBLsearch", // 여기서 "ajax"는 컨트롤러에 있던 @RequestMapping("ajax")의 ajax이다
				data : { "type" : type, "keyword" : keyword },
				type : "post",
				//----------------------------------
				success : function(ajaxData) { // ajaxData : 그냥 아무 변수명을 쓰면된다, 뭐 data라고 써도되고
					alert("성공"); // 이때 ajaxData는 컨트롤러의 return데이터이다
					$('.currentList').remove();
					
					$.each(	ajaxData, function(	index, item) {  // 데이터 =item
						console.log(index);

							let tagHtml = "<tr class='currentList subjectTH'>"
								+ "<td>"+ ajaxData[index].seq + "</td>"
								+ "<td align='left'>"+ "<a href='geStudytBoard.do?seq=" + ajaxData[index].seq + "'>"+ "<div class='subjectS'>["+ ajaxData[index].recruitment + "] </div>"
								+ ajaxData[index].title + "</a>"	+ "</td>" 
								+ "<td>"+ ajaxData[index].writer + "</td> "	
								+ "<td>"+ ajaxData[index].postingdate + "</td> "
								+ "<td>"+ ajaxData[index].hits + "</td> "
								+ "</tr>";	
						$('.tbl_1 > tbody').append(tagHtml);
	
					});
					
				}, error : function() {
					alert('실패');
				},
			});
		});
	});
</script>
</html>
