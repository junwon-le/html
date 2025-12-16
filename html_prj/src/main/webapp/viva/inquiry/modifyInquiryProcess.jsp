<%@page import="kr.co.viva.inquiry.InquiryService"%>
<%@page import="kr.co.viva.inquiry.InquiryDTO"%>
<%@page import="kr.co.viva.inquiry.InquiryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
request.setCharacterEncoding("UTF-8");

InquiryService is = InquiryService.getInstance();
InquiryDTO iDTO = new InquiryDTO();
iDTO.setTitle(request.getParameter("title"));
iDTO.setMsg(request.getParameter("msg"));

int inquiryNum = Integer.parseInt(request.getParameter("inquiryNum"));
iDTO.setInquiryNum(inquiryNum);

String memberNumStr = String.valueOf(session.getAttribute("num"));
int memberNum = Integer.parseInt(memberNumStr);
iDTO.setMemberNum(memberNum);

boolean flag = is.modifyInquiry(iDTO);

pageContext.setAttribute("iDTO", iDTO);

%>
<c:redirect url="http://localhost/html_prj/viva/inquiry/successMsg.jsp"/>