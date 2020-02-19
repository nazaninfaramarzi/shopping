@extends('layouts.PillowTheme.mastermain')

@section('content')


   <!-- breadcrumb part start-->
   <section class="breadcrumb_part">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <h2>ورود</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb part end-->

    <!--================login_part Area =================-->
    <section class="login_part section_padding ">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_text text-center">
                        <div class="login_part_text_iner">
                            <h2>اولین خرید شماست؟</h2>
                            <p>برای تجربه خرید راحت تر حساب کاربری بسازید</p>
                            <a href="register" class="btn_3">ساخت حساب کاربری</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner">
                            <h3>خوش آمدید ! <br>
                                لطفا وارد شوید</h3>
                            <form class="row contact_form" action="{{ route('login') }}" method="POST" novalidate="novalidate">
                            @csrf
                            <div class="col-md-12 form-group p_star">
                                    <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" required name="email" value=""
                                        placeholder="ایمیل">
                                </div>
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                <div class="col-md-12 form-group p_star">
                                    <input type="password" class="form-control  @error('password') is-invalid @enderror" id="password" required name="password" value=""
                                        placeholder="رمز عبور">
                                </div>
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                <div class="col-md-12 form-group">
                                    <div class="creat_account d-flex align-items-center">
                                        <input type="checkbox" id="f-option" name="selector">
                                        <label for="f-option">مرا به خاطر بسپار</label>
                                    </div>
                                    <button type="submit" value="submit" class="btn_3">
                                        ورود
                                    </button>
                                    <a class="lost_pass" href="#">رمز عبور را فراموش کرده اید؟</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================login_part end =================-->

    @endsection