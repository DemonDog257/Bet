<?php
	require"config/r.php";
	?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">

	<link rel="stylesheet" type="text/css" href="CSS/style__register.css">
	<title>register</title>
</head>
<body >
<?php 
$data = $_POST;
if (isset($data['do_signup'])) {
	$errors=array( );
		if (trim($data['login'])== '') {
	 	$errors[]='Введите логин';
	}
	if ($data['password']== '') {
		$errors[]='Введите пароль';
	}
	if ($data['password2']!= $data['password']) {
		$errors[]='Пароли не совпадают';
	}
	if (trim($data['email'])== '') {
		$errors[]='Введите email';
	}
	if (R::count('users',"login = ?",array($data['login']))>0) {
		$errors[]='Пользователь с таким логином уже сущевствует';
	}
	if (R::count('users',"email = ?",array($data['email']))>0) {
		$errors[]='email Уже зарегестрирован';
	}
	if (empty($errors)) {
		$user=R::dispense('users');
		$user->login=$data['login'];
		$user->password=password_hash($data['password'], PASSWORD_DEFAULT);
		$user->email=$data['email'];
		$user->number=$data['number'];
		$user->money=100;
		$user->varefait=0;
		$user->token=$token=substr( str_shuffle(str_repeat('0123456789qwertyuiopasdfghjklzxcvbnm', 30)),0, 30);
		R::store($user);
		var_dump($data['email']);
		mail($data['email'], 'Register',"http://hard/awtoriseit/"$token);
		echo '<div style="color:green;"> Вы зарегестрированы проверьте электроную почту вам пришол ваш логин и пароль пройдите авторизацию для продолжения  </div> <script>document.location.href="login.php"</script><hr>';
	}
	else{
		echo '<div style="color:red;"> '.array_shift($errors).'</div><hr>';
	}
}
 ?><div class=" register"><img src="image/zamok.png" >Реєстрация <a href="login.php">Вхід</a></div>
<form action="register.php" method="POST" style="margin-top: 4%;">
	
	<ul>
		<label> <div class="reg"> <img src="image/log.png"> Логін</div>
		<li><input type="text" name="login" id="lest-name" placeholder="login"value="<?php echo@$data['login']?>"></li>
		</label>
		<label><div class="reg"> <img src="image/notranslatedetected.png"> Пароль</div>
		<li><input type="password" name="password" id="pswrd" placeholder="password"></li>
		</label>
		<label><div class="reg"><img src="image/notranslatedetected.png">повторіть пароль</div> 
		<li><input type="password" name="password2" id="password2" placeholder="password2"></li>
		</label>
		<label> <div class="reg"><img src="image/email.png"> EMAIL</div>
			<li><input id="email" type="email" name="email"placeholder=" email"value="<?php echo@$data['email']?>" ></li>
		</label>

		
	    <button type="submit" name="do_signup" value="Відправити">За реєструватися</button>
		</ul>
	</form>

</body>
</html>