

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>pro/info</title>
    <style type="text/css">


        .detail-info {
            text-align: center;
            background-color: #fafafa;
        }

        body {
            margin: 0;

            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #323232;
            text-align: left;
            background-color: #fff;
        }


        .topnav {
            overflow: hidden;
            background-color: white;
        }

        .topnav a {
            float: left;
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
            border-bottom: 3px solid transparent;
        }

        .topnav a:hover {
            border-bottom: 3px solid orange;
        }

        .topnav a.active {
            border-bottom: 3px solid orange;
        }


    </style>
</head>
<body class="profile">
<div class="bg-white">

    <div class="container">
        <div class="d-flex justify-content-between align-items-center py-4">

            <div>
                <a href="#" class="btn btn-success btn-sm">

                </a>
                <a href="#" class="btn btn-default icon-btn md-btn-flat btn-sm ml-1">
                    <i class="ion ion-md-mail"></i>
                </a>
            </div>
        </div>
    </div>


    <div class="container">
        <div class="text-center py-5">
            <img src="https://secure.gravatar.com/avatar/de9b11d0f9c0569ba917393ed5e5b3ab?s=140&r=g&d=mm" alt class="ui-w-100 rounded-circle">

            <div class="profile-overview">
                <h2 class="font-weight-bold my-4"> 이름</h2>
                <div class="text-muted mb-4">
                    ${proDTO.name}

                </div>


                <hr class="m-0">
                <br>
                <h2>활동 지역</h2>
                <div >
                    ${proDTO.service_name }

                    <img width="20" height="20" src= "../resources/img/icon/6.png">
                    ${proDTO.city_name } ${proDTO.district_name } ${proDTO.addistrict_name}
                </div>
                <hr class="m-0">
                <br>
                <h2>자기소개</h2>
                <div class="text-muted mb-4">
                    안녕하십니까  고수 ${proDTO.name}입니다.
                </div>

            </div>
            <hr class="m-0">

        </div>
    </div>


    <div class="detail-info" >
        <div class="employees" style="float:left; padding: 30px; line-height: 15px;" >
            고용
            <h3>${proDTO.career}회</h3>
        </div>
        <p> </p>
        <div class="review"style="float:left; padding: 30px; line-height: 15px;" >
            리뷰
        </div>

        <div class="career"style="float:left; padding: 30px; line-height: 15px;">
            총 경력 <a></a>
            <h3> ${proDTO.identify}년</h3>

        </div>
        <br><br><br>
        <br><br><br>
        <div>
        </div>

    </div>
    <br>

    <div class="topnav">
        <a class="active" href="#jungoinfo" >주고 정보</a>
        <a href="#photo"  >사진</a>
        <a href="#review" >리뷰</a>
        <a href="#Q&A">Q&A</a>

    </div>



    <div class="jugoinfo" id="jungoinfo">
        <h2> 주고 정보 </h2>

        <div class="person">
            <h4 > <img width="25" height="20"  src="../resources/img/icon/9.png"> 직원 수 ${proDTO.employee_number}명 </h4>

        </div>

        <div class="time">
            <h4 > <img width="25" height="20"  src="../resources/img/icon/7.png"> 연락 가능 시간 : </h4>
        </div>
        <div class="card">
            <h4><img width="25" height="20" src="../resources/img/icon/8.png"> 계좌이체 현금결제 가능 </h4>
        </div>
    </div>

    <br>


</div>

<div>
    <h2> 제공 서비스 </h2>
    <h4>${proDTO.service_name } </h4>
</div>

<div class="photo" id="photo">
    <h2>사진</h2>
</div>

<div class="review" id="review">
    <h2>리뷰</h2>
</div>

<div class="Q&A" id="Q&A">
    <h2>Q&A</h2>
</div>


</div>
</body>
</html>



</body>
</html>