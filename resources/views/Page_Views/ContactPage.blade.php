@extends('Page_Views.Pages_Layout')
@section('content')
<div class="bradcam_area bradcam_bg_3">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="bradcam_text text-center">
                    <h3>About Us</h3>
                    <p>Pixel perfect design with awesome contents</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ bradcam_area  -->

<div class="about_story">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="story_heading">
                    <h3>About us</h3>
                </div>
                <div class="row">
                    <div class="col-lg-11 offset-lg-1">
                        <div class="story_info">
                            <div class="row">
                            <div class="col-lg-8">
                                <b>Với sứ mệnh mang cho khách hàng những chuyến đi hấp dẫn và an toàn, công ty chúng tôi luôn nỗ lực để làm hài lòng quý khách</b>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.113115942603!2d105.80084557425617!3d21.028159487801204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab424a50fff9%3A0xbe3a7f3670c0a45f!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBHaWFvIFRow7RuZyBW4bqtbiBU4bqjaQ!5e0!3m2!1svi!2s!4v1684260094466!5m2!1svi!2s" 
                                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                                <div class="col-lg-4">
                                    
                                        <div class="media contact-info">
                                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                                            <div class="media-body">
                                                <h3>Số 3 Phố Cầu Giấy</h3>
                                                <p>Hanoi, Vietnam</p>
                                            </div>
                                        </div>
                                        <div class="media contact-info">
                                            <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                                            <div class="media-body">
                                                <h3>+84 024 3766 3311</h3>
                                                <p>Mon to Fri 9am to 6pm</p>
                                            </div>
                                        </div>
                                        <div class="media contact-info">
                                            <span class="contact-info__icon"><i class="ti-email"></i></span>
                                            <div class="media-body">
                                                <h3>paradise@gmail.com</h3>
                                                <p>Send us your query anytime!</p>
                                            </div>
                                        </div>
                                    
                                </div>
                                
                            </div>
                        </div>
                        <div class="story_thumb">
                            <div class="row">
                                
                                    <div class="thumb padd_1">
                                        <img src="{{('Pages/img/banner/newsletter.png')}}" alt="">
                                    </div>
                                
                                
                            </div>
                        </div>
                        <div class="counter_wrap">
                            <div class="row">
                                <div class="col-lg-4 col-md-4">
                                    <div class="single_counter text-center">
                                        <h3 class="counter">{{$total_contract}}</h3>
                                        <p>Hợp đồng du lịch đã hoàn thành</p>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single_counter text-center">
                                        <h3 class="counter">{{$total_booking}}</h3>
                                        <p>Đơn booking đã được đặt</p>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single_counter text-center">
                                        <h3 class="counter">{{$total_customer}}</h3>
                                        <p>Khách hàng đã đăt hàng</p>
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

<div class="video_area video_bg overlay">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="video_wrap text-center">
                    <h3>Enjoy Video</h3>
                    <div class="video_icon">
                    
                        <a class="popup-video video_play_button" href="https://www.youtube.com/watch?v=Au6LqK1UH8g">
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





<!-- ================ contact section end ================= -->
@endsection