<%@page import="kr.co.viva.inquiry.InquiryService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String num = request.getParameter("inquiryNum");
try{
	
int iquNum = Integer.parseInt(num);
String tempMemberNum =String.valueOf(session.getAttribute("num")) ;

InquiryService is = InquiryService.getInstance();

int memberNum = Integer.parseInt(tempMemberNum);

String str = "";

	boolean flag = is.deleteInquiry(iquNum, memberNum);
	str = flag?"http://localhost/html_prj/viva/inquiry/suce.jsp":"http://localhost/html_prj/viva/inquiry/failMsg.jsp";

	pageContext.setAttribute("str", str);
}catch(NumberFormatException nfe){

}
%>
<c:redirect url="${str} "/>