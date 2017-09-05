{* index.tpl *}
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
                width: 400px;
                height: auto;
        }
        button{
            float: right;
        }
        </style>
    </head>
<body>
<h1>管理画面</h1>
    <div class="container">
<form action="./login.php" method="post">
    <label>ID:</label><input class="form-control" name="id"><br>
    <label>Password:</label><input type="password" class="form-control" name="pw"><br>
<br>
<button class="btn btn-primary">ログイン</button>
</form>
    </div>
</body>
</html>
