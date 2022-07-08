<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <meta name="copyright" content="MACode ID, https://macodeid.com/">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


    <!--   구글폰트(버튼) -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">

    <title>MaRoo</title>

    <link rel="stylesheet" href="../resources/css/maicons.css">

    <link rel="stylesheet" href="../resources/css/bootstrap.css">

    <link rel="stylesheet" href="../resources/vendor/animate/animate.css">

    <link rel="stylesheet" href="../resources/css/theme.css">

    <!-- 부트스트랩  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style type="text/css">

        /* nav */
        .search {
            position: relative;
            width: 300px;
            left: 5px;

        }

        input {
            width: 100%;
            border: 1px solid #bbb;
            border-radius: 8px;
            padding: 10px 12px;
            font-size: 12px;
        }
        input:focus{
            outline:1px solid #FFCD4A;
        }

        #img1 {
            position : absolute;
            width: 17px;
            top: 10px;
            right: 7px;
            margin: 0;

        }

        /* 마루 사이즈 */
        header img {
            width: 150px;
            margin-bottom: 5px;
        }

        /* 버튼 */

        .button-55 {
            align-self: center;
            background-color: #fff;
            background-image: none;
            background-position: 0 90%;
            background-repeat: repeat no-repeat;
            background-size: 4px 3px;
            border-radius: 15px 225px 255px 15px 15px 255px 225px 15px;
            border-style: solid;
            border-width: 2px;
            box-shadow: rgba(0, 0, 0, .2) 15px 28px 25px -18px;
            box-sizing: border-box;
            color: #FFCD4A;
            cursor: pointer;
            display: inline-block;
            font-family: Neucha, sans-serif;
            font-size: 1rem;
            line-height: 23px;
            outline: none;
            padding: .75rem;
            text-decoration: none;
            transition: all 235ms ease-in-out;
            border-bottom-left-radius: 15px 255px;
            border-bottom-right-radius: 225px 15px;
            border-top-left-radius: 255px 15px;
            border-top-right-radius: 15px 225px;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;

        }

        .button-55:hover {
            box-shadow: rgba(0, 0, 0, .3) 2px 8px 8px -5px;
            transform: translate3d(0, 2px, 0);

        }

        }
        .button-55:focus {
            box-shadow: rgba(0, 0, 0, .3) 2px 8px 4px -6px;

        }

        /*  푸터  */
        .callnumber{
            padding-bottom: 0.1875rem;
            font-size: 1.25rem;
            font-weight: 500;
            font-stretch: normal;
            color: #FFCD4A;
        }
        .callnumberdown{
            margin: 0;
            font-size: .875rem;
            line-height: normal;
            letter-spacing: normal;
            color: #737373;
        }
        #footermenu1{
            margin: 0;
            font-size: .875rem;
            line-height: normal;
            letter-spacing: normal;
            color: #737373;
            position: absolute;
            bottom:49px;
        }
        #footermenu2{
            margin: 0;
            font-size: .875rem;
            line-height: normal;
            letter-spacing: normal;
            color: #737373;

        }
        #footermenu3{
            margin: 0;
            font-size: .875rem;
            line-height: normal;
            letter-spacing: normal;
            color: #737373;

        }

        * {
            box-sizing: border-box;
        }

        div {
            display: block;
        }

        .item {
            color: #323232;
            width: 600px;
        }

        .item-container {
            cursor: pointer;
            display: flex;
            align-items: center;
            padding: 1rem 0 1rem 0.5rem;
            border-bottom: 0.0625rem solid #f2f2f2;
            font-size: 15.8px;
            height: 80px;
        }

        .item-title{
            color: #b5b5b5;
            font-weight: bold;
        }

        .item-info {
            padding-top: 0.25rem;

        }

        .profile-image {
            width: 6.25rem;
            height: 6.25rem;
            min-width: 4.375rem;
            border-radius: 70%;
            overflow: hidden;
            border: 0.0625rem solid #f2f2f2;
            margin-left: auto;
            margin-right: auto;
            margin-top: 40px;
            background-image: url("https://dmmj3ljielax6.cloudfront.net/upload/profile-default/soomgo_70.jpg?h=320&w=320");
        }

        .camera-icon {
            cursor: pointer;
            position: absolute;
            height: 10px;
            width: 10px;
            right: 0;
            bottom: 0;
        }



    </style>



</head>
<body>


<!-- Back to top button -->
<div class="back-to-top"></div>

<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-white sticky" data-offset="500">
        <div class="container" style="box-sizing: border-box;">
            <a href="<%=request.getContextPath() %>" class="navbar-brand"><img src="../resources/img/logo1.jpg" ></a>

            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse collapse" id="navbarContent">

                <!--search바  -->
                <div class="search">
                    <input type="text" placeholder="어떤 서비스가 필요하세요?">
                    <img id="img1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
                </div>

                <ul class="navbar-nav ml-auto">

                    <li class="nav-item">
                        <a class="nav-link" href="about.html">고수찾기</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="<%=request.getContextPath() %>/pro/login">로그인</a>
                    </li>
                    <li class="nav-item">
                        <button class="button-55" role="button" >회원가입</button>
                    </li>
                </ul>
            </div>

        </div>
    </nav>
</header>

