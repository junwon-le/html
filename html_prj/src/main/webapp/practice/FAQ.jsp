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
<!-- 공지 가져오기 -->
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
	
	<!-- 비바파크 css  -->
<link rel="stylesheet" type="text/css"
	href="http://192.168.10.73/html_prj/practice/vivatemplet.css" />
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
    </style>

<!-- jQuery CDN 시작 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
/* 1. 포커스 상태 제거 (클릭 및 탭 이동 시) */
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
.container{
margin-top : 100px;
	overflow: hidden;

}
@media screen and ( max-width : 1200px) {

	.page_navi {
		display: none;
	}
}
</style>
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
</head>
<body>
	<div class=wrap>
		<!-- 헤더 -->
		<div class="close"
			style="width: 100%; position: fixed; top: 0; left: 0; height: 10px;"></div>
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
										<li><a href="#void">행사 안내</a></li>
										<li><a href="#void">행사 예약</a></li>
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
										<li><a href="#void">영업 시간</a></li>
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
					<button class="btn"
						style="color: #FF6124; border: 1.5px solid #FF6124;">예약하기</button>
					<button class="btn" style="color: #000; border: 1.5px solid #000;">로그인</button>
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
						<a href="#void">행사안내</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">행사예약</a>
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
						<a href="#void">오시는 길</a><br> <a href="#void">영업 시간</a>
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
			<div class="page_navi" style="margin-bottom: 20px; margin-left: 100px; margin-top: 40px;">
				<img src="images/house.png" />
				<div class="btn-group">
					<button type="button" class="btn btn-secondary dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="background-color: #fff; color: #333; border: none; padding: 0px; margin-left: 10px; margin-bottom: 3px;">
						소통 서비스</button>
					<ul class="dropdown-menu dropdown-menu-end">
						<li><a href="#void" style="margin-left: 20px;">즐길거리</a></li>
						<li><a href="#void" style="margin-left: 20px;">행사</a></li>
						<li><a href="#void" style="margin-left: 20px;">요금/예매</a></li>
						<li><a href="#void" style="margin-left: 20px;">이용정보</a></li>
						<li><a href="#void" style="margin-left: 20px;">소통서비스</a></li>
					</ul>
				</div>

				<div class="btn-group">
					<button type="button" class="btn btn-secondary dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="background-color: #fff; color: #333; border: none; padding: 0px; margin-left: 10px; margin-bottom: 3px;">
						FAQ</button>
					<ul class="dropdown-menu dropdown-menu-end">
						<li><a href="#void" style="margin-left: 20px;">공지</a></li>
						<li><a href="#void" style="margin-left: 20px;">FAQ</a></li>
						<li><a href="#void" style="margin-left: 20px;">문의</a></li>
					</ul>
				</div>
			</div >
			<h1 style="text-align: center; margin-bottom: 30px;">FAQ</h1>

	<div style="max-width:1000px; display:flex; align-items: center; justify-content: center; border:1px solid #fff; 
	border-radius: 10px; box-shadow: 10px 20px 10px #F5F5F5; padding-bottom: 30px; margin: 60px auto;">
		<div class="search-container">
        <input type="text" class="search-input" placeholder="키워드를 입력해 주세요.">
        <button type="submit" class="search-button">
            <i class="fas fa-search"></i> </button>
    </div>
	</div>
			<!-- accordion -->
			<div class="accordion" id="accordionExample" style="max-width:1000px; margin:0px auto;">
				<!--  -->
				<%
				for (int i = 0; i < 10; i++) {
				%>
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#<%=i%>"
							aria-expanded="<%=i == 0 ? "true" : "false"%>" aria-controls="<%=i%>">
							[이용]DB에 해당하는 FAQ_title</button>
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