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
/* CSS Reset 및 기본 스타일 */

/* 메인 컨테이너 */
.payment-history-container {
	max-width: 1200px;
	margin: 0 auto;
	padding: 50px 20px;
}

/* 1. 제목 및 설명 */
.title-section {
	text-align: center;
	margin-bottom: 30px;
}

.title-section h1 {
	font-size: 28px;
	font-weight: bold;
	color: #1a1a1a;
	margin-bottom: 5px;
}

.title-section p {
	font-size: 14px;
	color: #777;
}

/* 2. 검색 필터 섹션 */
.search-filter-box {
	display : flex;
	margin : 0px auto;
	max-width : 800px;
	align-items : center;
	justify-content : center;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
	margin-bottom: 40px;
}

.filter-group {
	margin: 0px auto;
	max-width: 800px;
	display: flex;
	align-items: center;
	gap: 10px;
}

/* 기간 버튼 스타일 */
.period-button {
	padding: 8px 15px;
	border: 1px solid #ddd;
	background-color: #fff;
	color: #333;
	cursor: pointer;
	border-radius: 4px;
	font-size: 14px;
	transition: background-color 0.2s, border-color 0.2s;
}

.period-button:hover {
	background-color: #f0f0f0;
}

.period-button.active {
	border-color: #000;
	background-color: #000;
	color: #fff;
}

/* 날짜 입력 스타일 */
.date-input-group {
	display: flex;
	align-items: center;
	gap: 5px;
}

.date-input-group input[type="date"] {
	padding: 8px 10px;
	border: 1px solid #ddd;
	border-radius: 4px;
	font-size: 14px;
	width: 110px; /* 너비 조정 */
}
/* 달력 아이콘 표시를 위한 추가 스타일 (옵션) */
.date-input-group span {
	color: #777;
}

/* 검색/초기화 버튼 */
.action-button {
	padding: 8px 15px;
	border: none;
	cursor: pointer;
	border-radius: 4px;
	font-size: 14px;
	margin-left: 10px;
}

.search-button {
	background-color: #000;
	color: #fff;
}

.reset-button {
	background-color: #f0f0f0;
	color: #333;
	border: 1px solid #ddd;
}

/* 달력 아이콘 모양을 위한 대체 <div> */
.calendar-icon {
	border: 1px solid #ddd;
	padding: 8px;
	border-radius: 4px;
	cursor: pointer;
	background-color: #f8f8f8;
	line-height: 1; /* 아이콘 높이 맞추기 */
}

/* 3. 탭 메뉴 */
.tab-menu {
	display: flex;
	gap: 5px;
	margin-bottom: 20px;
}

.tab-button {
	padding: 10px 20px;
	border: 1px solid #ddd;
	background-color: #fff;
	color: #555;
	cursor: pointer;
	border-radius: 4px;
	font-size: 14px;
	transition: background-color 0.2s;
}

.tab-button.active {
	background-color: #000;
	color: #fff;
	border-color: #000;
}

/* 4. 내용 영역 */
.content-area {
	background-color: #fff;
	padding: 20px 0;
	border-top: 1px solid #ccc; /* 탭 아래 구분선 */
	height: auto;
}

.summary-count {
	font-size: 14px;
	font-weight: bold;
	color: #333;
	padding: 0 0 10px 0;
}

.no-data-message {
	text-align: center;
}

.no-data-message p {
	font-size: 16px;
	color: #777;
	margin-top: 20px;
}
/* 이미지 스타일링 */
.no-data-message img {
	width: 120px; /* 이미지 크기 조정 */
	height: auto;
	display: block;
	margin: 0 auto 15px;
}
</style>
<!-- /* 테이블 css */ -->
<style>
.table-container {
	max-width: 1000px;
	margin: 0 auto;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
	overflow: hidden; /* 테이블 경계선 깔끔하게 처리 */
}

/* 테이블 기본 스타일 */
.payment-table {
	width: 100%;
	border-collapse: collapse; /* 셀 경계선 겹치기 */
	font-size: 14px;
	color: #333;
}

