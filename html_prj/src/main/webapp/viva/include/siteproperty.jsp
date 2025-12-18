<%@page import="kr.co.viva.fragment.SitepropertyDAO"%>
<%@page import="kr.co.viva.fragment.SitepropertyVO"%>
<%@ page language="java" pageEncoding="UTF-8"%>

<%
SitepropertyVO spVO = SitepropertyDAO.spVO;

application.setAttribute("CommonURL", spVO.getProtocol()+spVO.getDomain()+spVO.getContent()+spVO.getUri());

%>