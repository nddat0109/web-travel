@extends('Page_Views.Pages_Layout')
@section('content')
    <!-- slider_area_start -->
    <div class="slider_area">
        <div class="slider_active owl-carousel">
            <div class="single_slider  d-flex align-items-center slider_bg_1 overlay">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-12 col-md-12">
                            <div class="slider_text text-center">
                                <h3>Đà Nẵng</h3>
                                <p>Đông Nam Á trên đôi chân của bạn</p>
                                <a href="{{URL::to('destination/Danang')}}" class="boxed-btn3">Khám phá ngay</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single_slider  d-flex align-items-center slider_bg_2 overlay">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-12 col-md-12">
                            <div class="slider_text text-center">
                                <h3> Phú Quốc</h3>
                                <p>Đông Nam Á trên đôi chân của bạn</p>
                                <a href="{{URL::to('destination/Phuquoc')}}" class="boxed-btn3">Khám phá ngay</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single_slider  d-flex align-items-center slider_bg_3 overlay">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-12 col-md-12">
                            <div class="slider_text text-center">
                                <h3>Đà Lạt</h3>
                                <p>Đông Nam Á trên đôi chân của bạn</p>
                                <a href="#" class="boxed-btn3">Khám phá ngay</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- slider_area_end -->

   @include('Page_Views.where_to_go_bar')

    <!-- popular_destination_area_start  -->
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
            <div class="row">
                <div class="col-lg-12">
                    <div class="more_place_btn text-center">
                        <a class="boxed-btn4" href="{{URL::to('/destination')}}">{{__('Xem thêm')}}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- popular_destination_area_end  -->

    <!-- newletter_area_start  -->
    <div class="newletter_area overlay">
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-lg-10">
                    <div class="row align-items-center">
                        <div class="col-lg-5">
                            <div class="newsletter_text">
                                <h4>{{__('Đăng ký bản tin của chúng tôi')}}</h4>
                                <p>{{__('Đăng ký bản tin để nhận ưu đãi và về các địa điểm mới để khám phá.')}}</p>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="mail_form">
                                <div class="row no-gutters">
                                    <div class="col-lg-9 col-md-8">
                                        <div class="newsletter_field">
                                            <input type="email" placeholder="Nhập Email của bạn" >
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4">
                                        <div class="newsletter_btn">
                                            <button class="boxed-btn4 " type="submit" >{{__('Đăng ký')}}</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- newletter_area_end  -->
    <div class="destination" style="padding-top: 100px!important;">
        <div class="container">
            <div class="thumbnail">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <div class="section_title text-center mb_70">
                            <h3>{{__('Loại du lịch phổ biến')}}</h3>
                            <p>{{__('Hãy lựa chọn chuyến đi của bạn cùng Paradise trong các chuyên mục của chúng tôi, chúng tôi có những lựa chọn tốt nhất và phù hợp nhất cho bạn, từ lãng mạn đến mộng mơ….')}}</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    @foreach($typetour as $key=>$typetour)
                        <div class="col-lg-4 col-md-6 mb-4">
                            <a href="{{URL::to('/type-of-tour/'.$typetour->typetour_name_EN)}}">
                                <div class="test-item">
                                    <img  alt="" class="img-fluid lazyloaded" src="uploads/typetours/thumb/{{$typetour->typetour_thumb}}">
                                    <?php $lang_status = Session::get('language');
                                    if($lang_status!="en"){
                                    ?>
                                    <h2>{{$typetour->typetour_name_VI}}</h2>
                                    <?php
                                    }else {
                                    ?>
                                    <h2>{{$typetour->typetour_name_EN}}</h2>
                                    <?php
                                    }
                                    ?>

                                    <p>{{__('Khám phá')}}
                                    </p>
                                    <div class="bg-item"></div>
                                </div>
                            </a>
                        </div>
                    @endforeach
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="more_place_btn text-center">
                            <a class="boxed-btn4" href="{{URL::to('type-of-tour')}}">{{__('Xem thêm')}}</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <hr style="background-color: #b2b9bf; margin-top: 120px">
    <div class="popular_places_area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section_title text-center mb_70">
                        <h3>{{__('Tour nổi bật')}}</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach($tour as $key=>$Tour)
                    <?php $lang_status = Session::get('language');
                    if($lang_status!="en"){
                    ?>
                    <div class="item_box col-lg-4 col-sm-6" price="{{$Tour->tour_price}}" name="{{$Tour->tour_name_VI}}">
                        <div class="single_place">
                            <div class="thumb">
                                <img src="{{asset('uploads/tours/thumb/'.$Tour->tour_thumb)}}" alt="">
                                <a href=""  class="prise tour-price">{{number_format($Tour->tour_price). ' VNĐ'}}</a>
                            </div>
                            <div class="place_info">
                                <a class="tour-name"  href="{{URL::to('/tour/'.$Tour->tour_name_EN)}}"><h3>{{ \Illuminate\Support\Str::of($Tour->tour_name_VI)->words(21) }}</h3></a>
                                <div class="row">
                                    <p class="col-6">{{$Tour->destination_name_VI}}</p>
                                    <p class="col-6" style="text-align: right">{{$Tour->typetour_name_VI}}</p>
                                </div>
                                <div class="rating_days d-flex justify-content-between">
                                        <span class="d-flex justify-content-center align-items-center">
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <a href="#">(Rất tốt)</a>
                                        </span>
                                    <div class="days">
                                    <a href="#">{{date('d/m/Y', strtotime($Tour->tour_date))}} {{__('-')}}</a>
                                        <a href="#">{{$Tour->tour_day}} {{__('Ngày')}}</a>
                                    </div>
                                </div>
                                <div class="row">
                                    <p class="col-6">{{__('Số chỗ còn ')}}<b>{{$Tour->tour_slot}}</b></p>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                    }else {
                    ?>
                    <div class="item_box col-lg-4 col-sm-6" price="{{$Tour->tour_price}}" name="{{$Tour->tour_name_EN}}">
                        <div class="single_place">
                            <div class="thumb">
                                <img src="{{asset('uploads/tours/thumb/'.$Tour->tour_thumb)}}" alt="">
                                <a href="" class="prise tour-price">{{number_format($Tour->tour_price). ' VNĐ'}}</a>
                            </div>
                            <div class="place_info">
                                <a class="tour-name"   href="{{URL::to('/tour/'.$Tour->tour_name_EN)}}"><h3>{{$Tour->tour_name_EN}}</h3></a>
                                <div class="row">
                                    <p class="col-6">{{$Tour->destination_name_EN}}</p>
                                    <p class="col-6" style="text-align: right">{{$Tour->typetour_name_EN}}</p>
                                </div>
                                <div class="rating_days d-flex justify-content-between">
                                        <span class="d-flex justify-content-center align-items-center">
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <i class="fa fa-star"></i>
                                             <a href="#">(Rất tốt)</a>
                                        </span>
                                    <div class="days">
                                    <a href="#">{{$Tour->tour_date}} {{__('-')}}</a>
                                        <a href="#">{{$Tour->tour_day}} {{__('Ngày')}}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                    }
                    ?>

                @endforeach
            </div>
        </div>
    </div>


    <div class="video_area video_bg overlay">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="video_wrap text-center">
                        <h3>Enjoy Video</h3>
                        <div class="video_icon">
                            <a class="popup-video video_play_button" href="https://www.youtube.com/watch?v=f59dDEk57i0">
                                <i class="fa fa-play"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="travel_variation_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single_travel text-center">
                        <div class="icon">
                            <img src="{{('Pages/img/svg_icon/1.svg')}}" alt="">
                        </div>
                        <h3>{{__('Hành trình thoải mái')}}</h3>
                        <p>{{__('Một sự thanh thản tuyệt vời đã xâm chiếm toàn bộ tâm hồn tôi.')}}</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_travel text-center">
                        <div class="icon">
                            <img src="{{('Pages/img/svg_icon/2.svg')}}" alt="">
                        </div>
                        <h3>{{__('Khách sạn sang trọng')}}</h3>
                        <p>{{__('Mang lại sự trải nghiệm và thư giãn tuyệt vời.')}}</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_travel text-center">
                        <div class="icon">
                            <img src="{{('Pages/img/svg_icon/3.svg')}}" alt="">
                        </div>
                        <h3>{{__('Hướng dẫn viên du lịch')}}</h3>
                        <p>{{__('Nhiệt huyết, trẻ trung, năng động')}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- testimonial_area  -->
    <div class="testimonial_area">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="testmonial_active owl-carousel">
                        <div class="single_carousel">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <div class="single_testmonial text-center">
                                        <div class="author_thumb">
                                            <img src="{{('Pages/img/testmonial/author.png')}}" alt="">
                                        </div>
                                        <p>"Vẻ đẹp của Đông Nam Á hiện ra ngay trước mắt tôi, tôi thích sự mộc mạc ở đây</p>
                                        <div class="testmonial_author">
                                            <h3>- Anne Jean</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <div class="single_testmonial text-center">
                                        <div class="author_thumb">
                                            <img src="{{('Pages/img/testmonial/author.png')}}" alt="">
                                        </div>
                                        <p>"Vẻ đẹp của Đông Nam Á hiện ra ngay trước mắt tôi, tôi thích sự mộc mạc ở đây"</p>
                                        <div class="testmonial_author">
                                            <h3>- Visiter</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <div class="single_testmonial text-center">
                                        <div class="author_thumb">
                                            <img src="{{('Pages/img/testmonial/author.png')}}" alt="">
                                        </div>
                                        <p>"Vẻ đẹp của Đông Nam Á hiện ra ngay trước mắt tôi, tôi thích sự mộc mạc ở đây</p>
                                        <div class="testmonial_author">
                                            <h3>- Visiter</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /testimonial_area  -->

@endsection