/* 테이블 헤더 (<th>) 스타일 */
.payment-table th {
	padding: 15px 10px;
	background-color: #f5f5f7; /* 헤더 배경색 */
	border-bottom: 1px solid #ddd;
	border-right: 1px solid #eee; /* 세로 경계선 */
	font-weight: bold;
	text-align: center;
	color: #555;
	white-space: nowrap; /* 줄바꿈 방지 */
}
/* 마지막 헤더의 오른쪽 경계선 제거 */
.payment-table th:last-child {
	border-right: none;
}

/* 테이블 바디 셀 (<td>) 스타일 */
.payment-table td {
	padding: 18px 10px;
	border-bottom: 1px solid #eee;
	border-right: 1px solid #eee;
	text-align: center; /* 기본 중앙 정렬 */
}
/* 마지막 셀의 오른쪽 경계선 제거 */
.payment-table td:last-child {
	border-right: none;
}

/* 홀수 행 배경색 (선택 사항: 가독성 향상) */
.payment-table tbody tr:nth-child(odd) {
	background-color: #fff;
}
/* 짝수 행 배경색 (이미지에는 없지만, 가독성을 위해 추가) */
.payment-table tbody tr:nth-child(even) {
	background-color: #fcfcfc;
}

/* 테이블 행 호버 효과 (선택 사항) */
.payment-table tbody tr:hover {
	background-color: #f9f9f9;
}

/* -------------------- 특정 컬럼 스타일 -------------------- */

/* 결제일, 인원, 결제 금액 중앙 정렬 */
.payment-table .col-date, .payment-table .col-people, .payment-table .col-amount
	{
	text-align: center;
}

/* 결제명 뱃지 스타일 */
.product-badge {
	display: inline-block;
	padding: 5px 10px;
	background-color: #fff; /* 흰색 배경 */
	border: 1px solid #ddd;
	border-radius: 4px;
	font-size: 13px;
	font-weight: normal;
	color: #333;
	white-space: nowrap;
}

/* 예매 상태 뱃지 스타일 */
.status-badge {
	display: inline-block;
	padding: 3px 8px;
	border-radius: 12px;
	font-size: 13px;
	font-weight: bold;
}

/* 예매 완료 상태 스타일 */
.status-badge.complete {
	background-color: #e5f1ff; /* 매우 연한 파란색 배경 */
	color: #2a6ce4; /* 파란색 텍스트 */
}

/* 취소 완료 상태 스타일 */
.status-badge.canceled {
	background-color: #f5f5f7; /* 연한 회색 배경 */
	color: #777; /* 회색 텍스트 */
}
</style>
<!-- 모달 css -->
<style>
.payHistoryDiv {
	visibility: hidden;
}

.payHistoryDiv.open {
	visibility: visible;
}

/* 상세 정보 컨테이너 (모달 내용 영역을 가정) */
.modal-content-container {
	max-width: 1000px; /* 너비를 약간 넓게 조정 */
	margin: 20px auto;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	overflow: hidden;
	border: 1px solid #eee;
}

