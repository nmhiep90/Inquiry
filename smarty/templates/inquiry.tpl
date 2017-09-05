{* inquiry.tpl *}
<html>
    <head>
<link rel="stylesheet" type="text/css" href="css/example.css">
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
            button{
                float: right;
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

    <head>

<body>
    <h1>お問い合わせ</h1>
    <div class="container">
{if 0 < $error_detail_count}
  <div style="color: red;">エラーがあります</div>
{/if}

{if true == $error_detail.error_must_email}
  <div style="color: red;">メアドは必須です。</div>
{/if}
{if true == $error_detail.error_csrf_token}
  <div style="color: red;">CSRFトークンエラー</div>
{/if}

{*
error_must_body
error_format_email
error_format_birthday
error_csrf_timeover
*}

  <form role="form" action="./inquiry_fin.php" method="post">
    <label for="exampleInputEmail1">メールアドレス(*):</label>
      <input type="email" class="form-control" id="exampleInputEmail1" placeholder="メールを入力してください" name="email" value="{$input.email}"><br>

    <label for="name">名前:</label>
      <input type="text" class="form-control" placeholder="名前を入力してください" name="name"
        value="{$input.name}"><br>

      <label for="birthday">誕生日:</label>
      <input type="text" class="form-control" placeholder="xxxx年-xx月-xx日" name="birthday"
        value="{$input.birthday}"><br>

      <label>問い合わせ内容:</label>
      <textarea class="form-control" name="body">{$input.body}</textarea><br>

    <input type="hidden" name="csrf_token"
        value="{$csrf_token}">

    <button type="submit" class="btn btn-primary">問い合わせる</button>
  </form>
    </div>
</body>
</html>
