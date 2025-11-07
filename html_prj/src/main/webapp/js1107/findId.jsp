<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon"	href="http://192.168.10.73/html_prj/common/images/favicon.ico">
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<!-- bootstrap CDN 끝 -->
<style type="text/css">
#wrap{ margin : 0px auto ; width : 480px; height : 380px; /* background-color: #ff0000 */ }
#container{ height : 380px; position : relative;
 background: #ffffff url(images/id_background.png) no-repeat;  /* background-color: #71b75e ; */ }
#searchFrm{ position: absolute; top : 180px; left: 100px;}
#searchResult{position : absolute; top: 220px; left: 100px;}
.fail{color : #ff0000;}
.success{color : #186292;}
</style>
<script type="text/javascript">
window.onload=function(){
	document.getElementById("btnSuccess").addEventListener("click",findId);
	
}//onload
function findId(){
	let num = parseInt(Math.random()*2);
	
	let id = document.popupFrm.id.value;
	
	let useCss= "fail";
	let resultMsg = "사용 불가능";
	if(num == 1){ //사용 가능한 경우
		useCss= "success";
		resultMsg = "사용 가능";
	}
	
	let msg = `[<span class="${useCss}">${id}</span>]는 <span class="${useCss}">${resultMsg}</span>합니다.`;
	
	if(  useCss == 'success'){
		msg+=`<a href='javascript:sendId("${id}")'>사용</a>`;
	}
	
	document.getElementById("searchResult").innerHTML=msg;
}//findId

function sendId( id ){
	//부모창(opener)	으로 값 전달
	opener.window.document.joinFrm.id.value=id;
	//자식 창 닫기
	self.close();
	
}

</script>
</head>
<body>
<div id = "wrap" >
	<div id="container">
	<div id="searchFrm">
		<form name="popupFrm">
		<input type ="text" name="id" value='<%=request.getParameter("id") %>' style="width : 200px"/>
		<input type = "button" value="중복 확인" class="btn btn-success btn-sm " id="btnSuccess" />
			
		</form>
	</div>
	<%-- <div id="searchResult"><%= request.getQueryString() %></div> --%>
	<%-- <div id="searchResult"><%= request.getParameter("id") %></div> --%>
	<div id="searchResult"></div>
	</div>
</div>
</body>
</html>