/* 1. 헤더 스타일 */
.modal-header {
	background: linear-gradient(to right, #FFe771, #FFFdf5);
	padding: 15px 20px;
	font-size: 18px;
	font-weight: bold;
	color: #333;
}

/* 섹션 제목 */
.section-title {
	font-size: 16px;
	font-weight: bold;
	color: #1a1a1a;
	padding: 20px 20px 10px;
}

/* -------------------- 2. 예약 내역 (테이블 섹션) -------------------- */
.reservation-table {
	width: 100%;
	border-collapse: collapse;
	font-size: 14px;
	color: #333;
	padding: 0 20px;
	box-sizing: border-box;
}

.reservation-table td {
	padding: 10px 0;
	border-bottom: 1px solid #eee;
}

.reservation-table .label-cell {
	width: 15%; /* 라벨 영역 너비 */
	color: #777;
	padding-left: 20px;
}

.reservation-table .value-cell {
	width: 35%; /* 값 영역 너비 */
	font-weight: 500;
}

/* 테이블 마지막 행 경계선 제거 */
.reservation-table tr:last-child td {
	border-bottom: none;
}

/* -------------------- 3. 결제 상세 내역 (아이콘/라벨 섹션) -------------------- */
.payment-detail-list {
	list-style: none;
	padding: 0 20px;
	margin: 0;
	border-top: 1px solid #ddd;
}

.payment-detail-item {
	display: flex;
	align-items: center;
	padding: 12px 0;
	border-bottom: 1px solid #eee;
}

.item-icon {
	font-size: 16px;
	color: #666;
	margin-right: 15px;
	width: 20px;
	text-align: center;
}

.item-label {
	flex-shrink: 0;
	width: 100px;
	font-size: 14px;
	color: #555;
	font-weight: bold;
}

.item-value {
	flex-grow: 1;
	text-align: left; /* 이미지처럼 왼쪽 정렬 */
	font-size: 14px;
	color: #222;
	font-weight: 500;
}

/* -------------------- 4. 푸터 및 버튼 -------------------- */
.modal-footer {
	padding: 15px 20px;
	border-top: 1px solid #eee;
	text-align: right;
}

.action-button {
	padding: 10px 20px;
	font-size: 14px;
	font-weight: bold;
	border: 1px solid;
	border-radius: 4px;
	cursor: pointer;
	margin-left: 10px;
}

/* 예약 취소 버튼 (주황색) */
.button-cancel {
	background-color: #ff8c42; /* 오렌지색 */
	color: #fff;
	border-color: #ff8c42;
}

/* 닫기 버튼 (회색) */
.button-close {
	background-color: #ccc;
	color: #333;
	border-color: #ccc;
}
</style>
<script type="text/javascript">
	$(function() {
		$(".payment-table tbody tr ").click(function() {
<%//예약 상세 내역 가져오기
//searchReserveDetail(int ) :MyReserveDetailDTO%>
	$(".payHistoryDiv").addClass("open");
						});

	})

	function closeDiv() {
		$(".payHistoryDiv").removeClass("open");
	}
	function clickbutton() {
		$(".tab-button").addClass("active");

	}
	function cancleReserve() {
		alert("예약 취소");
<%//예약 취소
			//cancleReserve(int, int) : int%>
	}
</script>
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
		<div class="container" style="height: auto; position: relative;">
			<jsp:include page="page_navi.jsp"></jsp:include>
			<div class="payment-history-container">

				<div class="title-section">
					<h1>예매 내역</h1>
				</div>

				<div class="search-filter-box">
					<div class="input-container" style="width: 300px; ">
						<input type="password" id="passwordConfirm" class="input-text" style="border: 1px solid #ADB5BD; border-radius: 5px"
							placeholder="행사명을 입력하세요">
					</div>
					<button class="action-button search-button" style="padding:7px 20px;" >검색</button>

				</div>

				<div class="tab-menu">
					<button class="tab-button active">공연 예약 내역</button>
				</div>

				<div class="content-area">
					<div class="summary-count">총 0건</div>
					<div class="table-container">
						<table class="payment-table">
							<thead>
								<tr>
									<th style="width: 5%;">NO.</th>
									<th style="width: 15%;">예약일</th>
									<th style="width: 30%;">행사명</th>
									<th style="width: 10%;">행사 일시</th>
									<th style="width: 20%;">인원수</th>
									<th style="width: 20%;">예약상태</th>
								</tr>
							</thead>
							<tbody>
								<%
								//예매 상태 받아서 ui처리하는 코드
								int dbPayState = 1;
								String payState = null;
								for (int i = 0; i < 5; i++) {
									payState = "canceled";
									if (dbPayState % 2 == 1) {
										payState = "complete";
									} //end if
									dbPayState++;
								%>
								<tr>
									<td class="col-no"><%=i%></td>
									<td class="col-date"><%="pay_date"%></td>
									<td class="col-product"><span class="product-badge"><%="type"%></span>
									</td>
									<td class="col-people"><%="personCnt"%></td>
									<td class="col-amount"><%="price"%></td>
									<td class="col-status"><span
										class="status-badge <%=payState%>"><%="payState"%></span></td>
								</tr>
								<%
								} //end for
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
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
			<!-- 모달 구현 -->
			<div class="payHistoryDiv"
				style="width: 100%; height: 100%; position: absolute; top: 0px; left: 0px;">
				<div
					style="width: 100%; height: 100%; background-color: #000; z-index: 2; padding-bottom: 100px; opacity: 0.3; position: absolute; top: 0px; left: 0px;"></div>

				<div class="modal-container "
					style="position: relative; z-index: 3; max-width: 800px; margin: 200px auto;">
					<div class="modal-content-container">

						<div class="modal-header">예약 상세</div>

						<div class="reservation-section">
							<h2 class="section-title">예약 내역</h2>
							<table class="reservation-table">
								<tbody>
									<tr>
										<td class="label-cell">행사명</td>
										<td class="value-cell"><%="MyReserveDetailDTO.getXxx"%>
										</td>
										<td class="label-cell">예약자</td>
										<td class="value-cell"><%="MyReserveDetailDTO.getXxx"%></td>
									</tr>
									<tr>
										<td class="label-cell">행사일시</td>
										<td class="value-cell"><%="연산(2025-09-11 12:00~13:00)"%></td>
										<td class="label-cell">장소</td>
										<td class="value-cell"><%="MyReserveDetailDTO.getXxx"%></td>
									</tr>
									<tr>
										<td class="label-cell">예약 일시</td>
										<td class="value-cell"><%="MyReserveDetailDTO.getXxx"%></td>
										<td class="label-cell">예약 번호</td>
										<td class="value-cell"><%="MyReserveDetailDTO.getXxx"%></td>
									</tr>
									<tr>
										<td class="label-cell">인원수</td>
										<td class="value-cell"><%="MyReserveDetailDTO.getXxx"%></td>
										<td class="label-cell">상태</td>
										<td class="value-cell"><%="MyReserveDetailDTO.getXxx"%></td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="payment-detail-section">
							<h2 class="section-title">결제 상세 내역</h2>
							<ul class="payment-detail-list">
								<li class="payment-detail-item"><span class="item-icon">📄</span>
									<span class="item-label">상품명</span> <span class="item-value">
										<%="MyReserveDetailDTO.getXxx"%>
								</span></li>
								<li class="payment-detail-item"><span class="item-icon">⏱️</span>
									<span class="item-label">결제 일시</span> <span class="item-value">
										<%="MyReserveDetailDTO.getXxx"%>
								</span></li>
								<li class="payment-detail-item"><span class="item-icon">💳</span>
									<span class="item-label">결제 수단</span> <span class="item-value">
										<%="MyReserveDetailDTO.getXxx"%>
								</span></li>
								<li class="payment-detail-item"><span class="item-icon">🆔</span>
									<span class="item-label">승인번호</span> <span class="item-value"><%="MyReserveDetailDTO.getXxx"%></span>
								</li>
								<li class="payment-detail-item"><span class="item-icon">🏢</span>
									<span class="item-label">결제 기관</span> <span class="item-value"><%="MyReserveDetailDTO.getXxx"%></span>
								</li>
								<li class="payment-detail-item"><span class="item-icon">⚙️</span>
									<span class="item-label">가맹점</span> <span class="item-value">(주)VIVAPARK</span>
								</li>
								<li class="payment-detail-item"><span class="item-icon">💰</span>
									<span class="item-label">결제 금액</span> <span class="item-value"><%="MyReserveDetailDTO.getXxx"%></span>
								</li>
								<li class="payment-detail-item"><span class="item-icon">🗑️</span>
									<span class="item-label">할부개월</span> <span class="item-value"><%="MyReserveDetailDTO.getXxx"%></span>
								</li>
							</ul>
						</div>

						<div class="modal-footer">
							<button class="action-button button-cancel"
								onclick="cancleReserve() ">예약 취소</button>
							<button class="action-button button-close" onclick="closeDiv()">닫기</button>
						</div>

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
