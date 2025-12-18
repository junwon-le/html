<%@page import="kr.co.viva.login.UserDTO"%>
<%@page import="kr.co.viva.login.LoginUserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
request.setCharacterEncoding("UTF-8");

LoginUserService lus = LoginUserService.getInstance();
String pass = request.getParameter("pass");
String id=(String)session.getAttribute("UserId");

UserDTO uDTO = new UserDTO();

uDTO = lus.searchUser(id, pass);

	String url="";
url= uDTO==null?"modifyInfo.jsp":"fail.jsp";

pageContext.setAttribute("url", url);
%>
<c:redirect url="${url}"/>