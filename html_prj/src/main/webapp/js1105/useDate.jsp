<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.beans.SimpleBeanInfo"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload=function(){
		var date = new Date(); //접속자의 시간
		
		let output=	`${date.getFullYear()}년 ${date.getMonth()+1}월 ${date.getDate()}일`;
		
		output += ` ${date.getHours()}시 ${date.getMinutes()}분 ${date.getSeconds()}초`;
		//document.getElementById("dateOut").innerHTML = date;		
		document.getElementById("dateOut").innerHTML = output;		
	}
</script>
</head>
<body>
<div>
<%
	Date date = new Date();
	String output = new SimpleDateFormat("yyyy년MM월dd일").format(date);
%>
	<strong>서버의 시간</strong> : <%= new Date() %><br> <!-- 모든 접속자에데 동일한 시간 -->
	<strong>접속자의 시간</strong> : <span id="dateOut"></span><!-- 모든 접속자에게 동일한 시간x -->
	
</div>
</body>
</html>