<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 확인 필드</title>
    <style>
        .input-group {
            max-width: 400px;
            margin: 0 auto;
        }

        /* 라벨 스타일 */
        .input-label {
            display: block;
            font-size: 16px;
            color: #333;
            margin-bottom: 8px;
            font-weight: 500;
        }
        /* 필수 입력 (*) 강조 */
        .input-label .required {
            color: #d9534f; /* 빨간색 별표 */
            margin-left: 2px;
        }

        /* 입력 필드 컨테이너 스타일 */
        .input-container {
            /* 이미지처럼 둥근 모서리와 은은한 그림자 효과를 주기 위한 컨테이너 */
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
            padding: 0;
        }

        /* 실제 입력 필드 스타일 */
        .input-text {
            width: 100%;
            padding: 15px 12px;
            border: 1px solid #e0e0e0; /* 연한 테두리 */
            border-radius: 8px;
            font-size: 16px;
            box-sizing: border-box;
            outline: none; /* 포커스 시 기본 파란색 테두리 제거 */
            color: #333;
            transition: border-color 0.2s;
        }

        /* 포커스 시 스타일 변화 */
        .input-text:focus {
            border-color: #aaa;
        }

        /* 플레이스홀더 스타일 (선택 사항) */
        .input-text::placeholder {
            color: #aaa;
            font-size: 16px;
        }
    </style>
</head>
<body>

    <div class="input-group">
        
        <label for="passwordConfirm" class="input-label">
            비밀번호 확인 <span class="required">*</span>
        </label>
        
        <div class="input-container">
            <input 
                type="password" 
                id="passwordConfirm" 
                class="input-text" 
                placeholder="Input text" 
            >
        </div>
        
    </div>

</body>
</html>