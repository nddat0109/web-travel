@extends('Page_Views.Pages_Layout')
@section('content')

    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_2" style="background-image: url({{asset('Pages/img/banner/bradcam2.png')}})">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text text-center">
                        <h3>{{__('Destinations')}}</h3>
                        <p>{{__('Southeast Asia at your feed')}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->

    @include('Page_Views.where_to_go_bar')

    <!-- Destinations -->
    <div class="col-md-12 col-sm-12" style="padding-top:80px">
        <div class="container">
            <h2 class="wow fadeInUp" data-wow-duration="2s" style="visibility: visible; animation-duration: 2s; animation-name: fadeInUp;text-align: center;font-family: 'Philosopher';font-weight: bolder; font-size:25px; padding-top: 50px">
                {{__('Bạn sẽ dễ dàng thực hiện một chuyến đi với tất cả những ý tưởng được đề xuất của chúng tôi giúp chuyến phiêu lưu của bạn trở thành khoảnh khắc khó quên trong đời…')}}
            </h2>
        </div>
    </div>
     <div class="popular_destination_area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section_title text-center mb_70">
                        <h3>{{__('Điểm đến nổi tiếng')}}</h3>
                        <p>{{__('Bạn sẽ dễ dàng thực hiện một chuyến đi với tất cả những ý tưởng được đề xuất của chúng tôi giúp chuyến phiêu lưu của bạn trở thành khoảnh khắc khó quên trong đời…')}}</p>
                    </div>
                </div>
            </div>
            <div class="row ">
                @foreach($dest as $key =>$Dest)
                    <div class="col-lg-4 col-md-6   ">
                        <div class="single_destination">
                            <div class="thumb" >
                                <img src="uploads/destinations/thumb/{{$Dest->destination_thumb}}" alt="" style="max-width: 100%; max-height: 300px">
                            </div>
                            <div class="content">
                                <?php $lang_status = Session::get('language');
                                if($lang_status!="en"){
                                ?>
                                <p style="font-size: 50px" class="d-flex align-items-center"> <a href="{{URL::to('/destination/'.$Dest->destination_name_EN)}}"> {{$Dest->destination_name_VI}} </a></p>
                                <?php
                                }else {
                                ?>
                                    <p class=" align-items-center"> <a href="{{URL::to('/destination/'.$Dest->destination_name_EN)}}"> {{$Dest->destination_name_EN}} </a></p>
                                <?php
                                }
                                ?>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    



    <!-- Destination end -->

    <!-- customize_area_start  -->
    <div class="bradcam_area overlay bradcam_bg_3 mb-5">
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-lg-12">
                    <div class="row align-items-center">
                        <div class="col-lg-10 ">
                                <p style="font-size: 30px;font-weight: initial">If you know what you want. . .</p>
                                <h3 style="color: white; font-size: 50px;font-weight:bolder ">CREATE YOUR BEST TRIP</h3>
                                <a href="{{URL::to('wishlist')}}" class="genric-btn danger-border e-large" style="border-radius: 5px;" >Customize tour</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- customize_area_end  -->
   {{-- <div class="recent_trip_area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section_title text-center mb_70">
                        <h3>Recent Trips</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single_trip">
                        <div class="thumb">
                            <img src="img/trip/1.png" alt="">
                        </div>
                        <div class="info">
                            <div class="date">
                                <span>Oct 12, 2019</span>
                            </div>
                            <a href="#">
                                <h3>Journeys Are Best Measured In
                                    New Friends</h3>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_trip">
                        <div class="thumb">
                            <img src="img/trip/2.png" alt="">
                        </div>
                        <div class="info">
                            <div class="date">
                                <span>Oct 12, 2019</span>
                            </div>
                            <a href="#">
                                <h3>Journeys Are Best Measured In
                                    New Friends</h3>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_trip">
                        <div class="thumb">
                            <img src="img/trip/3.png" alt="">
                        </div>
                        <div class="info">
                            <div class="date">
                                <span>Oct 12, 2019</span>
                            </div>
                            <a href="#">
                                <h3>Journeys Are Best Measured In
                                    New Friends</h3>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--}}
@endsection

