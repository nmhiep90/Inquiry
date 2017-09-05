{* inquiry_list.tpl *}
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<style>
    .container{
        margin:50px auto; 
        width: auto;
        height: auto;
    }
    h1{
        text-align: center;
    }
/*
    .search-title{
        float: left;
    }
*/
    .form-container{
        width: 500px;
        height: auto;
    }
    </style>
    </head>

<body>
    <h1>問い合わせ一覧</h1>
<div class="container">


{* $inquiry_list|var_dump *}
<div class="form-container">
<h4>検索内容をフォームに入力してください</h4>
    
<form action="./inquiry_list.php" method="GET">
<input type="hidden" name="sort" value="{$sort}">
    <label>Name(あいまい)</label><input class="form-control" name="name" value="{$find_string.name}"><br>
    <label>Email</label><input class="form-control" name="email" value="{$find_string.email}"><br>
    <label>誕生日</label><input class="form-control" name="birthday_from" value="{$find_string.birthday_from}">
      ～<input class="form-control" name="birthday_to" value="{$find_string.birthday_to}"><br>
<button class="btn btn-primary">検索</button>
</form>
    </div>

<h3>お問い合わせ一覧</h3>
    <hr>
{if $back_page_flg == true}
  <a href="./inquiry_list.php?sort={$sort}&{$uri_params|unescape}&p={$back_page}" class="btn btn-primary"> Back </a>
{else}
  　　　　
{/if}
{if $next_page_flg == true}
  <a href="./inquiry_list.php?sort={$sort}&{$uri_params|unescape}&p={$next_page}" class="btn btn-primary"> Next </a><br>
{else}
  　　　　
{/if}

<table class="table table-hover">
<tr>
  <th>ID<a href="./inquiry_list.php?sort=id&{$uri_params|unescape}">▲</a>
    <a href="./inquiry_list.php?sort=id_desc&{$uri_params|unescape}">▼</a>
  <th>名前<a href="">▲</a><a href="">▼</a>
  <th>email<a href="">▲</a><a href="">▼</a>
  <th>問い合わせ内容
  <th>返信日時<a href="./inquiry_list.php?sort=response_date&{$uri_params|unescape}">▲</a>
    <a href="./inquiry_list.php?sort=response_date_desc&{$uri_params|unescape}">▼</a>
  <th>
{foreach from=$inquiry_list item=i}
  <tr>
    <td>{$i.inquiry_id}
    <td>{$i.name}
    <td>{$i.email}
    <td>{$i.inquiry_body}
    <td>{$i.response_date}
    <td><a href="./inquiry_detail.php?inquiry_id={$i.inquiry_id|urlencode}" class="btn btn-nomal">問い合わせ詳細</a>
{/foreach}
</table>

<hr>
<a href="./top.php">Topに戻る</a>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</div>
</bod>
</html>
