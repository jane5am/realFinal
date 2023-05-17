$(function(){
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#confirm').click(function(){
    	if( $.trim($("#userId").val()) == '' ){
            alert("아이디를 입력해 주세요.");
            $("#userId").focus();
            return;
        }
    	
    	if($.trim($('#userPass').val())==''){
    		alert("비번입력해주세요.");
    		$('#userPass').focus();
    		return;
    	}
    	
    	if($.trim($('#userPass').val()) != $.trim($('#userPass2').val())){
    		alert("비밀번호가 일치하지 않습니다..");
    		$('#userPass2').focus();
    		return;
    	}
    	
    	
    	if($.trim($('#userName').val())==''){
    		alert("이름입력해주세요.");
    		$('#userName').foucs();
    		return;
    	}
       
        // 자료를 전송합니다.
        document.userinput.submit();
	});
	
	//아이디 중복체크
	// id가 userId인 태그에서 키보드가 올라갈 때, 입력할 때마다
	$('#userId').keyup(function(){
		
		// 화면상에서 사용자가 입력한 값을 가지고 DB에 가서 SELECT문을 통해 결과를 화면에 공유
		var id = $('#userId').val(); // 화면상에서 사용자가 입력한 값
        console.log(id);
        
        
        // 비동기통신 : 요청에 대한 응답을 데이터로 받을 예정
        // MVC 패턴이니까 요청할 페이지 이름이 .do일 것
        $.ajax( {
        	type : 'post',
        	url : 'idCheck.do',	// action - controller 에 맵핑이 존재해야한다
        	data : { 'userId' : id}, // 맵핑된 controller의 메소드의 파라미터와 규칙을 정의
        	
        	// type, url ,data 이 세개로 요청하면 컨트롤러로 간다 이렇게 쓰면 vo로 자동으로 담긴대
//        	dataType : 'text',
        	contentType : 'application/x-www-form-urlencoded;charset=UTF-8', //contentType : 전송데이터의 형태
        	// contentType : 'application/x-www-form-urlencoded;charset=UTF-8' : 한글에러났을 때 추가
        	success : function(resultData) {
//				alert(resultData);
        		console.log(resultData);
        		$('#idCheckResult').html(resultData);
        		// 태그도 생성하고, tr,td같은거 만들수도 있고, 
			},
			error : function(err) {
				alert(err);
			}
        });
       
        // contentType : url로 요청할 때의 데이터 형식
        // dataType : 요청이 완료되고 성공시 응답할 때 받아오는 데이터 형삭
	})
})
	
	
	
	
	
	
	
	
	