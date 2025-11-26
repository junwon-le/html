<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VIVA PARK</title>

<link rel="stylesheet" type="text/css"
	href="http://192.168.10.73/html_prj/practice/vivatemplet.css" />
<!-- 2024 경주월드 -->
<link rel="stylesheet"
	href="https://www.gjw.co.kr/css/gjw_2024/reset.css?ver=1763706557">
<link rel="stylesheet" type="text/css"
	href="https://www.gjw.co.kr/css/gjw_2024/sub.css?ver=1763706557">
<!-- 제목 inputbox -->
<style>
.input-container {
	/* 부모 컨테이너 역할 */
	width: 100%;
	max-width: 1000px; /* 입력 필드의 최대 너비 설정 */
	margin: 30px auto; /* 중앙 정렬 */
}

.input-container input {
	/* 실제 입력 필드 스타일 */
	width: 100%;
	height: 50px; /* 높이 고정 (padding에 따라 조절 가능) */
	padding: 10px 25px; /* 내부 여백 */
	font-size: 1.1em; /* 폰트 크기 */
	/* 모양 구현 */
	border: 1px solid #ddd; /* 옅은 테두리 */
	border-radius: 5px; /* 둥근 모서리 */
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05); /* 은은한 그림자 (선택 사항) */
	background-color: #fff;
	/* 포커스 시 테두리 스타일 변경 */
	transition: border-color 0.3s; /* 부드러운 전환 효과 */
	outline: none; /* 기본 포커스 테두리 제거 */
}

.input-container input:focus {
	border-color: #6a95ff; /* 포커스 시 파란색 테두리 */
}

/* 이미지에 보이는 "제목" 텍스트 스타일 */
.input-container input::placeholder {
	color: #888;
	font-size: 0.9em;
}
</style>

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
<!-- summernote 가져오기 -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote.min.js"></script>
<script>
	$(document).ready(
			function() {
				$('#summernote')
						.summernote(
								{
									placeholder : 'write here...',
									tabsize : 2,
									height : 500,
									toolbar : [
											[
													'font',
													[ 'bold', 'underline',
															'clear' ] ],
											[ 'insert', [ 'picture' ] ] ]

								});
			});
</script>

<script type="text/javascript">
	$(function() {

		$("#mainMenu>li").mouseover(function() {
			$(".opensubMenu").slideDown(200);
			$("#subBar").slideDown(200);
			$(".subItems").slideDown(200);
		});

		$(".container").mouseover(function() {

			$(".opensubMenu").slideUp(200);
			$("#subBar").slideUp(200);
			$(".subItems").slideUp(200);
		});
		$(".header-btns").mouseover(function() {

			$(".subItems").slideUp(200);
			$(".opensubMenu").slideUp(200);
			$("#subBar").slideUp(200);
		});
		$(".close").mouseover(function() {

			$(".subItems").slideUp(200);
			$(".opensubMenu").slideUp(200);
			$("#subBar").slideUp(200);
		});

		$('.hamburger-toggle').on('click', function() {
			// 햄버거 버튼 클릭 시 메뉴 목록에 'is-open' 클래스를 토글합니다.
			$('.hamburger-list').toggleClass('is-open');
			$('.container').toggleClass('isClose');
			// 아이콘 모양을 바꾸려면 버튼에도 클래스를 토글할 수 있습니다.
			$(this).toggleClass('active');

		});
	});
</script>
<!--약관 구현 -->
<style>
/* ... (이전 CSS 코드는 유지) ... */

/* 상세 내용 컨테이너 (기본적으로 숨김) */
.agreement-detail {
	/* 기본적으로 숨기기 */
	max-height: 0;
	overflow: hidden;
	transition: max-height 0.3s ease-out; /* 부드러운 애니메이션 효과 */
}

/* 상세 내용이 보일 때 */
.agreement-detail.is-open {
	/* 실제 내용 높이에 맞춰 적절히 크게 설정 */
	max-height: 300px;
	transition: max-height 0.3s ease-in;
}

