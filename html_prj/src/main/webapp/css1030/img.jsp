<%@page import="html_prj.StudentDTO"%>
<%@ page pageEncoding="utf-8" language="java"  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* ê³µíµìì±ì tag selector */
div { border : 1px solid #333; width:300px; height:300px}
/* ê°ë³ìì±ì ê·¸ì¸ selector */
#grid{ background: #ffffff url(../common/images/google.png)}
#x{ background: #ffffff url(../common/images/google.png) repeat-x;}
#y{ background: #ffffff url(../common/images/google.png) repeat-y;}
#norepeat{ background: #ffffff url(../common/images/google.png) no-repeat;}

tale{ border : 1px solid #333; border-spacing : opx}
th,td{border : 1px solid #333}
/* body{ background: #ffffff url(../common/images/google.png)} */ 
/* ì±ì  íì´ë¸ */
#numTitle { width : 80px ;}
#nameTitle { width : 120px ;}
#scoreTitle { width : 500px ;}

</style>
</head>
<body>

<%
StudentDTO[] sDTO = { 
				new StudentDTO(1,450,30,"민병조"),
				new StudentDTO(2,400,80,"김서우"),
				new StudentDTO(3,350,130,"임서우") 
					};
%>
<table>
<thead>
<tr>
	<th id="numTitle">ë²í¸</th><th id="nameTitle">ì´ë¦</th><th id="scoreTitle">ì±ì </th>
</tr>
</thead>
<tbody>
<% for( StudentDTO temp : sDTO){ %>
<tr>
  <td><%= temp.getNum() %></td><td><%= temp.getName() %>></td>
  <td><img src="../common/images/success.png" style="width:<%=temp.getsScore() %>px;
   height : 10px;" title="98ì "  ><img src="../common/images/fail.png" style="width:<%=temp.getfScore()%>px; height : 10px; " title="2ì "/></td>
</tr>
<%}//end for %>
</tbody>
</table>
</body>
</html>