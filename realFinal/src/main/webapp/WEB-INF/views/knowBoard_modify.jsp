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
<script type="text/javascript">
$(document).ready(function(){//document가 준비가 되면 function함수를 실행하겠다
	$("#subject").val('${board.subject}').prop("selected", true);
});
</script>
<body>
<h3 class="third"><span>soupieeeee<br>정확하고 빠른 국비학원 비교!</span></h3>

	<h1> 지식 공유 글 수정하기 </h1>
	<h4> 지식을 공유하고 새로운 아이디어를 얻어보세요</h4><br>
	
	<form action="modifyPost" > <!-- enctype="multipart/form-data" -->
		말머리 <br>
		<select name="subject" id="subject" size="1">
			<option value="select" hidden="hidden">말머리를 선택하세요</option>
		    <option value="nothing">선택안함</option>
		    <option value="javascript">JavaScript</option>
		    <option value="php">PHP</option>
		    <option value="java">Java</option>
		    <option value="golang">Golang</option>
		    <option value="python">Python</option>
		    <option value="c#">C#</option>
		    <option value="C++">C++</option>
		    <option value="erlang">Erlang</option>
		 </select>
		
		<br>
		
		제목<br/>
		<input type="text" name="title" value="${board.title}"><br/>
		
		내용<br/>
		<textarea rows="10" cols="10" name="content" >${board.content}</textarea><br/>
	
		<button type="button">임시저장</button>
		<button type="submit">등록</button>

      <input name="seq" type="text" readonly="readonly" value="${board.seq }" style="display:none;" />
      
    </form>
</body>

</html>