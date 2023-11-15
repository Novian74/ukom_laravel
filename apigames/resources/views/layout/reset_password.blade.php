<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }
        .header {
            background-color: #007BFF;
            color: #fff;
            padding: 20px;
        }
        .content {
            padding: 20px;
        }
        .button {
            display: inline-block;
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 4px;
        }
    </style>
</head>
<body>
  <div class="container">
    <div class="header">
        <h1>Kode OTP Anda</h1>
    </div>
    <div class="content">
        <p>Berikut adalah kode OTP Anda:</p>
        <h2>{{ $otp }}</h2>
    </div>
    <div class="content">
        <p>Kode ini berlaku selama 5 menit. Harap gunakan segera untuk keamanan akun Anda.</p>
    </div>
    <div class="content">
        <p>Harap jangan memberikan kode ini kepada siapa pun. Kode ini hanya berlaku untuk penggunaan satu kali.</p>
    </div>
    <div class="content">
        <p>Terima kasih telah menggunakan layanan kami.</p>
    </div>
</div>

</body>
</html>
