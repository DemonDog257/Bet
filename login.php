<?php
	require"config/db.php";?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Авторизація</title>
	<link rel="stylesheet" href="CSS/style__register.css">	
</head>
<body>
<?php 
$data = $_POST;
if (isset($data)) {
	$errors=array();
		     $query ="SELECT * FROM users WHERE `login` LIKE $data['login'] ";
		     $login= mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link));
		     $user=mysqli_fetch_assoc($login);  
	if ($user['login']==$data['login']) {
		if (password_verify($data['password'],$user['password'])) {
			$_SESSION['loggen_user'] = $user->login;
			echo '<div style="color:green;"> Вы успешно авторизованы <br> <a href="index.php">Перти на головну</a></div> <script>document.location.href="index.php"</script>';
		}
		else{
			$errors[]='Не верный Пароль';
		}
	}
	else{
		$errors[]='Логін не найдено';
	}

}
if (empty($errors)) {
}
else{
	echo '<div style="color:red;"> '.array_shift($errors).'</div><hr>';
}
?>
<form action="login.php" method="POST">
	<label><div class="reg"><img src="image/email.png"> login</div>
		<li><input type="text" name="login" id="login" placeholder="login"value="<?php echo@$data['login']?>"></li>
		</label>
		<label><div class="reg"> <img src="image/notranslatedetected.png"> Пароль</div> 
		<li><input type="password" name="password" id="pswrd" placeholder="password"></li>
		</label>
		<button type="submit" name="do_login" value="Відправити">Увійти</button>
</form>
</body>
</html>