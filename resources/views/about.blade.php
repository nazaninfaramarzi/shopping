@extends('layouts.PillowTheme.mastermain')

@section('content')

    <!-- breadcrumb part start-->
    <section class="breadcrumb_part">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <h2>درباره ما</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb part end-->
    
    <!-- product list part start-->
    <section class="about_us padding_top">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="about_us_content">
                        <h5>هدف ما</h5>
                        <h3>هدف ما در این مجموعه تولید محصولات زیبا و با کیفیت در راستای جلب رضایت شماست.</h3>
                        <div class="about_us_video">
                            <img src="img/about_us_video.png" alt="#" class="img-fluid">
                            <a class="about_video_icon popup-youtube" href="https://www.youtube.com/watch?v=DWHB6nTyKDI"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- product list part end-->

    <!-- feature part here -->
    <section class="feature_part section_padding">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-6">
                    <div class="feature_part_tittle">
                        <h3>با استفاده از مواد ارگانیک، محصولات استانداردی در اینجا تولید می شود.</h3>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="feature_part_content">
                        <p>شرکت ما با بهره گیری از استراتژی های مختلف و استفاده از مواد ارگانیک و طبیعی سعی در تولید محصولاتی با کیفیت و مطابق نیاز شما دارد.</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-3 col-sm-6">
                    <div class="single_feature_part">
                        <img src="img/icon/feature_icon_1.svg" alt="#">
                        <h4>پشتیبانی کارت های اعتباری</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_feature_part">
                        <img src="img/icon/feature_icon_2.svg" alt="#">
                        <h4>سفارش آنلاین</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_feature_part">
                        <img src="img/icon/feature_icon_3.svg" alt="#">
                        <h4>تحویل رایگان</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_feature_part">
                        <img src="img/icon/feature_icon_4.svg" alt="#">
                        <h4>محصولات همراه با هدیه</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- feature part end -->
    
    <!-- client review part here -->
    <section class="client_review">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="client_review_slider owl-carousel" dir="ltr">
                        <div class="single_client_review" dir="rtl">
                            <div class="client_img">
                                <img src="img/client.png" alt="#">
                            </div>
                            <p>"استفاده از بالش های طبی را در سفرهای طولانی مدت پیشنهاد می کنم.</p>
                            <h5>- رضا محمدی</h5>
                        </div>
                        <div class="single_client_review" dir="rtl">
                            <div class="client_img">
                                <img src="img/client_1.png" alt="#">
                            </div>
                            <p>"برای جلوگیری از گردن درد گزینه های مناسبی هستند.</p>
                            <h5>- امیر امیری</h5>
                        </div>
                        <div class="single_client_review" dir="rtl">
                            <div class="client_img">
                                <img src="img/client_2.png" alt="#">
                            </div>
                            <p>"برای نشستن های طولانی مدت روی مبل قابل قبول اند.</p>
                            <h5>- محمد موسوی</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- client review part end -->

    <!-- subscribe part here -->
    <section class="subscribe_part section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="subscribe_part_content" style="direction: rtl">
                        <h2>به روز رسانی و مطالب پیشرفته!</h2>
                        <p>ما سعی در ارائه محصولات با کیفیت تر و با دوام تر با توجه با استانداردهای روز جهان داریم .</p>
                        <div class="subscribe_form">
                            <input type="email" placeholder="ایمیل خود را وارد کنید">
                            <a href="#" class="btn_1">تایید پرداخت</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- subscribe part end -->

    @endsection