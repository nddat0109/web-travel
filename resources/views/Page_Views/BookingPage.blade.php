<style>
    img {
        border-radius: 4px;
        padding: 5px;
        width: 100%;
        height: auto;
    }
    #main {
        position: relative;
    }
    #main:after {
        content : "";
        display: block;
        position: absolute;
        top: 0;
        left: 0;
        background-image: url({{asset('pages/img/page_1.jpg')}});
        width: 100%;
        height: 100%;
        opacity : 0.2;
        z-index: -1;
    }
    .back_booking{
        position: absolute;
        top: 75%;
        left: 58%;
        font-family: "Nunito Sans", sans-serif;
    }
</style>
<div>

</div>
<div id="main" class="container-fluid" style="">
    <div class="container text-center"  >
        <img src="{{asset('pages/img/rquest.png')}}">
        <div class="back_booking">
            <hr>
            <p>
                Having trouble? <a href="{{URL::to('/contact')}}">Contact us</a>
            </p>
            <p class="lead">
                <a style="background-color:#12519a;" class="btn btn-secondary btn-lg" href="{{URL::to('/')}}" role="button">Về trang chủ</a>
            </p>
        </div>
    </div>
</div>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js'></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
