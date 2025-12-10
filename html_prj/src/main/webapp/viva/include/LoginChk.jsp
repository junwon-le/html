<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${sessionScope.userId == null }">
<c:redirect url="http://localhost/html_prj/viva/tempLogin.jsp"/>
</c:if>
