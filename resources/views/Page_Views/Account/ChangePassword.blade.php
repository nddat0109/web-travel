@extends('Page_Views.Pages_Layout')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<div class="whole-wrap">
    <div class="container box_1170">
        <div class="section-top-border">
            <div class="row">
                <div class="col-lg-3 col-md-4 mt-sm-30">
                    <div class="single-element-widget">
                        <h3 class="mb-30">Xin chào {{$customer_name=Session::get('customer_name')}}</h3>
                        
                            <div class="switch-wrap d-flex justify-content-between">
                                <p>{{$customer_email=Session::get('customer_email')}}</p>

                            </div>
                            <div class="single-element-widget mt-30">
                                <a class="btn btn-link" href="{{URL::to('/profile')}}">
                                    {{ __('Thông tin cá nhân') }}
                                </a>
                            </div>
                            <div class="single-element-widget mt-30">
                            <?php $customer_id = Session::get('customer_id');?>
                                <a class="btn btn-link" href="{{URL::to('/order/'.$customer_id=Session::get('customer_id'))}}">
                                    {{ __('Đơn đặt chỗ và đánh giá') }}
                                </a>
                            </div> 
                             <div class="single-element-widget mt-30">
                                <a class="btn btn-link" href="{{URL::to('change-password')}}">
                                    {{ __('Đổi mật khẩu') }}
                                </a>
                            </div>
                            
                            <div class="single-element-widget mt-30">
                                <a class="btn btn-link" href="{{URL::to('logout-customer')}}">
                                    {{ __('Đăng xuất') }}
                                </a>
                            </div>
                            
                    </div>
                </div>
               

                <div class="col-lg-8 col-md-8">
                    <h3 class="mb-30">Đổi mật khẩu</h3>
                    <form role="form" action="{{URL::to('change-password-customer')}}" method="post"
                        enctype="multipart/form-data">
                        {{ csrf_field() }}
                        
                        <div class="card-body">
                            <div class="mt-10">
                                <h4>Mật khẩu cũ</h4>
                                <input type="password" name="customer_password" placeholder="{{__('Password')}}"
                                    onfocus="this.placeholder = ''" onblur="this.placeholder = '{{__('Password')}}'"
                                    required class="single-input" value="">
                            </div>
                            <div class="mt-10">
                                <h4>Mật khẩu mới</h4>
                                <input type="password" name="new_cus_password" placeholder="{{__('New password')}}"
                                    onfocus="this.placeholder = ''" onblur="this.placeholder = '{{__('New password')}}'"
                                    required class="single-input" value="">
                            </div>
                            <div class="mt-10">
                                <h4>Xác nhận mật khẩu</h4>
                                <input type="password" name="new_password_confirm" placeholder="{{__('Confirm new pasword')}}"
                                    onfocus="this.placeholder = ''" onblur="this.placeholder = '{{__('Confirm new pasword')}}'"
                                    required class="single-input" value="">
                            </div>
                            <div class="mt-10" style="margin-top:20px;">
                                <div class="submit_btn">
                                    <button class="boxed-btn4" type="submit">{{__('Submit')}}</button>
                                </div>
                            </div>
                            
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection