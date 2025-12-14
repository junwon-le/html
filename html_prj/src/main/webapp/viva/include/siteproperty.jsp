<%@page import="java.net.ContentHandler"%>
<%@page import="kr.co.viva.fragment.SitepropertyVO"%>
<%@page import="kr.co.viva.fragment.SitepropertyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
SitepropertyVO spVO = SitepropertyDAO.spVO;

pageContext.setAttribute("CommonURL", spVO.getProtocol()+spVO.getDomain()+spVO.getContent()+spVO.getUri());

%>