<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true"%>
<!DOCTYPE html>
<html>
<head>
<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">


#header{background-color: #555; height:80px; color:#ffffff; font-size:30px; vartical-align : middle;}
#id{ margin-left : 100px; height : 80px; width :400px; font-size: 25px; ;vartical-align : middle; 
display:flex; align-items:center; }
#inputId{height : 30px; width:150px;}
.btn{height : 40px; }
label{width:150px;}
#checkId{width: 300px;}
#btnUse{display:none}
</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript">
$(function(){
	$("#btnChk").click(chkId);
	$("#btnUse").click(useId);
});//ready

function chkId(){
	var check = parseInt(Math.random()*2+1);
	var color="#ff0000";
	var id = $("#inputId").val();
	$("#btnUse").hide();
	
	if(check==1){
	var color="#00ff00";
		var msg =`[${id}]은 <span style="color : ${color}">사용가능</span>`;
	$("#chkId").html(msg);
	
	$("#btnUse").show();
	return;
	}
		var msg =`[${id}]은 <span style="color : ${color}">사용불가능</span>`;
	
	$("#chkId").html(msg);
	
}//chkId
function useId(){
	
	opener.window.document.frm.id.value=$("#inputId").val();
	self.close();
}//useId 
</script>
</head>
<body>
	<div id="header">
	 <span>아이디 중복확인</span>
	</div>
	<div id="container">
	<div style="color :#F58D5B; font-size:15px; ">아이디는 영문(소문자),숫자로 4~16자 이내로 입력해 주세요</div>
	<div id="id">아이디<input type="text" id="inputId"/><input type="button"  class="btn btn-primary" value="중복확인" id="btnChk"/></div>
	<div>공백 또는 특수문자가 포함된 아이디는 사용할 수 없습니다.<br>
	 숫자로 시작하거나, 숫자로만 이루어진 아니디는 사용할 수 없습니다.</div>
	<div style="margin-left: 200px"><label id="chkId"></label><input type="button" value="사용" class="btn btn-success" id="btnUse"/></div>
	</div>
	<div id="footer">
	</div>
</body>
</html>