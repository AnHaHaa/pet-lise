<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="/images/favicon.ico" />
    <link rel="apple-touch-icon" href="/images/favicon.ico" />
    <link rel="stylesheet" href="/css/style.css" />
    <link rel="stylesheet" href="/css/mypage/myPageForm.css" />
    <link rel="stylesheet" href="/css/mypage/myInfoEdit.css" />
    <title>Pet LiSe</title>
  </head>
  <body>
    <p class="title">마이페이지</p>

    <div class="container">
      <div id="mypageMenu" class="menu"></div>

      <div class="contentWrap">
        <p>회원정보 수정</p>
        <div class="line"></div>

        <div class="profileImgWrap">
          <div class="img">
            <img
              src=""
              onerror="this.onerror=null; this.src='/images/default-profile.svg';"
            />
            <label for="file">사진변경</label>
            <input type="file" id="file" />
          </div>

          <div class="nameWrap">
            <p>홍길동<span>님</span></p>
            <p>kildongHong@gmail.com</p>
          </div>
        </div>

        <div class="inputWrap">
          <div>
            <p>배송지</p>
            <p>현재 비밀번호</p>
            <p>새 비밀번호</p>
            <p>새 비밀번호 확인</p>
            <p>어떤 동물과 함께 하시나요?</p>
            <p>반려동물 이름</p>
            <p>반려동물 나이</p>
          </div>

          <div>
            <div class="addressWrapper">
              <div class="post">
                <input type="text" readonly />
                <button>우표번호 검색</button>
              </div>
              <input type="text" class="address1" />
              <input type="text" class="address2" />
            </div>
            <input type="password" />
            <input type="password" />
            <input type="password" />
            <div class="chooseAnimal">
              <input type="checkbox" name="animal" value="default" checked />
              <div class="inputWrapper">
                <label>
                  <input
                    type="checkbox"
                    name="animal"
                    id="animal1"
                    value="dog"
                  />
                  <label for="animal1"></label> 댕댕이<img
                    src="/images/dog-icon.svg"
                    alt="강아지"
                  />
                </label>
                <label>
                  <input
                    type="checkbox"
                    name="animal"
                    id="animal2"
                    value="cat"
                  />
                  <label for="animal2"></label> 냥냥이<img
                    src="/images/cat-icon.svg"
                    alt="고양이"
                  />
                </label>
              </div>
            </div>
            <input type="text" class="petName" />
            <input type="text" class="petAge" />
          </div>
        </div>
        <button class="deleteUser">회원탈퇴하기</button>
        <button class="editButton">확인</button>
      </div>
    </div>

    <script src="/js/mypageMenu.js"></script>
  </body>
</html>