/* 상세 내용 박스 스타일 */
.detail-box {
	background-color: #f7f7f7;
	border: 1px solid #eee;
	padding: 15px;
	margin: 10px 0;
	border-radius: 5px;
}

.detail-box h4 {
	margin-top: 0;
	font-size: 1em;
	color: #333;
	border-bottom: 1px solid #ddd;
	padding-bottom: 5px;
	margin-bottom: 10px;
}

.detail-box p {
	margin: 3px 0;
	font-size: 0.95em;
	color: #555;
}

/* 화살표 아이콘 스타일 */
.detail-arrow {
	font-size: 1.2em;
	color: #aaa;
	margin-left: 10px;
	cursor: pointer;
	/* 화살표 회전을 위한 전환 효과 */
	transition: transform 0.3s;
}

/* 화살표가 아래로 돌아가도록 설정 (내용이 열렸을 때) */
.detail-arrow.rotated {
	transform: rotate(90deg);
}

/* 항목 전체를 클릭했을 때 커서 변경 */
.agreement-item {
	cursor: pointer;
}
</style>
<script>
	$(document).ready(function() {
		// 1. 항목 전체를 클릭하면 상세 내용 토글
		$("#agreementItem1").click(function(e) {
			// 체크박스 클릭 이벤트는 제외하고 상세 내용 토글
			if (!$(e.target).is('input[type="checkbox"]')) {
				// 상세 내용 div와 화살표를 선택
				var $detail = $("#detailContent1");
				var $arrow = $(this).find('.detail-arrow');

				// 내용 토글
				$detail.toggleClass('is-open');
				// 화살표 회전 토글
				$arrow.toggleClass('rotated');
			}
		});

		// 2. 화살표 버튼만 클릭해도 상세 내용 토글 (선택 사항)
		$(".toggle-btn").click(function(e) {
			e.stopPropagation(); // 중복 이벤트 방지
			var $item = $(this).closest('.agreement-item');
			var itemId = $item.attr('id');

			var $detail = $("#" + itemId.replace("Item", "Content"));
			var $arrow = $(this);

			// 내용 토글
			$detail.toggleClass('is-open');
			// 화살표 회전 토글
			$arrow.toggleClass('rotated');
		});
	});
</script>

<!-- UI 기능 -->
<script type="text/javascript">
	$(function() {
		$("#submitBtn").click(function() {
			alert("제출 버튼 눌림");
		});
	});
</script>
<style>
.subWrap {
	padding: 0;
}

#inquiryNotice {
	width: 800px;
	margin: 0px auto;
	display: flex;
	align-items: center;
	justify-content: center;
}

a {
	font-size: 15px;
	color: #7c7c7c;
	text-decoration: none;
}

a:hover {
	color: #3C25AB;
}

