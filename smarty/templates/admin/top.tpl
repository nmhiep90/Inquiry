{* top.tpl *}
<html>
    <head>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <style>
        h1{
            text-align: center;
        }
        .container{
            margin:50px auto;
                border: solid 1px;
                border-radius: 10px;
                padding: 10px 10px 10px 10px; 
                width: 700px;
                height: auto;
        }
        </style>
    </head>
<body>
<h1>ログイン後 管理画面</h1>
    <div class="container">
    <h2><a href="./inquiry_list.php">問い合わせ一覧</a></h2>
        <hr>

    <a class="btn btn-primary" href="./logout.php">ログアウト</a>
    </div>
</body>
</html>
