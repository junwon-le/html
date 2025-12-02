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

.accordion-item {
	border: none;
}

.accordion-header {
	background-color: #fff;
	color: #333;
	cursor: pointer;
	padding: 15px;
	width: 100%;
	text-align: left;
	border: none;
	outline: none;
	font-size: 16px;
	font-weight: bold;
	display: flex;
	justify-content: space-between;
	align-items: center;
	border-top: 1px solid #C8C8C8;
}
</style>

<!-- 검색창 -->
    <link rel="stylesheet" href="search_bar.css"> <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style type="text/css">
    

.search-container {
    display: flex;
    align-items: center;
    width: 400px; /* 검색창 전체 너비 */
    border: 1px solid #ddd;
    border-radius: 8px; /* 둥근 모서리 */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 은은한 그림자 */
    background-color: #fff;
    padding: 5px; /* 내부 여백 */
}

.search-input {
    flex-grow: 1; /* 남은 공간을 모두 차지하도록 설정 */
    border: none;
    outline: none; /* 포커스 시 기본 아웃라인 제거 */
    padding: 10px 15px; /* 텍스트 입력 필드 내부 여백 */
    font-size: 16px;
    color: #333;
}

.search-input::placeholder {
    color: #999; /* 플레이스홀더 텍스트 색상 */
}

.search-button {
    background-color: transparent; /* 버튼 배경 투명 */
    border: none;
    cursor: pointer;
    padding: 10px 15px; /* 버튼 내부 여백 */
    font-size: 18px; /* 아이콘 크기 */
    color: #555; /* 아이콘 색상 */
    display: flex; /* 아이콘 중앙 정렬을 위해 flex 사용 */
    align-items: center;
    justify-content: center;
}

.search-button:hover {
    color: #333; /* 호버 시 아이콘 색상 변경 */
}
.accordion-button:focus {
  box-shadow: none !important; 
  background-color: transparent !important;
}

/* 2. 활성화(열린) 상태 배경색/그림자 재정의 (처음 로드 시 및 항목이 열렸을 때) */
.accordion-button:not(.collapsed) {
    /* 배경색을 흰색으로 강제 설정 */
    background-color: #fff !important; 
    
    /* 활성화 상태에서도 파란색 그림자 제거 */
    box-shadow: none !important; 
    
    /* 활성화 상태의 텍스트 색상을 원하는 색(예: 기본 검정색)으로 설정 */
    color: #333 !important; 
}

/* 3. 활성화된 버튼의 아이콘(화살표) 필터 효과 제거 */
/* 부트스트랩은 활성화될 때 아이콘에 filter를 적용해 색상을 변경하므로 이것도 제거 */
.accordion-button:focus::after,
.accordion-button:not(.collapsed)::after {
  filter: none !important; 
}

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
		<div class="container" >
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
						FAQ</button>
					<ul class="dropdown-menu dropdown-menu-end"
						style="width: 55px !important; min-width: 55px !important;">
						<li><a href="http://localhost/html_prj/viva/Notice.jsp"
							style="margin: 5px 10px">공지</a></li>
						<li><a href="http://localhost/html_prj/viva/FAQ.jsp"
							style="margin: 5px 10px">FAQ</a></li>
						<li><a href="http://localhost/html_prj/viva/Inquiry.jsp"
							style="margin: 5px 10px">문의</a></li>
					</ul>
				</div>
			</div>
			<h1 style="text-align: center; margin-bottom: 30px;">FAQ</h1>

			<div
				style="max-width: 1000px; display: flex; align-items: center; justify-content: center; border: 1px solid #fff; border-radius: 10px; box-shadow: 10px 20px 10px #F5F5F5; padding-bottom: 30px; margin: 60px auto;">
				<div class="search-container">
					<input type="text" class="search-input" placeholder="키워드를 입력해 주세요.">
					<button type="submit" class="search-button">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
			<!-- accordion -->
			<div class="accordion" id="accordionExample"
				style="max-width: 1000px; margin: 0px auto;">
				<!--  -->
				<%
				for (int i = 0; i < 10; i++) {
				%>
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#<%=i%>"
							aria-expanded="<%=i == 0 ? "true" : "false"%>"
							aria-controls="<%=i%>">[이용]DB에 해당하는 FAQ_title</button>
					</h2>
					<div id="<%=i%>"
						class="<%=i == 0 ? "accordion-collapse collapse show" : "accordion-collapse collapse"%>"
						data-bs-parent="#accordionExample">
						<div class="accordion-body">DB에 해당하는 FAQ_msg</div>
					</div>
				</div>
				<%
				}
				%>
			</div>
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
		<!-- container 끝 -->

		<div id="footer">
			<jsp:include page="include/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
