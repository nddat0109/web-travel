    <!-- where_togo_area_start  -->
    <div class="where_togo_area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3">
                    <div class="form_area">
                        <h3>{{__('Bạn muốn đi đâu?')}}</h3>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="search_wrap">
                        <form class="search_form" action="{{URL::to('search-1')}}" method="get" >
                            <div class="input_field">
                                <select name="destination_id">
                                    <option data-display="{{__('Điểm đến')}}"></option>
                                    <option value="1">{{__('Hạ Long')}}</option>
                                    <option value="2">{{__('Ninh Bình')}}</option>
                                    <option value="3">{{__('Nha Trang')}}</option>
                                    <option value="4">{{__('Đà Nẵng')}}</option>
                                    <option value="5">{{__('Đà Lạt')}}</option>
                                    <option value="6">{{__('Phú Quốc')}}</option>
                                    <option value="7">{{__('Hà Nội')}}</option>
                                    <option value="8">{{__('Đồng Tháp')}}</option>
                                    {{-- <option data-display="{{__('Điểm đến')}}"></option>
                                    @foreach ($dest as $key =>$Dest)
                                        <option value="{{ $Dest->destination_id }}">{{$Dest->destination_name_VI}}</option>
                                    @endforeach --}}
                                </select>
                            </div>
                            <div class="input_field">
                                <input id="datepicker" placeholder="Ngày">
                            </div>
                            <div class="input_field">
                                <select name="typetour_id">
                                    <option data-display="{{__('Loại du lịch')}}"></option>
                                    <option value="1">{{__('Du lịch ẩm thực')}}</option>
                                    <option value="2">{{__('Du lịch tham quan')}}</option>
                                    <option value="3">{{__('Du lịch nghỉ dưỡng')}}</option>
                                    <option value="5">{{__('Du lịch đô thị')}}</option>
                                    <option value="6">{{__('Du lịch sinh thái')}}</option>
                                    <option value="7">{{__('Du lịch khám phá')}}</option>
                               
                                </select>
                            </div>
                            <div class="search_btn">
                                <button class="boxed-btn4 " type="submit" >{{__('Tìm kiếm')}}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- where_togo_area_end  -->

