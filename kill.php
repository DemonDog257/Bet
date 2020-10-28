<?php
require"config/r.php";?>
  <?php 
require"config/db.php";
   ?>
                         <?php
                $data=$_POST;
                if ($data['money']!='') {
                if ($data['money']!=0) {
                
                if ($data['money']>$_SESSION['money']) {
                  $_SESSION['error']= '<div style="color:red;">Увас недостаточно денег</div>';
                }
                else{
                  $stavki=R::dispense('kill');
                  $_SESSION['kill_vive']=$data['money']*1.6;
                  $stavki->money=$data['money']; 
                  $stavki->kill=$data['kill']; 
                  $stavki->login=$_SESSION['loggen_user'];
                  R::store($stavki);
                  $coin=$_SESSION['money']-$data['money'];
                  $mone=R::load('users',$_SESSION['id']);
                  $mone->money=$coin;
                  R::store($mone);
                  $data['money']=0;
                $_POST==0;
                $_SESSION['error']= '';

}}}

                 ?>
                 <script>document.location.href="stavcki.php"</script>