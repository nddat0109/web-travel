@extends('Admin_Views.Admin_Layout')
@section('content')
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-5 align-self-center">
                <h4 class="page-title">{{__('Liên hệ mới')}}</h4>
                <div class="d-flex align-items-center">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('Contract')}}</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12 col-lg-6">
            <div class="card">
                <form role="form" action="{{URL::to('/add-custom-contract')}}" method="post" enctype="multipart/form-data">
                    {{csrf_field() }}
                    <div class="card-body">
                        <div class="d-flex no-block align-items-center">
                            <h4 class="card-title">{{__('Tìm kiếm tour được xác nhận tùy chỉnh')}}</h4>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <label for="" class="control-label col-form-label">{{__("Tùy chỉnh tour")}}</label>
                            </div>
                            <div class="col-lg-10 col-sm-9">
                                <div class="form-group">

                                    <select name="custom_id" id="" class="form-control">
                                        @foreach($all_custom as $all_custom)
                                            <option value="{{$all_custom->custom_id}}">custom code: {{$all_custom->custom_code}}    &nbsp&nbsp&nbsp&nbsp&nbsp  Date: {{$all_custom->created_at}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group m-b-0 text-center">
                                <button type="submit" class="btn waves-effect waves-light btn-success">{{__('Search')}}</button>
                            </div>
                        </div>
                    </div>
                    <hr>
                </form>
            </div>
           @yield('content2')
        </div>
    </div>
@endsection
