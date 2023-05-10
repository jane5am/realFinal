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


	<h1>글목록</h1>
	
	  <form action="getPostlist" method="post">
         
               <select name="searchCondition">
                  <option value='title'>제목</option>
                  <option value='content'>내용</option>
                  <option value='writer'>작성자</option>                                    
               </select> <!--  넘어갈 데이터 1 : 여기 value값이 넘어갈거임 -->
               <input name="searchKeyword" type="text" /> <!-- 넘어갈 데이터2 : input박스 안에 입력된 value값이 넘어갈거임 -->
               <input type="submit" value="검색"/>
               
      </form>
	
	
	 <table border="1" class="knowledgeList">
         <tr>
            <th bgcolor="orange" width="100">
            	<select name="searchCondition" class="searchCondition" >
                  <option value='subject' hidden="hidden">말머리</option>
                  <option value='all'>전체보기</option>
                  <option value='JAVA'>JAVA</option>
                  <option value='JavaScript'>JavaScript</option>
                  <option value='C++'>C++</option>                                    
               </select>
              
            </th>
            <th bgcolor="orange" width="200">제목</th>
            <th bgcolor="orange" width="150">작성자</th>
            <th bgcolor="orange" width="150">등록일</th>
            <th bgcolor="orange" width="100">조회수</th>
         </tr>
         <!-- JSTL : 자바 서버 페이지 표준 태그 라이브러리 
            view페이지에 for if문등을 제공해주는 라이브러리
         -->
         <c:if test="${empty boardList }"> 
         	<tr>
         		<td colspan="5" align="center">
         			😅 아직 작성된 글이 없습니다!
         		</td>
         	</tr>
         </c:if>
         
         <c:forEach items="${boardList}" var="board">
            <tr class="currentList">
               <td> ${board.seq }</td>
               <td align="left"><a href="getBoard.do?seq=${board.seq}">
                    [${board.subject}]  ${board.title }</a></td>
               <td>${board.writer }</td>
               <td><fmt:formatDate value="${board.postingdate }" pattern="yyyy-MM-dd"/></td>
               <td>${board.hits }</td>
            </tr>
         </c:forEach>
      </table>
      <br> 
      
   	<form action="knowBoard_write.do" method="post">
		<input type="submit" value="글 쓰기" name="write">
	
	</form>
</body>

<script type="text/javascript">
	$(document).ready(function() {

		$(".searchCondition").on("change", function() {
			  
			  var selectedValue = $(this).val();
			  console.log(selectedValue);
			  
			  
				$.ajax( {
					//url : 우리 form태그에 있던 action과 같은 기능, 내가 접속하려고 하는 페이지의 맵핑명, controller에 있는 맵핑명
					url : "searchSubject", // 여기서 "ajax"는 컨트롤러에 있던 @RequestMapping("ajax")의 ajax이다
					data : {"selectedValue" : selectedValue },
					type : "post",
					dataType : 'json',
					//----------------------------------
					success : function (ajaxData) { // ajaxData : 그냥 아무 변수명을 쓰면된다, 뭐 data라고 써도되고
						alert("성공"); // 이때 ajaxData는 컨트롤러의 return데이터이다
						
							$('.currentList').remove();
							

							$.each(ajaxData['jsonList'], function(index, item) { // 데이터 =item
								
									let tagHtml = "<tr class='currentList'>"+
								  "<td>"+ajaxData['jsonList'][index]['seq']+"</td> "+
									 "<td align='left'>"+"["+ ajaxData['jsonList'][index]['subject']+"] " + ajaxData['jsonList'][index]['title'] +"</td> "+
									 "<td>"+ ajaxData['jsonList'][index]['writer'] +"</td> "+
									 "<td>"+ ajaxData['jsonList'][index]['postingdate'] +"</td> "+
									 "<td>"+ ajaxData['jsonList'][index]['hits'] +"</td> "+
								  "</tr>";
										
									$('.knowledgeList > tbody').append(tagHtml);
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
