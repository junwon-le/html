<%@page import="kr.co.viva.operate.OperateServiceDTO"%>
<%@page import="kr.co.viva.operate.OperateService"%>
<%@page import="java.util.Formatter"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
	
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../include/siteproperty.jsp" %>


<%
	OperateService os = OperateService.getInstance();
	String today = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
	
	
	List<OperateServiceDTO> list = os.searchAtrraction(today); 

	

	pageContext.setAttribute("OperateData", list);



%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VIVA PARK</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
	crossorigin="anonymous"></script>


<!-- jQuery CDN 시작 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

 <link rel="stylesheet" type="text/css"
	href="http://localhost/second_prj/guide/holiday1.css" />

<jsp:include page="../include/vivatemplet_css.jsp"></jsp:include>






<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<jsp:include page="../include/scrollBtn_css_js.jsp"/>
<jsp:include page="../include/user_guide_css_js.jsp"/>



</head>
<body>
	<div class="wrap">
		<!-- 헤더 -->
		<div id="closetop" class="close"></div>
		<div id="header">
			<jsp:include page="../include/header.jsp"></jsp:include>
		</div>
		<!-- 햄버거 메뉴-->
		<jsp:include page="../include/hamberger.jsp"></jsp:include>

		<!-- 메인 공간(비어있는 흰 배경 영역) -->
		<div class="container">
			<div class="page_navi"
				style="margin-bottom: 20px; margin-left: 30px; padding-top: 40px; font-family: sans-serif; ">
				<!-- <img src="images/house.png" /> -->
				<a href=""><svg width="13" height="13" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M2.68299 8.40241C2.24896 8.78218 2 9.33084 2 9.90756V16C2 17.1046 2.89543 18 4 18H16C17.1046 18 18 17.1046 18 16V9.90756C18 9.33084 17.751 8.78218 17.317 8.40241L11.9755 3.7286C10.8444 2.73891 9.15557 2.7389 8.02449 3.7286L2.68299 8.40241ZM10 12C8.89543 12 8 12.8955 8 14V18H12V14C12 12.8955 11.1046 12 10 12Z"
				fill="#495057"></path></svg></a>
				<span style="font-size: 11px; color:#adb5bd" >&nbsp; |</span>																	
												
												
													
				
				
				<div class="btn-group">
					<button type="button" class="btn btn-secondary dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false"
						data-bs-offset="20, 0"
						style="background-color: #fff; color: #333; border: none; padding: 0px;  margin-left: 10px; margin-top: 1px; font-size: 16px; color:#adb5bd; font-family: sans-serif;">
						이용정보</button>
					<jsp:include page="../include/page_navi.jsp"></jsp:include>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-secondary dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false"
						data-bs-offset="15, 0"
						style="background-color: #fff; color: #333; border: none; padding: 0px; margin-left: 10px; margin-top: 1px;  font-size: 16px; font-weight: bold; font-family: sans-serif;">
						운영/운휴</button>
					<ul class="dropdown-menu dropdown-menu-end"
						style="width: 100px !important; min-width: 60px !important; text-align: center; ">
						<li><a href="http://localhost/html_prj/practice/Notice.jsp"
							style="margin: 5px 10px">오시는길</a></li>
						<li><a href="http://localhost/html_prj/practice/FAQ.jsp"
							style="margin: 5px 10px">운영/운휴</a></li>
						<li><a href="http://localhost/html_prj/practice/Inquiry.jsp"
							style="margin: 5px 10px">이용안내</a></li>
					</ul>
				</div>
			</div>



			<div
				style="font-size: 50px; font-family: NotoSansKR; font-weight: bold; text-align: center; padding: 5px; height: 150px;">
				운영/운휴
			</div>


			<div id="inner2">
				<div id="innerSwiper" style="border-radius: 30px;">


					<div class="swiper">
						<div class="swiper-wrapper"></div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>

					<div></div>

					<div id="timeInfo">
						<svg width="25" height="24" viewBox="0 0 25 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12.5 21C17.4706 21 21.5 16.9706 21.5 12C21.5 7.02944 17.4706 3 12.5 3C7.52944 3 3.5 7.02944 3.5 12C3.5 16.9706 7.52944 21 12.5 21Z" stroke="#111111" stroke-width="2.05714" stroke-linecap="round" stroke-linejoin="round"></path><path d="M12.5 8V12.5L15.5 14" stroke="var(--iconColor, #FF6124)" stroke-width="2.05714" stroke-linecap="round" stroke-linejoin="round"></path></svg>	
												
					
						<span style="font-weight: bold;">&nbsp;운영시간&nbsp;</span> <span style="color:#dee2e6;">|&nbsp;</span> <span style="font-size: 17px; margin-bottom: 1px;">10:00 ~
							22:00</span>
					</div>

				</div>
			</div>


			<div style="height:auto">
						
			<div class="holiday_content" style="width:100%; margin: 0 auto;">
			<div class="holiday_page">
				<div class="attraction_closure">
					<span class="attraction_closure_text">매표 및 입장마감은
						영업종료 <b class="point">1시간</b> 전까지 입니다
					</span>
				</div>
				<ul class="attraction__list">
				
				
				 <c:forEach var="osDTO" items="${OperateData}">
					<li class="attraction__item">
							<div class="cardItem cardItem--attraction">
							<div class="cardItem__link" id="${osDTO.attracNum}" style="cursor: pointer;">
							<input type="hidden" value="${osDTO.attracNum}" class="attractionNum"/>
								<div class="cardItem__img">
									<img
										src="${CommonURL}/attraction/images/${osDTO.attracPreview}"
										alt="">
								</div>
								<div class="cardItem__cont">
									<span class="cardItem__title"><c:out value="${osDTO.attracName}"/></span>
								</div>

								<span class="cardItem__status red"></span>
							
							
							
							</div>
						</div>
						</li>
				 </c:forEach>
				</ul>

			</div>

		</div>		

	</div>
			
			
			
			<div style="background:#f2f2f2; color:#555; padding:20px; margin-top:20px; font-size:14px; line-height:1.6;">
			• 기상상태에 따라 (0°C 이하 또는 30°C 이상, 7~14m/s 이상의 풍속, 0.2m 이상의 비가 내리는 경우) 비바파크 일부 어트랙션은 운행이 중단될 수 있습니다.<br>
			• 기상상태와 별개로 현장 상황에 따라 예고 없이 운휴하거나 운전 점검을 할 수 있습니다.
			</div>
			

			<jsp:include page="../include/scrollBtn_ui.jsp"/><!--(위로올라가는 스크롤 버튼) -->

		</div>


	<!-- container 끝 -->


	<div id="footer">
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
	</div>
</body>
</html>
