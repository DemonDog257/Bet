<?php
	require"config/r.php";?>
  <?php 
require"config/db.php";
   ?>
	<!DOCTYPE html>
	<html>
	<head>
			 <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <link rel="stylesheet" type="text/css" href="CSS/Style__stavki.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
	
	<title>HardBet</title>
		
	</head>
	<body class="container">

			<header  >
			<a href="/">		<img src="image/fon_up.png"></a>
    <nav >

    <div ><h4>
      <div class=" row no-gutters ">
        
      <div class="login about-project__video col-sm-6"> <?php echo $_SESSION['loggen_user']; ?></div>
      <div class="balans about-project__descr col-sm-3" style="margin-bottom:  1%;" >БАЛАНС:
        <?php  
      $query ="SELECT * FROM users ORDER BY login DESC";
$user = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
       ?>
       <?php 
               $query ="SELECT * FROM users ORDER BY login DESC";
$user = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link));
       
       while ($art = mysqli_fetch_assoc($user)) {
        if ($_SESSION['loggen_user']==$art['login']) {
          echo($art['money']);
          $_SESSION['money']=$art['money'];
          $_SESSION['id']=$art['id'];
        }
      }
       ?>  </div><!--<div class="balans about-project__descr col-sm-3" style="margin-top:  1%;" > <a href="#" >Пополнить</a></div>
    </div>--></h4>
  </div>
</nav>
				</header>
        <main>
          <?php echo $_SESSION['error']; ?>
          <div class="stavki">
            <h3>Ставка на финального победителя</h3>
            <div class="stavki__form ">
              <section class="container ">
                  
                    <?php  
                     $query ="SELECT * FROM participants ORDER BY id DESC";
                      $name = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link));
                      $art = mysqli_fetch_assoc($name);
                      if ($art['id']=='') {
                        ?>
                        <div style="text-align:center;">
                        <h2 >ПОБЕДИТЕЛИ ПРОШЛОЙ НИДЕЛИ </h2></div>

                          <?
                      $query ="SELECT * FROM vives ORDER BY id DESC";
                      $name = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link));
                      $control==0;
                      while ($art = mysqli_fetch_assoc($name)) {
                      if ($control==0) {
                      $pub=$art['pubdata'];
                      $control=1;
                     }
                    if ($art['pubdata']==$pub) {
                     ?>
                      <br>
                    <div class="about-project__descr col-sm-4">
                      <input type="text"  value="<?php echo($art['name']); ?>"disabled>
                   </div>
                  <?
                    }
                  if ($art['pubdata']!=$pub) {
                   break;
                    }
                    }} 
                    else{
                    ?>
                    <div class=" row no-gutters ">
                    <?php 
                     $query ="SELECT * FROM participants ORDER BY id DESC";
                    $name = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link));
       while ($art = mysqli_fetch_assoc($name)) {
       ?>

              <div class="about-project__descr col-sm-2">
               <div class="nik"><?php echo $art['name']; ?></div>
                <div class="nik nik1"><?php 
       $quer ="SELECT * FROM gamer ORDER BY id DESC";
$kof = mysqli_query($link, $quer) or die("Ошибка " . mysqli_error($link));
       while ($kofi = mysqli_fetch_assoc($kof)) {
        $test=0;
        if ($art['name']==$kofi['name']) {
          if ($kofi['victory']!=0) {
          
         $a=$kofi['game']/$kofi['victory'];
          $b=100/$a;
          $c=100/($b*0.918)-0.1;
          $c=round($c,2);     
               if (round($c)==1) {
            $c=$c+0.4;
          }
          if(round($c)==0){
            $c=$c+1;
          }
          if ($c>=4) {
            $c=1.4;
          }
        }
          else{ $c=3.1;}
echo $c;  
      $namlog ="SELECT * FROM cof ORDER BY id DESC ";
$cof= mysqli_query($link, $namlog) or die("Ошибка " . mysqli_error($link));

       while ($conf = mysqli_fetch_assoc($cof)) {
      if ($conf['name']==$kofi['name']) {
        $test=1;
        $idcof=$conf['id'];
      }
        }
        if ($test==1) {
          $num=R::load('cof',$idcof);
          $num->cof=$c;
          R::store($num);
        }
       if ($test==0) {
         $num=R::dispense('cof');
         $num->name=$kofi['name'];
         $num->cof=$c;
         R::store($num);
       }
       
                 }}?></div>
                </div>
      <?php   }
       ?></div>
 
              
           <?php  
      $login ="SELECT * FROM stavki ORDER BY id";
$result = mysqli_query($link, $login) or die("Ошибка " . mysqli_error($link)); 
       ?>
       <?php 
       while ($stav = mysqli_fetch_assoc($result)) {
        if ($_SESSION['loggen_user']==$stav['login']) {

          $desk='disabled';
          $desk_mony=$stav['money'];
        }
      }

       ?>
       <br>
                <form method="POST" action="final.php">
                  <div class=" row no-gutters ">
                  <div class="about-project__video col-sm-6">
                <label> <img src="image/coin.svg">Ставка<br>
                <input type="number" name="money" class="col-10"value="<?php echo($desk_mony); ?>" <?php echo($desk); ?>  class="col-12"></label> <br>
                <br>
              </div>
              

                <div class="about-project__descr col-sm-6">

                  <label>Победитель<br>
                    <select class="col-12" name="name" <?php echo($desk); ?>  ><?php  
                            $query ="SELECT * FROM participants ORDER BY id ";
$name = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link));
while ($art = mysqli_fetch_assoc($name)) {
       ?>
       <option><?php echo $art['name']; ?></option><?php } ?>
                    </select>
                </label>
              </div></div>
                <br>
                 <button class="button"> Сделать ставку
                </button>
              </form>
            
            <?php } ?>
             </section> 
</div></div>
             <!--
            <h3>Ставки на то сколько людей выпадет в начале</h3>
                <div class="stavki__form ">
              <section class="container ">
              <div class=" row no-gutters ">
              <div class="about-project__video col-sm-6">

                <form action="kill.php" method="POST">
                <label> <img src="image/coin.svg">Ставка<br>
                <input type="number" name="money" class="col-10"></label> <br>
               
                <label><img  src="image/people.png"  width="120px"> Количество<br>
                  <input type="number" name="kill" class="col-10">
                 </label> <br>
               <button> Сделать ставку
                </button>
              </form>
              </div>

                <div class="about-project__descr col-sm-6">
                <label> коофициент<br>
                <input type="" name="" class="col-10" disabled value="1.6"></label><br>
                  <label> Вероятный выигрыш<br>
                <input type="" name="" class="col-10" disabled value="<?php echo($_SESSION['kill_vive']) ?>"></label> <br>
              </div> 
            </div>
             </section>
            </div>-->
          </div> 
        </main>

	<?php require"footer.php"; ?>
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
	</html><!-- расчёт коофициента
  <?php $a=10/2;
  $b=100/$a;
  $c=100/($b/0.918)-0.1 ?>--> 