<input type="hidden" name="id" value="${sessionScope.id }">
<input type="hidden" name="email" value="${proDTO.email }">
<div class="page-section" style="padding-top: 0px">
    <div class="container">
        <form action="#" class="contact-form py-5 px-lg-5" style="max-width: 700px; margin-left: auto; margin-right: auto">
            <h2 class="text-black"><b>주고 프로필</b></h2>
            <div class="profile-image"></div>



                <input type="file" name="file">
                <input type="submit" class="btn update"value="수정">



            <li class="item-container" style="margin-top:50px;" onclick="location.href='<%=request.getContextPath() %>/mypage/settings/name'">
                <div class="item">
                    <div class="item-title">이름</div>
                    <div class="item-info">${proDTO.name}</div>
                </div>
                <div>
                    <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
                </div>
            </li>

            <li class="item-container" onclick="location.href='<%=request.getContextPath() %>/mypage/settings/email'">
                <div class="item">
                    <div class="item-title">이메일</div>
                    <div class="item-info">${proDTO.email}</div>
                </div>
                <div>
                    <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
                </div>
            </li>

            <li class="item-container" onclick="location.href='<%=request.getContextPath() %>/mypage/settings/password'">
                <div class="item">
                    <div class="item-title">자기소개</div>

                    <div class="item-info">안녕하세요 준비된 주고 ${proDTO.name}입니다.</div>
                </div>
                <div>
                    <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
                </div>
            </li>

            <li class="item-container" onclick="location.href='<%=request.getContextPath() %>/mypage/settings/password'">
                <div class="item">
                    <div class="item-title">제공 서비스</div>

                    <div class="item-info">${proDTO.service_name} </div>

                </div>
                <div>
                    <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
                </div>
            </li>

            <li class="item-container" onclick="location.href='<%=request.getContextPath() %>/mypage/settings/password'">
                <div class="item">
                    <div class="item-title">

                        연락 가능 시간</div>

                    <div class="item-info">
                        <img width="20" height="20" src= "../resources/img/icon/7.png">
                        오전 9시~ 오후 6시
                    </div>
                </div>
                <div>
                    <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
                </div>
            </li>

            <li class="item-container" onclick="location.href='<%=request.getContextPath() %>/mypage/settings/password'">
                <div class="item">
                    <div class="item-title">활동 지역</div>

                    <div class="item-info">
                        <img width="20" height="20" src= "../resources/img/icon/6.png">&nbsp;
                        ${proDTO.city_name}  ${proDTO.district_name } ${proDTO.addistrict_name}
                    </div>
                </div>
                <div>
                    <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
                </div>
            </li>





            <li class="item-container" onclick="location.href='<%=request.getContextPath() %>/mypage/settings/password'">
                <div class="item">
                    <div class="item-title">경력</div>
                    <div class="item-info">${proDTO.career}년</div>
                </div>
                <div>
                    <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
                </div>
            </li>



            <li class="item-container" onclick="location.href='<%=request.getContextPath() %>/mypage/settings/password'">
                <div class="item">
                    <div class="item-title">직원수</div>
                    <div class="item-info"><img width="25" height="20"  src="../resources/img/icon/9.png"> &nbsp;${proDTO.employee_number}명</div>
                </div>
                <div>
                    <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
                </div>
            </li>


            <div class="item-container" style="margin-top:50px; height: 50px;" onclick="location.href='<%=request.getContextPath() %>/pro/delete'">
                <div class="item">
                    <div class="text-black">주고 탈퇴</div>
                </div>
                <div>
                    <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
                </div>
            </div>
        </form>
    </div>

    <div class="container-fluid mt-4">

    </div>

</div>

<!-- 푸터 -->

<footer class="page-footer bg-image" style="background-image: url(<%=request.getContextPath() %>/resources/img/footer1.jpg);">
    <div class="container">
        <div class="row mb-5">
            <div class="col-lg-3 py-3">

                <div class="callnumber">1600-8282</div>
                <p class="callnumberdown">평일 10:00 ~ 18:00 (점심시간 13:00 ~ 14:00 제외)</p>
                <div class="social-media-button">
                    <a href="#"><span class="mai-logo-facebook-f"></span></a>
                    <a href="#"><span class="mai-logo-twitter"></span></a>
                    <a href="#"><span class="mai-logo-google-plus-g"></span></a>
                    <a href="#"><span class="mai-logo-instagram"></span></a>
                    <a href="#"><span class="mai-logo-youtube"></span></a>
                </div>
            </div>
            <div class="col-lg-3 py-3">
                <h5>Company</h5>
                <ul class="footer-menu" id="footermenu1">
                    <li><b>마루소개</b></li>
                    <li>마루메인</li>
                    <li>Prime</li>
                    <li>엔터프라이즈</li>
                    <li>프리랜서 클럽</li>
                </ul>


            </div>
            <div class="col-lg-3 py-3">
                <ul class="footer-menu" id="footermenu2">
                    <li><b>고객안내</b></li>
                    <li>이용안내</li>
                    <li>안전정책</li>
                    <li>예상금액</li>
                    <li>고수찾기</li>
                    <li>마루보증</li>
                </ul>
            </div>
            <div class="col-lg-3 py-3">
                <ul class="footer-menu" id="footermenu3">
                    <li><b>주고안내</b></li>
                    <li>이용안내</li>
                    <li>주고가이드</li>
                    <li>주고가입</li>
                    <li>주고센터</li>
                </ul>
            </div>
        </div>

        <p class="text-center" id="copyright">(주)마루ㅣ부산시 동천로 109 삼한골든게이트 7층ㅣ대표: 1조ㅣ개인정보관리책임자: 1조ㅣ사업자등록번호:678-12-78901</p>
    </div>
</footer>

<script src="../resources/js/jquery-3.5.1.min.js"></script>

<script src="../resources/js/bootstrap.bundle.min.js"></script>

<script src="../resources/js/google-maps.js"></script>

<script src="../resources/vendor/wow/wow.min.js"></script>

<script src="../resources/js/theme.js"></script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIA_zqjFMsJM_sxP9-6Pde5vVCTyJmUHM&callback=initMap"></script>



</body>
</html>