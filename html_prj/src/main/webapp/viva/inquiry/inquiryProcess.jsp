<%@page import="kr.co.viva.inquiry.InquiryDTO"%>
<%@page import="kr.co.viva.inquiry.InquiryService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");

session.setAttribute("id", "test");

InquiryService is = InquiryService.getInstance();
InquiryDTO iDTO = new InquiryDTO();
String id =String.valueOf(session.getAttribute("id"));
int num = is.searchMemberNum(id);
String title = request.getParameter("title");
String msg = request.getParameter("msg");

iDTO.setTitle(title);
iDTO.setMemberNum(num);
iDTO.setMsg(msg);
if(is.addInquiry(iDTO)){
	out.print("성공");
}else{
	out.print("실패");
};


%>