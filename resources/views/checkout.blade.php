@extends('layouts.PillowTheme.mastermain')

@section('content')

    <!-- breadcrumb part start-->
    <section class="breadcrumb_part">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <h2>چک کردن نهایی</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb part end-->

  <!--================Checkout Area =================-->
  <section class="checkout_area section_padding">
    <div class="container">
      <div class="returning_customer">
        <div class="check_title">
          <h2>
            قبلا خرید داشته اید؟
            <a href="#">برای ورود اینجا کلیک کنید</a>
          </h2>
        </div>
        <p>
            اگر تجربه خرید با ما را داشته اید، لطفا جزئیات آن را در کادر زیر وارد کنید. اگر اولین تجربه خرید شماست، به قسمت ارسال کالا و پرداخت بروید.
        </p>
        <form class="row contact_form" action="#" method="post" novalidate="novalidate">
          <div class="col-md-6 form-group p_star">
            <input type="text" class="form-control" id="name" name="name" value=" " />
            <span class="placeholder" data-placeholder="نام کاربری یا ایمیل"></span>
          </div>
          <div class="col-md-6 form-group p_star">
            <input type="password" class="form-control" id="password" name="password" value="" />
            <span class="placeholder" data-placeholder="رمز عبور"></span>
          </div>
          <div class="col-md-12 form-group">
            <button type="submit" value="submit" class="btn_3">
              ورود
            </button>
            <div class="creat_account">
              <input type="checkbox" id="f-option" name="selector" />
              <label for="f-option">مرا به خاطر بسپار</label>
            </div>
            <a class="lost_pass" href="#">آیا رمز عبور خود را فراموش کرده اید؟</a>
          </div>
        </form>
      </div>
      <div class="cupon_area">
        <div class="check_title">
          <h2>
            آیا کد تخفیف دارید؟
            <a href="#">کد خود را اینجا وارد کنید</a>
          </h2>
        </div>
        <input type="text" placeholder="کد تخفیف را وارد کنید" />
        <a class="tp_btn" href="#">درج کد تخفیف</a>
      </div>
      <div class="billing_details">
        <div class="row">
          <div class="col-lg-8">
            <h3>جزئیات صورتحساب</h3>
            <form class="row contact_form" action="#" method="post" novalidate="novalidate">
              <div class="col-md-6 form-group p_star">
                <input type="text" class="form-control" id="first" name="name" />
                <span class="placeholder" data-placeholder="نام"></span>
              </div>
              <div class="col-md-6 form-group p_star">
                <input type="text" class="form-control" id="last" name="name" />
                <span class="placeholder" data-placeholder="نام خانوادگی"></span>
              </div>
              <div class="col-md-12 form-group">
                <input type="text" class="form-control" id="company" name="company" placeholder="نام شرکت" />
              </div>
              <div class="col-md-6 form-group p_star">
                <input type="text" class="form-control" id="number" name="number" />
                <span class="placeholder" data-placeholder="شماره تلفن"></span>
              </div>
              <div class="col-md-6 form-group p_star">
                <input type="text" class="form-control" id="email" name="compemailany" />
                <span class="placeholder" data-placeholder="ایمیل"></span>
              </div>
              <div class="col-md-12 form-group p_star">
                <input type="text" class="form-control" id="add1" name="add1" />
                <span class="placeholder" data-placeholder="آدرس"></span>
              </div>
              <div class="col-md-12 form-group p_star">
                <input type="text" class="form-control" id="add2" name="add2" />
                <span class="placeholder" data-placeholder="آدرس"></span>
              </div>
              <div class="col-md-12 form-group p_star">
                <input type="text" class="form-control" id="city" name="city" />
                <span class="placeholder" data-placeholder="شهر"></span>
              </div>
              <div class="col-md-12 form-group">
                <input type="text" class="form-control" id="zip" name="zip" placeholder="کدپستی" />
              </div>
              <div class="col-md-12 form-group">
                <div class="creat_account">
                  <input type="checkbox" id="f-option2" name="selector" />
                  <label for="f-option2">ایجاد حساب کاربرب</label>
                </div>
              </div>
              <div class="col-md-12 form-group">
                <div class="creat_account">
                  <h3>جزئیات صورتحساب</h3>
                  <input type="checkbox" id="f-option3" name="selector" />
                  <label for="f-option3">ارسال به آدرس جدید؟</label>
                </div>
                <textarea class="form-control" name="message" id="message" rows="1"
                  placeholder="یادداشت مربوط به سفارش"></textarea>
              </div>
            </form>
          </div>
          <div class="col-lg-4">
            <div class="order_box">
              <h2>سفارش شما</h2>
              <ul class="list">
                <li>
                  <a href="#">محصولات
                    <span>مجموع</span>
                  </a>
                </li>
                <li>
                  <a href="#">مبل طرح چرم و مخمل
                    <span class="middle">2 عدد</span>
                    <span class="last">200000 تومان</span>
                  </a>
                </li>
                <li>
                  <a href="#">کوسن آبی طرح دار
                    <span class="middle">2 عدد</span>
                    <span class="last">200000 تومان</span>
                  </a>
                </li>
                <li>
                  <a href="#">صندلی روکش چرم
                    <span class="middle">2 عدد</span>
                    <span class="last">200000 تومان</span>
                  </a>
                </li>
              </ul>
              <ul class="list list_2">
                <li>
                  <a href="#">مجموع
                    <span>600000 تومان</span>
                  </a>
                </li>
                <li>
                  <a href="#">هزینه ارسال
                    <span>تعرفه ثابت: 100000 تومان</span>
                  </a>
                </li>
                <li>
                  <a href="#">مجموع
                    <span>5000000 تومان</span>
                  </a>
                </li>
              </ul>
              <div class="payment_item">
                <div class="radion_btn">
                  <input type="radio" id="f-option5" name="selector" />
                  <label for="f-option5">تایید پرداخت ها</label>
                  <div class="check"></div>
                </div>
                <p>
                    لطفا یک چک به نام مغازه و به آدرس شهر و کشور و کدپستی مغازه بفرستید.
                </p>
              </div>
              <div class="payment_item active">
                <div class="radion_btn">
                  <input type="radio" id="f-option6" name="selector" />
                  <label for="f-option6">درگاه بانک </label>
                  <img src="img/product/single-product/card.jpg" alt="" />
                  <div class="check"></div>
                </div>
                <p>

                    لطفا یک چک به نام مغازه و به آدرس شهر و کشور و کدپستی مغازه بفرستید.
                </p>
              </div>
              <div class="creat_account">
                <input type="checkbox" id="f-option4" name="selector" />
                <label for="f-option4">شرایط را خوانده و قبول دارم </label>
                <a href="#">ضوابط و شرایط*</a>
              </div>
              <a class="btn_3" href="#">رفتن به درگاه بانک</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--================End Checkout Area =================-->
  @endsection