.container {
	margin-top: 100px;
}
</style>
</head>
<body>
	<div class="wrap">
		<!-- 헤더 -->
		<div class="close"
			style="width: 100%; position: fixed; top: 0; left: 0; height: 10px; background-color: #fff; opacity: 1;"></div>
		<div id="header">
			<div class="close"></div>
			<div id="mainBar">
				<div class="logo">
					<img
						src="http://192.168.10.73/html_prj/practice/images/vivaLog.png"
						alt="VIVA PARK Logo" id="logImg" />
				</div>
				<button class="hamburger-toggle"
					style="background-color: #fff; border: 0px;">
					<img
						src="http://192.168.10.73/html_prj/practice/images/hamburger_menu.png" />
				</button>
				<div id="nav">
					<ul id="mainMenu" class="">
						<li>
							<div class="liDiv">
								즐길거리
								<div class="subItems">
									<ul>
										<li><a href="#void">어트랙션</a></li>
										<li><a href="#void">푸드코트</a></li>
										<li><a href="#void">기프트샵</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<div class="liDiv">
								행사
								<div class="subItems">
									<ul>
										<li><a href="#void">공연</a></li>
										<li><a href="#void">퍼레이드</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<div class="liDiv">
								요금/예매
								<div class="subItems">
									<ul>
										<li><a href="#void">티켓 요금</a></li>
										<li><a href="#void">연간 이용권</a></li>
										<li><a href="#void">할인/제휴</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<div class="liDiv">
								이용정보
								<div class="subItems">
									<ul>
										<li><a href="#void">오시는 길</a></li>
										<li><a href="#void">운영/운휴</a></li>
										<li><a href="#void">파크 이용 안내</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<div class="liDiv">
								소통 서비스
								<div class="subItems">
									<ul>
										<li><a href="#void">공지</a></li>
										<li><a href="#void">FAQ</a></li>
										<li><a href="#void">문의</a></li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>

				<div class="header-btns">
					<button class="btn2"
						style="padding: 8px 20px; border-radius: 20px; border: 1.5px solid #FF5A4A; color: #FF5A4A; background: transparent; cursor: pointer; font-size: 14px;">예약하기</button>
					<button class="btn2"
						style="color: #000; border: 1.5px solid #000; padding: 8px 20px; border-radius: 20px; background: transparent; cursor: pointer; font-size: 14px;">로그인</button>
				</div>
			</div>
			<div id=subBar>
				<div class="close"></div>
				<div class="close"
					style="position: fixed; top: 100px; right: 0px; height: 200px;"></div>
			</div>
			<div class="close"></div>
			<hr style="margin: 0px !important">
		</div>
		<!-- 햄버거 메뉴 시작 -->
		<div class="hamburger-list">

			<div class="login-box">
				<span>로그인해 주세요</span> <span>〉</span>
			</div>

			<div class="reservation-box">
				<div>예매하기</div>
				<div>|</div>
				<div>티켓등록</div>
			</div>

			<div class="menu-section">
				<div class="menu-title">즐길거리</div>
				<div class="menu-list">
					<div>
						<a href="#void">어트랙션</a><br> <a href="#void">푸드코트</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">기프트샵</a>
					</div>
				</div>

				<div class="menu-title">행사</div>
				<div class="menu-list">
					<div>
						<a href="#void">공연</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">퍼레이드</a>
					</div>
				</div>

				<div class="menu-title">요금/예매</div>
				<div class="menu-list">
					<div>
						<a href="#void">티켓 요금</a><br> <a href="#void">연간 이용권</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">할인/제휴</a>
					</div>
				</div>

				<div class="menu-title">이용정보</div>
				<div class="menu-list">
					<div>
						<a href="#void">오시는 길</a><br> <a href="#void">운영/운휴</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">파크 이용안내</a>
					</div>
				</div>

				<div class="menu-title">소통 서비스</div>
				<div class="menu-list">
					<div>
						<a href="#void">공지</a><br> <a href="#void">FAQ</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">문의</a>
					</div>
				</div>

			</div>
		</div>
		<!-- 햄버거 메뉴 끝 -->

		<!-- 메인 공간(비어있는 흰 배경 영역) -->
		<div class="container">
			<div class="page_navi" style="margin-bottom: 20px; margin-left: 100px;">
				<img src="images/house.png" />
				<div class="btn-group">
					<button type="button" class="btn btn-secondary dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="background-color: #fff; color: #333; border: none; padding: 0px; margin-left: 10px; margin-bottom: 3px;">
						소통 서비스</button>
					<ul class="dropdown-menu dropdown-menu-end">
						<li><button class="dropdown-item" type="button">즐길거리</button></li>
						<li><button class="dropdown-item" type="button">행사</button></li>
						<li><button class="dropdown-item" type="button">요금/예매</button></li>
						<li><button class="dropdown-item" type="button">이용정보</button></li>
						<li><button class="dropdown-item" type="button">소통 서비스</button></li>
					</ul>
				</div>

				<div class="btn-group">
					<button type="button" class="btn btn-secondary dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="background-color: #fff; color: #333; border: none; padding: 0px; margin-left: 10px; margin-bottom: 3px;">
						문의</button>
					<ul class="dropdown-menu dropdown-menu-end">
						<li><button class="dropdown-item" type="button">공지</button></li>
						<li><button class="dropdown-item" type="button">FAQ</button></li>
						<li><button class="dropdown-item" type="button">문의</button></li>
					</ul>
				</div>
			</div>
			<div id="inquiryNotice">
				<img src="http://192.168.10.73/html_prj/practice/images/inquiry.png">
			</div>
			<div style="max-width: 800px; margin: 0px auto;">
				<div style="display: flex;">
					<h4 style="margin-left: 40px; margin-top: 40px; margin-bottom: 0px">
						<strong>문의 접수하기</strong>
					</h4>
				</div>
				<div style="max-width: 800px; margin: 0px auto;">
					<div class="input-container">
						<input type="text" placeholder="제목">
					</div>
				</div>
				<div style="min-height: 500px; max-width: 800px; margin: 0px auto;">
					<div id="summernote">
						<p></p>
					</div>
				</div>
			</div>
			<div class="agreement-section"
				style="width: 800px; margin: 0px auto;">
				<h4 class="section-title">약관 동의</h4>


				<div class="agreement-item" id="agreementItem1"
					style="border-top: 1px solid #333; border-bottom: 1px solid #333; padding: 10px;">
					<label class="agreement-label" style> <input
						type="checkbox" name="privacy_agree" required> <span
						class="agreement-text" style="font-size: 20px;"> <span
							class="required-tag">[필수]</span> 개인 정보 수집 및 이용 동의
					</span>
					</label> <span class="detail-arrow toggle-btn">&gt;</span>
				</div>

				<div class="agreement-detail" id="detailContent1">
					<div class="detail-box">
						<h4>개인정보 수집 및 이용 동의 상세 내용</h4>
						<p>1. 수집 목적: 서비스 이용자 식별 및 회원 관리</p>
						<p>2. 수집 항목: 이름, 연락처, 이메일 주소</p>
						<p>3. 보유 및 이용 기간: 회원 탈퇴 시 또는 법정 보존 기한까지</p>
						<p style="margin-top: 10px; font-size: 0.9em; color: #888;">
							**[주의]** 위 사항에 동의하지 않을 경우, 서비스 이용이 제한될 수 있습니다.</p>
					</div>
				</div>

			</div>

			<div style="width: 800px; margin: 20px auto;">
				<button id="submitBtn">
					<img src="images/inquirySubmitBtn.png" />
				</button>
			</div>


		</div>
		<!-- container 끝 -->

		<!-- 푸터 -->
		<div id="footer">
			<div class="footer-inner">

				<div class="footer-top">
					<img
						src="http://192.168.10.73/html_prj/practice/images/vivaLog.png"
						alt="VIVA PARK Logo" style="height: 50px;" />

					<div class="footer-menu">
						<span>비바파크 어트랙션 소개</span> <span>비바파크 소개</span> <span>ESG</span> <span>이용약관</span>
						<span style="color: #6A35FF">개인정보처리방침</span> <span>영상정보처리기기
							운영/관리방침</span> <span>이메일무단수집거부</span> <span>채용안내</span> <span>사업문의</span>
						<span>언제사용</span> <span>사이트맵</span>
					</div>
				</div>

				<div class="footer-bottom">
					비바파크 어트랙션<br> 사업장소재지: 충남 아산시 송악면 외암로 200 비바파크 아산랜드 | 대표자: 박정호<br>
					사업자등록번호: 219-85-00014 | 통신판매업신고번호: 아산 제 1532호 | 전화: 1605-2000
				</div>

				<div class="footer-icons"></div>

			</div>
		</div>
	</div>
</body>
</html>
