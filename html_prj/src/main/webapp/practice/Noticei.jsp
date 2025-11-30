<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VIVA PARK</title>
<!-- bootstrap cdn -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
	crossorigin="anonymous"></script>
<!-- 2024 경주월드 -->
<script src="https://www.gjw.co.kr/inc/gjw_2024/js/14jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://www.gjw.co.kr/inc/gjw_2024/bs/bootstrap.min.css?ver=1763706557">
<link rel="stylesheet" type="text/css"
	href="https://www.gjw.co.kr/inc/gjw_2024/bs/bootstrap.min.js?ver=1763706557">
<link rel="stylesheet"
	href="https://www.gjw.co.kr/css/gjw_2024/reset.css?ver=1763706557">
<link rel="stylesheet" type="text/css"
	href="https://www.gjw.co.kr/css/gjw_2024/sub.css?ver=1763706557">
<!-- jQuery CDN 시작 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<jsp:include page="include/vivatemplet_css.jsp"></jsp:include>
<style>


@media screen and ( max-width : 1200px) {
	.page_navi {
		display: none;
	}
}
</style>
</head>
<body>
	<div class="wrap">
		<!-- 헤더 -->
		<div id="closetop" class="close"></div>
		<div id="header">
			<jsp:include page="include/header.jsp"></jsp:include>
		</div>
		<!-- 햄버거 메뉴-->
		<jsp:include page="include/hamberger.jsp"></jsp:include>

		<!-- 메인 공간(비어있는 흰 배경 영역) -->
		<div class="container">
			<div class="page_navi"
				style="margin-bottom: 20px; margin-left: 100px; margin-top: 40px;">
				<img src="images/house.png" />
				<div class="btn-group">
					<button type="button" class="btn btn-secondary dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false"
						data-bs-offset="20, 0"
						style="background-color: #fff; color: #333; border: none; padding: 0px; margin-left: 10px; font-size: 13px;">
						소통 서비스</button>
					<jsp:include page="page_navi.jsp"></jsp:include>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-secondary dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false"
						data-bs-offset="15, 0"
						style="background-color: #fff; color: #333; border: none; padding: 0px; margin-left: 10px; font-size: 13px;">
						공지</button>
					<ul class="dropdown-menu dropdown-menu-end"
						style="width: 55px !important; min-width: 55px !important;">
						<li><a href="http://localhost/html_prj/practice/Noticei.jsp"
							style="margin: 5px 10px">공지</a></li>
						<li><a href="http://localhost/html_prj/practice/FAQi.jsp"
							style="margin: 5px 10px">FAQ</a></li>
						<li><a href="http://localhost/html_prj/practice/Inquiryi.jsp"
							style="margin: 5px 10px">문의</a></li>
					</ul>
				</div>
			</div>
			<div class="WrapWidth" style="z-index: 0; height: 100%">
				<div class="subWrap" style="z-index: 0">
					<div id="subCon" style="z-index: 0;">
						<div>

							<h1 style="text-align: center; margin-bottom: 30px;">공지사항</h1>
						</div>
						<!-- carousel -->
						<div id="carouselExampleCaptions" class="carousel slide"
							style="max-width: 1300px; margin: 0px auto;">
							<div class="carousel-indicators">
								<button type="button" data-bs-target="#carouselExampleCaptions"
									data-bs-slide-to="0" class="active" aria-current="true"
									aria-label="Slide 1"></button>
								<button type="button" data-bs-target="#carouselExampleCaptions"
									data-bs-slide-to="1" aria-label="Slide 2"></button>
								<button type="button" data-bs-target="#carouselExampleCaptions"
									data-bs-slide-to="2" aria-label="Slide 3"></button>
							</div>
							<div class="carousel-inner"
								style="border-radius: 20px; margin: 100px; width: auto;">
								<div class="carousel-item active">
									<img src="images/carusal.png" class="d-block w-100" alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>First slide label</h5>
										<p>Some representative placeholder content for the first
											slide.</p>
									</div>
								</div>
								<div class="carousel-item">
									<img src="images/carusal2.png" class="d-block w-100" alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Second slide label</h5>
										<p>Some representative placeholder content for the second
											slide.</p>
									</div>
								</div>
								<div class="carousel-item">
									<img src="images/carusal3.png" class="d-block w-100" alt="...">
									<div class="carousel-caption d-none d-md-block">
										<h5>Third slide label</h5>
										<p>Some representative placeholder content for the third
											slide.</p>
									</div>
								</div>
							</div>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
						<!-- carousel -->
						<main class="conm0303">
							<div class="cont_box">
								<div class="searchbox"
									style="display: flex; align-items: center; justify-content: center;">
									<div class="btn-group">
										<button type="button"
											class="btn btn-secondary dropdown-toggle"
											data-bs-toggle="dropdown" aria-expanded="false"
											style="border-radius: 10px; border: 1px solid #333; background-color: #fff; color: #333; padding: 8px; margin-left: 10px; margin-bottom: 3px; margin-right: 20px">
											전체</button>
										<ul class="dropdown-menu dropdown-menu-end">
											<li><button class="dropdown-item" type="button">이용</button></li>
											<li><button class="dropdown-item" type="button">공지</button></li>
											<li><button class="dropdown-item" type="button">이벤트</button></li>
										</ul>
									</div>
									<form method="GET" name="search_frm" id="search_frm"
										action="/Contents/contents.php?cmsNo=DD0100">
										<input type='hidden' name='cmsNo' id='cmsNo' value='DD0100'>
										<input type='hidden' name='bgrp' id='bgrp' value=''>

										<div class="form">
											<input type="text" placeholder="검색하기" class="formtxt"
												name="stl" id="stl" placeholder="" value="">
											<button type="submit"></button>
										</div>
									</form>

								</div>
								<div style="max-width: 1300px; margin: 0px auto;">

									<ul class="list" style="z-index: 0;">
										<%
										for (int i = 0; i < 5; i++) {
										%>
										<li onclick="location.href='#void'" style="cursor: pointer"><span
											class="sort ">공지</span>
											<div>
												<span class="title"><a href='#void'>DB에
														notic_Title</a></span> <span class="date">iunput_date</span>
											</div></li>
										<%
										}
										%>

									</ul>
								</div>
								<br />
								<!-- pagenation -->
								<div id="BoardListPager">
									<div>
										<ul class="pagination mt-2 mb-2 justify-content-center">
											<div class="page-item">
												<a class="page-link" href="#">&lt;&lt;</a>
											</div>
											<div class="page-item">
												<a class="page-link" href="#">&lt;</a>
											</div>
											<div class="page-item active">
												<a class="page-link" data-pagenumber="1" href="#">1</a>
											</div>
											<div class="page-item">
												<a class="page-link" href="#">&gt;</a>
											</div>
											<div class="page-item">
												<a class="page-link" href="?cmsNo=DD0100&bgrp&page=1">&gt;&gt;</a>
											</div>
										</ul>
									</div>
								</div>
							</div>
						</main>
					</div>
				</div>
			</div>


		</div>
		<!-- container 끝 -->

		<div id="footer">
			<jsp:include page="include/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
