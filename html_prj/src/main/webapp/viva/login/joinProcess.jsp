<%@page import="java.util.Date"%>
<%@page import="kr.co.viva.login.JoinDTO"%>
<%@page import="kr.co.viva.login.JoinService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/siteproperty.jsp" %>

<%
	
JoinDTO jDTO = new JoinDTO();
String id= request.getParameter("user_id");
String pass= request.getParameter("user_pw");
String name= request.getParameter("user_name");
String birth= request.getParameter("birth");
String tel= request.getParameter("phone1")+request.getParameter("phone2")+request.getParameter("phone3");
String email= request.getParameter("email1")+"@"+request.getParameter("email2");
String zipcodeStr= request.getParameter("zipcode");
int zipCode=0;
try{
zipCode= Integer.parseInt(zipcodeStr);
}catch(NumberFormatException nfe){
	
}

String addr= request.getParameter("addr");
String addrDetail= request.getParameter("addrDetail");

jDTO.setId(id);
jDTO.setPass(pass);
jDTO.setName(name);
jDTO.setBirth(birth);
jDTO.setTel(tel);
jDTO.setEmail(email);
jDTO.setZipCode(zipCode);
jDTO.setAddr(addr);
jDTO.setAddrDetail(addrDetail);





JoinService js = JoinService.getInstance();

boolean flag =false;
flag = js.addMember(jDTO);

String url = flag?"http://localhost/html_prj/viva/login/join_Welcome_css.jsp":"";

pageContext.setAttribute("url", url);
%>
<c:redirect url="${url}"/>