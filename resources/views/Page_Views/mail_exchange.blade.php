<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gửi mail</title>
</head>
<body>
<h1>{{$title}}</h1>
<h3>Công ty du lịch Paradise xin chân thành cám ơn du khách đã lựa chọn công ty của chúng tôi.</h3>
<h3>Tên khách hàng: {{$customer_name}} </h3>
<p>Chúng tôi xin gửi đến bạn bản hợp đồng và các hình thức thanh toán  !</p>
<p>Tổng tiền: {{ number_format($booking_total_price,0,',','.') }}VNĐ</p>
<p>
    Chuyển khoản ngân hàng: MBBank <br>
    STK: 98787686868 Nguyen Dinh Dat 
</p>


<h4>{{$body1}}</h4>
</body>
</html>
