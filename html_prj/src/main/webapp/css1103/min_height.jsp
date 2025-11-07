<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon"	href="http://192.168.10.73/html_prj/common/images/favicon.ico">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type = "text/css" href="http://192.168.10.73/html_prj/common/css/mian_ver251031.css"/>
<style type="text/css">
div{border : 1px solid #333 }
#wrap{ margin : 0px auto ; width : 1200px; min-height : 300px;
      /* background-color: #ff0000 */ }
#header{ height : 98px;  /* background-color: #4179C2 */ }
#container{min-height : 98px;  /* background-color: #71b75e ; */ }
#footer{ height : 98px;  /* background-color: #fef6e1 ; */ }


</style>
</head>
<body>
<div id = "wrap" >
	<div id="header">header 1200(w)x150(h) 
				사이트로고, 주력 서비스, navigation bar
	</div>
	<div id="container">
	<div>
	<%
	//특정 영역 데이터가 가변적이라면 css에서 height: 을 사용하면 가변적인 크기에 동적으로 대응 되지 않는다. ( 전체 크기는 고정 )
	int num = new Random().nextInt(4);
	for(int i = 0; i<num; i++) { 
		%>
	<img src = "../day1024/images/test.png" height = "80px"/><br>
	<%	}//end for	%>
	<a href="min_height.jsp">재 요청</a>
	</div>
	</div>
	<div id="footer">footer 1200(w)x150(h)</div>
</div>

</body>
</html>