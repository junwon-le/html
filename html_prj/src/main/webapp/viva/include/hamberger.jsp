<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/siteproperty.jsp" %>
<div class="hamburger-list">

				<button class="login-box" onclick="location.href='${CommonURL}/login/loginPg_Include.jsp'">
					<span >로그인해 주세요</span> <span>〉</span>
				</button>

				<div class="reservation-box">
					<div><a href="${CommonURL}/reserve/" style ="color:#000">예매하기</a></div>
					<div>|</div>
					<div><a href="${CommonURL}/reserve/" style ="color:#000">티켓등록</a></div>
				</div>

				<div class="menu-section">
					<div class="menu-title">즐길거리</div>
					<div class="menu-list">
						<div>
							<a href="${CommonURL}/attr/">어트랙션</a><br>
							<a href="${CommonURL}/attr/">푸드코트</a>
						</div>
						<div style="margin-right : 100px">
							 <a href="${CommonURL}/attr/">기프트샵</a>
						</div>
					</div>

					<div class="menu-title">행사</div>
					<div class="menu-list">
						<div>
							<a href="${CommonURL}/pref/">공연</a>
						</div>
						<div style="margin-right : 100px">
						 	<a href="${CommonURL}/pref/">퍼레이드</a>
						 </div>
					</div>

					<div class="menu-title">요금/예매</div>
					<div class="menu-list">
						<div>
							<a href="${CommonURL}/reserve/">티켓 요금</a><br>
							
						</div>
						<div style="margin-right : 100px">
							<a href="${CommonURL}/reserve/">할인/예매</a>
						</div>
					</div>

					<div class="menu-title">이용정보</div>
					<div class="menu-list">
						<div>
							<a href="${CommonURL}/login/user_guide2.jsp">오시는 길</a><br>
							<a href="${CommonURL}/login/user_guide1.jsp">영업 시간</a> 
						</div>
						<div style="margin-right : 100px">
							<a href="${CommonURL}/login/user_guide3.jsp">파크 이용안내</a>
						</div>
					</div>
					
					<div class="menu-title">소통 서비스</div>
					<div class="menu-list">
						<div>
							<a href="${CommonURL}/notice/Notice.jsp">공지</a><br>
							<a href="${CommonURL}/FAQ/FAQ.jsp">FAQ</a> 
						</div>
						<div style="margin-right : 100px">
							<a href="${CommonURL}/inquiry/Inquiry.jsp">문의</a>
						</div>
					</div>

				</div>
			</div>
			<!-- 햄버거 메뉴 끝 -->