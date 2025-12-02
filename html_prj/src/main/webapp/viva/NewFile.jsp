<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<title>JSP템플릿</title>
<link rel="shortcut icon" href="http://192.168.10.68/jsp_prj/common/images/favicon.ico">

<script src="http://192.168.10.68/jsp_prj/common/js/color-modes.js"></script>
<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>

<meta name="theme-color" content="#712cf9">
<link href="http://192.168.10.68/jsp_prj/common/css/carousel.css" rel="stylesheet">
<style type="text/css">
.custom-dropdown-container {
    position: relative; /* 메뉴를 버튼 아래에 정확히 배치하기 위함 */
    display: inline-block;
    font-family: Arial, sans-serif;
}

/* 1. 토글 버튼 스타일 (전체 ▼) */
.dropdown-toggle {
    padding: 8px 15px;
    border: 1px solid #ccc;
    border-radius: 8px; /* 둥근 모서리 */
    background-color: #f8f8f8;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
    display: flex;
    align-items: center;
    gap: 5px;
    white-space: nowrap; /* 내용이 줄바꿈되지 않도록 */
}

/* 화살표 아이콘 */
.arrow-icon {
    font-size: 10px;
    margin-left: 5px;
    transition: transform 0.3s;
}

/* 2. 드롭다운 메뉴 스타일 (기본적으로 숨김) */
.dropdown-menu {
    list-style: none;
    padding: 10px 0;
    margin: 0;
    position: absolute;
    top: 100%; /* 버튼 바로 아래 배치 */
    right: 0; /* 버튼 오른쪽 끝에 맞춤 */
    min-width: 150px;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
    z-index: 1000;
    
    /* 기본적으로 숨기기 */
    display: none;
}

/* 메뉴가 열렸을 때 */
.dropdown-menu.show {
    display: block;
}

/* 3. 메뉴 항목 스타일 */
.menu-item {
    padding: 8px 20px;
    cursor: pointer;
    font-size: 16px;
    color: #333;
    white-space: nowrap;
}

.menu-item:hover {
    background-color: #f0f0f0; /* 호버 시 배경색 변경 */
}

/* 현재 활성화된 항목 스타일 (선택적) */
.menu-item.active {
    font-weight: bold;
    color: #000;
}
</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
    var $toggle = $('#dropdownToggle');
    var $menu = $('#dropdownMenu');
    var $items = $('.menu-item');

    // 1. 토글 버튼 클릭 시 메뉴 보이기/숨기기
    $toggle.on('click', function(e) {
        // 메뉴의 show 클래스를 토글 (있으면 제거, 없으면 추가)
        $menu.toggleClass('show');
        // 화살표 방향 변경 (선택적)
        $toggle.find('.arrow-icon').toggleClass('rotated');
        e.stopPropagation(); // 이벤트 버블링 방지
    });

    // 2. 메뉴 항목 클릭 시 처리
    $items.on('click', function() {
        var selectedText = $(this).text();
        var selectedValue = $(this).data('value');

        // 1) 버튼 텍스트 변경
        $toggle.html(selectedText + ' <span class="arrow-icon">▼</span>');
        
        // 2) active 클래스 업데이트 (선택된 항목 표시)
        $items.removeClass('active');
        $(this).addClass('active');

        // 3) 메뉴 닫기
        $menu.removeClass('show');
        
        // *******************************************
        // TODO: 서버로 데이터 전송 또는 다른 로직 추가 (예: AJAX 호출)
        console.log("선택된 값:", selectedValue);
        // *******************************************
    });

    // 3. 메뉴 외부 클릭 시 메뉴 닫기
    $(document).on('click', function(e) {
        if (!$toggle.is(e.target) && $menu.hasClass('show')) {
            $menu.removeClass('show');
        }
    });
});
</script>


</head>
<body>
 <div class="custom-dropdown-container">
    <button class="dropdown-toggle" id="dropdownToggle">
        전체 <span class="arrow-icon">▼</span>
    </button>

    <ul class="dropdown-menu" id="dropdownMenu">
        <li data-value="all" class="menu-item active">이용</li>
        <li data-value="notice" class="menu-item">공지</li>
        <li data-value="event" class="menu-item">이벤트</li>
    </ul>
</div>  
</body>
</html>