@extends('layouts.PillowTheme.mastermain')

@section('content')

    <!-- breadcrumb part start-->
    <section class="breadcrumb_part">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <h2>تایید نهایی</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb part end-->

  <!--================ confirmation part start =================-->
  <section class="confirmation_part section_padding">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="confirmation_tittle">
            <span>با تشکر. سفارش شما دریافت شد.</span>
          </div>
        </div>
        <div class="col-lg-6 col-lx-4">
          <div class="single_confirmation_details">
            <h4>اطلاعات سفارش</h4>
            <ul>
              <li>
                <p>22</p><span> شماره سفارش:</span>
              </li>
              <li>
                <p>3 مهر 98</p><span>اطلاعات:</span>
              </li>
              <li>
                <p>3456</p><span>مجموع:</span>
              </li>
              <li>
                <p>تایید شده</p><span>وضعیت پرداخت:</span>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-lg-6 col-lx-4">
          <div class="single_confirmation_details">
            <h4>آدرس صورتحساب</h4>
            <ul>
              <li>
                <p>ارم</p><span>خیابان:</span>
              </li>
              <li>
                <p>شیراز</p><span>شهر:</span>
              </li>
              <li>
                <p>ایران</p><span>کشور:</span>
              </li>
              <li>
                <p>36952</p><span> کدپستی:</span>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-lg-6 col-lx-4">
          <div class="single_confirmation_details">
            <h4>آدرس صورتحساب</h4>
            <ul>
              <li>
                <p>ارم</p><span> خیابان:</span>
              </li>
              <li>
                <p>شیراز</p><span> شهر:</span>
              </li>
              <li>
                <p>ایران</p><span> کشور:</span>
              </li>
              <li>
                <p>36952</p><span>  کدپستی: </span>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="order_details_iner">
            <h3>جزئیات سفارش</h3>
            <table class="table table-borderless">
              <thead>
                <tr>
                  <th scope="col" colspan="2">محصول</th>
                  <th scope="col">تعداد</th>
                  <th scope="col">مجموع</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th colspan="2"><span>Pixelstore fresh Blackberry</span></th>
                  <th>2 عدد</th>
                  <th> <span>72000 تومان</span></th>
                </tr>
                <tr>
                  <th colspan="2"><span>Pixelstore fresh Blackberry</span></th>
                  <th>2 عدد</th>
                  <th> <span>72000 تومان</span></th>
                </tr>
                <tr>
                  <th colspan="2"><span>Pixelstore fresh Blackberry</span></th>
                  <th>2 عدد</th>
                  <th> <span> 72000 تومان </span></th>
                </tr>
                <tr>
                  <th colspan="3">مجموع</th>
                  <th> <span>72000 تومان</span></th>
                </tr>
                <tr>
                  <th colspan="3">صورتحساب</th>
                  <th><span>تعرفه ثابت: 72000 تومان</span></th>
                </tr>
              </tbody>
              <tfoot>
                <tr>
                  <th scope="col" colspan="3">تعداد</th>
                  <th scope="col">مجموع</th>
                </tr>
              </tfoot>
            </table>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--================ confirmation part end =================-->
  @endsection