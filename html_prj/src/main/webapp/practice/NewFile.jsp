<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예매 상세</title>
    <style>
        /* 변수 설정 */
        :root {
            --primary-color: #E91E63; /* 핑크색 (예매번호 아이콘 색상) */
            --background-color: #FFF;
            --header-bg-color: #FFF9C4; /* 연한 노란색 헤더 배경 */
            --text-color: #333;
            --border-color: #ddd;
            --padding-base: 16px;
        }

        /* 기본 스타일 및 모달 컨테이너 */
        body {
            font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
            background-color: #f0f0f0; /* 모달이 뜰 배경 */
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .modal-container {
            width: 100%;
            max-width: 350px; /* 모달의 최대 너비 설정 */
            background-color: var(--background-color);
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            overflow: hidden;
        }

        /* 모달 헤더 */
        .modal-header {
            background-color: var(--header-bg-color);
            padding: var(--padding-base);
            font-weight: bold;
            font-size: 1.1em;
            color: var(--text-color);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .close-button {
            background: none;
            border: none;
            font-size: 1.5em;
            cursor: pointer;
            color: var(--text-color);
            padding: 0;
            line-height: 1;
        }

        /* 모달 내용 */
        .modal-content {
            padding: var(--padding-base);
            color: var(--text-color);
        }

        .detail-item {
            display: flex;
            align-items: center;
            margin-bottom: 12px;
            font-size: 0.95em;
        }

        .detail-item:last-of-type {
            margin-bottom: 0;
        }

        .icon {
            font-size: 1.2em;
            margin-right: 10px;
            width: 20px; /* 아이콘 너비 통일 */
            text-align: center;
        }

        .icon.ticket { color: #E91E63; } /* 핑크색 */
        .icon.ticket-name { color: #FF9800; } /* 주황색 */
        .icon.date { color: #607D8B; } /* 청회색 */
        .icon.people { color: #9C27B0; } /* 보라색 */
        .icon.payment { color: #795548; } /* 갈색 */
        .icon.time { color: #00BCD4; } /* 하늘색 */

        .detail-text {
            flex-grow: 1;
        }

        /* QR 코드 섹션 */
        .qr-section {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px 0;
            text-align: center;
        }

        .qr-code {
            width: 150px;
            height: 150px;
            background-color: #000; /* 이미지 대신 배경색으로 대체 */
            /* 실제 이미지 대신 패턴 모양을 위한 임시 스타일 */
            background-image: repeating-linear-gradient(45deg, #000, #000 10px, #fff 10px, #fff 20px);
            margin-bottom: 10px;
            position: relative;
            overflow: hidden;
            border: 1px solid #ccc; /* 팻말 이미지 주변 경계 */
        }

        .qr-code::after {
            content: 'A1234567'; /* QR 코드 아래의 예매번호 텍스트 */
            position: absolute;
            bottom: 5px;
            left: 50%;
            transform: translateX(-50%);
            color: #fff;
            font-size: 10px;
            font-family: monospace;
        }


        .qr-instruction {
            font-size: 0.8em;
            color: #666;
            margin-top: 10px;
        }

        /* 버튼 섹션 */
        .button-group {
            display: flex;
            justify-content: flex-end; /* 오른쪽 정렬 */
            padding: var(--padding-base);
            padding-top: 0; /* QR 코드와 버튼 사이 간격 줄임 */
            border-top: 1px solid var(--border-color);
        }

        .button {
            padding: 10px 15px;
            border: 1px solid;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            margin-left: 8px;
            transition: background-color 0.2s;
        }

        .cancel-button {
            background-color: var(--background-color);
            color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .cancel-button:hover {
            background-color: #F8BBD0; /* 연한 핑크 */
        }

        .close-action-button {
            background-color: var(--background-color);
            color: var(--text-color);
            border-color: var(--border-color);
        }

        .close-action-button:hover {
            background-color: #eee;
        }
    </style>
    </head>
<body>

<div class="modal-container">
    <div class="modal-header">
        <span>예매 상세</span>
        <button class="close-button" onclick="alert('닫기 기능')">&times;</button>
    </div>

    <div class="modal-content">
        <div class="detail-item">
            <span class="icon ticket">🎟️</span>
            <div class="detail-text">
                **예매번호:** A1234567
            </div>
        </div>
        <div class="detail-item">
            <span class="icon ticket-name">🎠</span>
            <div class="detail-text">
                **티켓명:** V!VAPark 1일 자유이용권
            </div>
        </div>
        <div class="detail-item">
            <span class="icon date">🗓️</span>
            <div class="detail-text">
                **이용일:** 2025-11-15
            </div>
        </div>
        <div class="detail-item">
            <span class="icon people">👥</span>
            <div class="detail-text">
                **인원:** 성인 2, 청소년 1
            </div>
        </div>
        <div class="detail-item">
            <span class="icon payment">💳</span>
            <div class="detail-text">
                **결제수단:** 신용카드
            </div>
        </div>
        <div class="detail-item">
            <span class="icon time">⏰</span>
            <div class="detail-text">
                **예매일시:** 2025-11-10 14:22
            </div>
        </div>

        <div class="qr-section">
            <div class="qr-code">
                </div>
            <div class="qr-instruction">
                QR 코드를 입장 시 제시하세요.
            </div>
        </div>
    </div>

    <div class="button-group">
        <button class="button cancel-button" onclick="alert('티켓 취소 기능')">
            티켓 취소하기
        </button>
        <button class="button close-action-button" onclick="alert('닫기 기능')">
            닫기
        </button>
    </div>
</div>

</body>
</html>