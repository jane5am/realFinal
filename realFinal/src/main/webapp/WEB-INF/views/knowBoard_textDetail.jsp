<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style type="text/css">

h3.third span {
  display: inline;
  background-image: 
    linear-gradient(to right, #46eabb, #5cf95e);
  background-size: 100% 35%;
  background-repeat: no-repeat;
  background-position: center;
  max-width: 960px; 
  height: 100%;
  margin: 0 auto; 
  text-align: center;
}
h3 {
	text-align: center;
}

</style>


<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
<h3 class="third"><span>soupieeeee<br>정확하고 빠른 국비학원 비교!</span></h3>

<h1>글 상세</h1>     

         
      <hr>
		<form action="getPostlist" method="post">
         <input type="text" name="seq" id="seq"  value="${board.seq}" /> <!-- type="hidden" -->
         <table border="1" cellpadding="0" cellspacing="0">
            <tr >
               <td bgcolor="orange" width="70">제목</td>
               
               <td align="left"><input type="text" readonly="readonly"
                  value="[ ${board.subject } ] ${board.title }" /></td>
            </tr>
            <tr>
               <td bgcolor="orange">작성자</td>
               <td align="left" >${board.writer }</td>
            </tr>
            <tr>
               <td bgcolor="orange">내용</td>
               <td align="left"><textarea name="content" readonly="readonly" cols="40" rows="10">${board.content }</textarea></td>
            </tr>
            <tr>
               <td bgcolor="orange">등록일</td>
               <td align="left">${board.postingdate }</td>
            </tr>
            <tr>
               <td bgcolor="orange">조회수</td>
               <td align="left" >${board.hits }</td>
            </tr>
            <tr>
               <td colspan="2" align="center">
       		        <button type="submit" data-oper="moveModify" class="btn btn-default">수정</button>
       				<button type="submit" data-oper="deletePost" class="btn btn-default" >삭제</button>
       				<button type="submit" data-oper= "getPostlist" class="btn btn-default" >글목록</button>
               </td>
            </tr>
         </table>
         
      <input name="title" type="text" readonly="readonly" value="${board.title }" style="display:none;" />
      <input name="subject" type="text" readonly="readonly" value="${board.subject }" style="display:none;" />
      <input name="hits" type="text" readonly="readonly" value="${board.hits }" style="display:none;" />
      
      
      <br>
		<table class="commentTable">
			<tr>
				<td><input type="text" placeholder="닉네임" id="nickname"></td>
				<td><input type="text" placeholder="댓글을 남겨보세요" id="commentContent"></td>
				<td><input type="submit" class="writeComment btn" data-oper= "writeComment" value="작성"></td>
				<td></td>
				<td></td>
				
				<c:forEach items="${commentList}" var="commentlist">
		           <tr>
		              <td> ${commentlist.nickname }</td>
		              <td> ${commentlist.comment_content }</td>
		              <td><fmt:formatDate value="${commentlist.comment_date }" pattern="yyyy-MM-dd"/></td>
		              <td><button>수정</button></td>
		              <td><button class="commentDel">삭제</button></td>
		           </tr>
		        </c:forEach>
			</tr>
		</table>
		  
      </form>

</body>
<script type="text/javascript">
	$(document).ready(function() {
		
		
// 		// 댓글 출력
// 			let seq = $('#seq').val();
		
// 		 $.ajax({
			 
// 		    url: "/getCommentList",
// 		    method: "POST",
// 		    data: { "seq" : seq }, // 게시물 ID를 전달해서 댓글 목록을 가져옴
// 		    dataType : 'json', // json쓸거면 데이터타입에 json써줘야한다 그리고 변환기 pom.xml에 넣어주기
// 		    //---------------------------------------------------
// 		    success: function(ajaxData) {
// 		    	console.log("성공!");
// 		      // 댓글 목록 출력
// 		    	$.each(ajaxData['jsonList'], function(index, item) { // 데이터 =item

// 					console.log("얍" + ajaxData['jsonList'][index]['comment_content']); 
					
// 						let tagHtml = "<tr>"+
// 					  "<td>"+ajaxData['jsonList'][index]['nickname']+"</td> "+
// 						 "<td>"+ ajaxData['jsonList'][index]['comment_content'] +"</td> "+
// 						 "<td>"+ ajaxData['jsonList'][index]['comment_date'] +"</td> "+
// 						 "<td><button type='button'>수정</button></td> "+
// 						 "<td><button type='button'>삭제</button></td> "+
// 					  "<input type = 'text' value="+ +ajaxData['jsonList'][index]['comment_id'] +">" +
// 					  "</tr>";
					  
							
// 						$('.commentTable > tbody').append(tagHtml);
// 				});
		      
// 		      },
// 		    error: function() {
// 		      console.log("실패!");
// 		    }

// 		 });
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		var formObj = $("form");
		$('.btn').on("click", function(e) { 		//모든 button태그에 대한 클릭 이벤트 처리
			e.preventDefault(); 					//버튼의 기본 submit() 동작 막기
			var operation = $(this).data("oper");	//data-oper 값 읽어오기
			console.log(operation);

			if (operation === 'deletePost') {
				if (confirm("게시글을 삭제하시겠습니까?") == true) {
					alert("게시글이 삭제되었습니다.");
					formObj.attr("action", "deletePost");
				} else {
					return false;
				}
			} else if (operation == 'moveModify' ){
				if (confirm("게시글을 수정하시겠습니까?") == true) {
					formObj.attr("action", "moveModify");
				} else {
					return false;
				}
			} else if (operation == 'writeComment' ){
				if (confirm("댓글을 등록하시겠습니까?") == true) {
					formObj.attr("action", "writeComment");
					return;
				} else {
					return false;
				}
			} 				
				else {
				formObj.attr("action", "getPostlist");
			}
			
			alert('gg');
			formObj.submit();
		})
		
		
		
		//ajax 사용하기 위한 부분
		$('.writeComment').click(function(){
			// ajax 주요 키(옵션)
			// 1. url : 요청할 주소, controller 에 있는 맵핑명
			// 2. data : 요청과 함께 서버에 보낼 문자열, JSON 객체
			// 3. type : 전송할 방법, 보통 post or get 방식 중 하나인데 post를 더 많이 사용한다
			// 4. success : 요청이 성공되면 실행되는 함수(callback), function(){} 으로 생성
			// 5. dataType : 서버에서 받아온 데이터의 형식(자료형)
			// 6. error : 요청이 실패하면 실행되는 함수(callback), function(){ }으로 생성
			
			//JS를 이용해서 rentTitle과 rentDirector를 채워준다. 단, null체크 중요하다! java에서 실제로 null인지 판별해줘야한다
//			let inputData = { rentTitle : "제목" ,  rentDirector : "감독"}; // 미리 배열을 변수화 해둔 것

			let nickname = $('#nickname').val();
			let commentContent = document.getElementById('commentContent').value;
			let seq = $('#seq').val();
			console.log(nickname);
			console.log(commentContent);
			console.log(seq);
			
			let inputData = { "nickname" : nickname , "comment_content" : commentContent, "seq" : seq }; // 미리 배열을 변수화 해둔 것
			//FORM에서는 input태그안에 아무것도 입력하지 않으면 null로 떴었는데 AJAX에서는 그냥 공백("")으로 뜨나봐 , 이걸 가지고 DB까지 갔을 때 쿼리를 다시 짜줘야지
			
			// 에이젝스에서 컨트롤러의 vo에 자동으로 값을 넣으려면 
			// "키" : 값 에서 "키"를 vo의 변수명과 맞춰주면 된다
			
			// 작은 form태그라고 생각해라 - 실행이되면 나오는 결과를 success로 표현
			$.ajax( {
				//url : 우리 form태그에 있던 action과 같은 기능, 내가 접속하려고 하는 페이지의 맵핑명, controller에 있는 맵핑명
				url : "writeComment", // 여기서 "ajax"는 컨트롤러에 있던 @RequestMapping("ajax")의 ajax이다
				data : inputData,
				type : "post",
				dataType : 'json', // json쓸거면 데이터타입에 json써줘야한다 그리고 변환기 pom.xml에 넣어주기
				//----------------------------------
				success : function (ajaxData) { // ajaxData : 그냥 아무 변수명을 쓰면된다, 뭐 data라고 써도되고
					alert('성공'); // 이때 ajaxData는 컨트롤러의 return데이터이다
					console.log(ajaxData);
						let str = JSON.stringify(ajaxData); // <> parse()
						console.log(str); 
						
					// ajaxData를 return 받아왔으니 그 데이터로 태그를 만드는 작업이 필요하다 (*)단 기존태그는 지우고
					// 데이터를 확인하고 싶을 때.
// 					 String -> Json 으로 바꾸는 함수 : JSON.parse // Json -> String 으로 바꾸는 함수 : JSON.stringify

					
// 					Object.keys(ajaxData).forEach(function(k){
// 					    console.log('키값 : '+ ajaxData['jsonList'][index] + ', 데이터값 : ' + ajaxData['jsonList'][index]['comment_id']);
// 					});
 
						$.each(ajaxData['jsonList'], function(index, item) { // 데이터 =item
							console.log("얍" + ajaxData['jsonList'][index]['comment_content']); 
							
								let tagHtml = "<tr>"+
							  "<td>"+ajaxData['jsonList'][index]['nickname']+"</td> "+
								 "<td><a>"+ ajaxData['jsonList'][index]['comment_content'] +"</a></td> "+
								 "<td>"+ ajaxData['jsonList'][index]['comment_date'] +"</td> "+
								 "<td><button type='button' class='commentMod' >수정</button></td> "+
								 "<td><button type='button' class='commentDel'>삭제</button></td> "+
							  "</tr>";
									
								$('.commentTable > tbody').append(tagHtml);
						});
						
						$('#nickname').val('');
						$('#commentContent').val('');
					
					//ajaxData를 return 받아왔으니 그 데이터로 태그를 만드는 작업이 필요하다 (*)단 기존태그는 지우고
// 						let tagHtml = "<tr>"+
// 					  "<td>"+ ajaxData[0]+"</td> "+
// 						 "<td>"+ ajaxData[1] +"</td> "+
// 						 "<td>감독</td> "+
// 						 "<td>날짜</td> "+
// 						 "<td>상태</td> "+
// 					  "</tr>"
								
// 						$('.table > tbody').append(tagHtml);
				},
				error : function() {
					alert('실패');
				},
				//dataType 은 지금은 필요없대, 주고받을때 에러 생기면 쓰는 거라 지금은 필요없대
			});
				
		})
		
		
		$(".commentDel").on("click", function(){
			  alert("문장이 클릭되었습니다.");
			  
				$.ajax( {
					url : "deleteComment",
					data : inputData,
					type : "post",
					//----------------------------------
					success : function (ajaxData) {
						alert('성공'); // 이때 ajaxData는 컨트롤러의 return데이터이다
						console.log(ajaxData);
							let str = JSON.stringify(ajaxData); // <> parse()
							console.log(str); 

							$.each(ajaxData['jsonList'], function(index, item) { // 데이터 =item
								console.log("얍" + ajaxData['jsonList'][index]['comment_content']); 
								
									let tagHtml = "<tr>"+
								  "<td>"+ajaxData['jsonList'][index]['nickname']+"</td> "+
									 "<td><a>"+ ajaxData['jsonList'][index]['comment_content'] +"</a></td> "+
									 "<td>"+ ajaxData['jsonList'][index]['comment_date'] +"</td> "+
									 "<td><button type='button' class='commentMod' >수정</button></td> "+
									 "<td><button type='button' class='commentDel'>삭제</button></td> "+
								  "</tr>";
										
									$('.commentTable > tbody').append(tagHtml);
							});
							
							$('#nickname').val('');
							$('#commentContent').val('');
						
					},
					error : function() {
						alert('실패');
					},
				});
				
		});
		
		
		
	})
</script>
</html>