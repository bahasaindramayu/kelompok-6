<?php
 
session_start();
include_once("function/koneksi.php");
include_once("function/helper.php"); 

$page = isset($_GET['page']) ? $_GET['page'] : false;

$Id_User = isset($_SESSION['Id_User']) ? $_SESSION['Id_User'] : false;
$User_Name = isset($_SESSION['User_Name']) ? $_SESSION['User_Name'] : false;

$Id_Admin = isset($_SESSION['Id_Admin']) ? $_SESSION['Id_Admin'] : false;
$User_Name2 = isset($_SESSION['User_name']) ? $_SESSION['User_name'] : false;

 
    $soal = $_SESSION['soal'];
 
    $no = $_SESSION['no'];
 
    if(isset($_POST['next'])){
 
        $_SESSION['jawab'][] = $_POST['option'];
 
        if($_POST['option'] == $soal[$no-2]['kunci']){
 
            $_SESSION['score'] = $_SESSION['score'] + 5;
 
        }
 
    }
 
    if(isset($soal[$no-1])){
 
?>
 
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Kaleng | Krama Language - Learning</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/agency.min.css" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script type="text/javascript">
      function timeout()
      {
        var hours=Math.floor(timeLeft/3600);
        var minute=Math.floor((timeLeft-(hours*60*60)-30)/60);
        var second=timeLeft%60;
        var hrs=checktime(hours);
        var mint=checktime(minute);
        var sec=checktime(second);
        if(timeLeft<=0)
        {
          clearTimeout(tm);
          document.getElementById("form1").submit();
        }
        else
        {

          document.getElementById("time").innerHTML=hrs+":"+mint+":"+sec;
        }
        timeLeft--;
        var tm= setTimeout(function(){timeout()},1000);
      }
      function checktime(msg)
      {
        if(msg<10)
        {
          msg="0"+msg;
        }
        return msg;
      }
    </script>

  </head>

  <body id="page-top" onload="timeout()">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color: #212529;">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="index.php?page=home" style="border-right-style: solid; padding-right: 10px">Home</a>
        <?php
          if($Id_Admin){
            echo "<div class='navbar-brand js-scroll-trigger'><b>Hello! Admin, $User_Name2</b></div>";
          }
          else if($Id_User){
            echo "<div class='navbar-brand js-scroll-trigger'><b>Hello! $User_Name</b></div>";
          }
        ?>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
          <?php
          
          if($Id_Admin){
            echo "<li class='nav-item dropdown'>
                      <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownPortfolio' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                        Pelajaran
                      </a>
                      <div class='dropdown-menu dropdown-menu-right' aria-labelledby='navbarDropdownPortfolio'>
                        <a class='dropdown-item' href='index.php?page=kelola_pel'>Kelola Pelajaran</a>
                      </div>
                    </li>";
            }
          else if($Id_User){
            echo "<li class='nav-item'>
                    <a class='nav-link js-scroll-trigger' href='index.php?page=pelajaran'>Pelajaran</a>
                  </li>";
            }
          else{
            echo "<li class='nav-item'>
                    <a class='nav-link js-scroll-trigger' href='index.php?page=pelajaran'>Pelajaran</a>
                  </li>";
          }  

          ?>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.php?page=aksara">Aksara Jawa</a>
            </li>

            <?php
            if($Id_User){
               echo "<li class='nav-item dropdown'>
                      <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownPortfolio' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                        Materi Pembelajaran
                      </a>
                      <div class='dropdown-menu dropdown-menu-right' aria-labelledby='navbarDropdownPortfolio'>
                        <a class='dropdown-item' href='index.php?page=mudah'>Mudah (easy)</a>
                        <a class='dropdown-item' href='index.php?page=sedang'>Sedang (medium)</a>
                        <a class='dropdown-item' href='index.php?page=sulit'>Sulit (hard)</a>
                        <a class='dropdown-item' href='index.php?page=index_kuis&id_user=$_SESSION[Id_User]'>Kuis</a>
                      </div>
                    </li>
                    <li class='nav-item dropdown'>
                      <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownPortfolio' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                        Situs
                      </a>
                      <div class='dropdown-menu dropdown-menu-right' aria-labelledby='navbarDropdownPortfolio'>
                        <a class='dropdown-item' href='index.php?page=apaitu'>Apa itu 'Belajar Bahasa Indramayu'</a>
                        <a class='dropdown-item' href='index.php?page=pertanyaan'>Daftar Pertanyaan Populer</a>
                      </div>
                    </li>
                    <li class='nav-item'>
                      <a class='nav-link js-scroll-trigger' href='index.php?page=contact' style='margin-right: -50px'>Contact</a>
                    </li>
                    ";
            }
            else if($Id_Admin){
            echo "<li class='nav-item dropdown'>
                    <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownPortfolio' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                      Materi Pembelajaran
                    </a>
                    <div class='dropdown-menu dropdown-menu-right' aria-labelledby='navbarDropdownPortfolio'>
                      <a class='dropdown-item' href='index.php?page=upload_materi_mudah'>Upload Materi Mudah (easy)</a>
                      <a class='dropdown-item' href='index.php?page=upload_materi_sedang'>Upload Materi Sedang (medium)</a>
                      <a class='dropdown-item' href='index.php?page=upload_materi_sulit'>Upload Materi Sulit (hard)</a>
                      <a class='dropdown-item' href='index.php?page=kelola_kuis'>Kelola Kuis</a>
                    </div>
                  </li>
                    <li class='nav-item dropdown'>
                      <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownPortfolio' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                        Admin
                      </a>
                      <div class='dropdown-menu dropdown-menu-right' aria-labelledby='navbarDropdownPortfolio'>
                        <a class='dropdown-item' href='index.php?page=data_admin'>Data Admin</a>
                        <a class='dropdown-item' href='index.php?page=tambah_admin'>Tambah Admin</a>
                        <a class='dropdown-item' href='index.php?page=data_user'>Data User</a>
                        <a class='dropdown-item' href='index.php?page=tambah_user'>Tambah User</a>
                      </div>
                  </li>
                  <li class='nav-item'>
                    <a class='nav-link js-scroll-trigger' href='index.php?page=inbox'>Inbox</a>
                  </li>
                  ";
            }
            else{
                echo "<li class='nav-item dropdown'>
                        <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownPortfolio' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                          Materi Pembelajaran
                        </a>
                        <div class='dropdown-menu dropdown-menu-right' aria-labelledby='navbarDropdownPortfolio'>
                          <a class='dropdown-item' href='index.php?page=mudah'>Mudah (easy)</a>
                          <a class='dropdown-item' href='index.php?page=sedang'>Sedang (medium)</a>
                          <a class='dropdown-item' href='index.php?page=sulit'>Sulit (hard)</a>
                          <a class='dropdown-item' href='kuisfail.php' name=''>Kuis</a>
                        </div>
                      </li>
                      <li class='nav-item dropdown'>
                        <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownPortfolio' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                          Situs
                        </a>
                        <div class='dropdown-menu dropdown-menu-right' aria-labelledby='navbarDropdownPortfolio'>
                          <a class='dropdown-item' href='index.php?page=apaitu'>Apa itu 'Belajar Bahasa Indramayu'</a>
                          <a class='dropdown-item' href='index.php?page=pertanyaan'>Daftar Pertanyaan Populer</a>
                        </div>
                      </li>
                      <li class='nav-item'>
                        <a class='nav-link js-scroll-trigger' href='index.php?page=contact'>Contact</a>
                      </li>
                      ";
            }
            ?>
            
            <?php   
            $notif = isset($_GET['notif']) ? $_GET['notif'] : false;

            if($notif=="login"){
              echo "<script>
                  alert('Maaf, Anda harus login terlebih dahulu.');
                  window.location='?page=login';
              </script>";
            }
            ?>
          </ul>
        </div>
      </div>
    </nav>


    <!-- Kuis -->
<p style="margin-top: 250px;"><a href="index_lat_mudah.php">Kembali ke soal 1</a></p>

<h2>
      <script type="text/javascript">
      var timeLeft=1*01*40;
      
      </script>
      
      <div id="time"style="float:right">timeout</div></h2>
 
    <form action="" id="form1" method="POST" style="margin-left: 20px;">
      <div class="container">
        <div class="jumbotron" style="background: #212529;">
          <h4 style="color: #FFD700;">
            <?php
     
                echo $no.". "; $_SESSION['no']++;
     
                echo $soal[$no-1]['soal'];

                $jawaban = $_SESSION['option'][$no-1];
     
                shuffle($jawaban);
     
            ?>
          </h4>
        </div>
      </div>
 
        <br>
      <div class="container">
        <div class="jumbotron" style="background: #212529;">
          <h6 style="color: #FFD700;">
            <?php
     
                for ($i=0; $i < 4; $i++) {
     
            ?>
     
                <input style="margin-bottom: 20px;" align="center" type="radio" name="option" value="<?php echo $jawaban[$i]; ?>" checked="checked" required/> <?php echo $jawaban[$i]; ?></br>
     
            <?php
     
                }
     
             ?>
           </h6>
        </div>
      </div>

      <div class="col-md-2" style="margin-bottom: 100px; margin-left: 100px;">
        <input class="btn btn-primary btn-sm btn-block" type="submit" name="next" value="NEXT">
      </div>

    </form>


   <!-- Footer -->
    <footer style="background: orange;">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <span class="copyright">Copyright &copy; Kaleng 2017</span>
          </div>
          <div class="col-md-4">
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="http://www.twitter.com">
                  <i class="fa fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="http://www.facebook.com">
                  <i class="fa fa-facebook"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="http://www.instagram.com">
                  <i class="fa fa-instagram"></i>
                </a>
              </li>
            </ul>
          </div>
          
        </div>
      </div>
    </footer>


    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->

    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/agency.min.js"></script>
    <script src="js/login.js"></script>

  </body>

</html>
 
<?php
 
    }else{
 
        header("location:result_lat_mudah.php");
 
    }
 
?>