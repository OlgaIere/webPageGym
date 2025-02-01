<?php

$bd = mysqli_connect("localhost", "root", "", "silka");

    
    
    



?>
<?php
    $imie=$_GET['imie'];
    $nazwisko=$_GET['nazwisko'];
    $telefon=$_GET['telefon'];
    $email=$_GET['email'];
    $nazwa=$_GET['nazwa'];
    $zap1="INSERT INTO user(imie,nazwisko,telefon,email) VALUES('$imie','$nazwisko','$telefon','$email')";
    mysqli_query($bd,$zap1);
    $idnowyuser=mysqli_insert_id($bd);
    //var_dump($idnowyuser);
    $zap2="INSERT INTO zakupy(id_user,id_karnet,data_zakupu) VALUES($idnowyuser,$nazwa,NOW())";
    mysqli_query($bd,$zap2);
    $idzakupu=mysqli_insert_id($bd);
    
       if($nazwa==1)
       { 
           $zap3="UPDATE zakupy SET data_waznosci = NOW() + INTERVAL 1 MONTH where id_zakupu=$idzakupu";
          mysqli_query($bd,$zap3);
        }
        
        else if($nazwa==2)
       { 
            $zap4="UPDATE zakupy SET data_waznosci=NOW() + INTERVAL 3 MONTH  where id_zakupu=$idzakupu";
            mysqli_query($bd,$zap4);
        }
        
       else if($nazwa==3)
        { 
            $zap5="UPDATE zakupy SET data_waznosci=NOW() + INTERVAL 6 MONTH  where id_zakupu=$idzakupu";
             mysqli_query($bd,$zap5);
        }
        
       else if($nazwa==4)
        { 
            $zap6="UPDATE zakupy SET data_waznosci=NOW() + INTERVAL 1 YEAR where id_zakupu=$idzakupu";
            mysqli_query($bd,$zap6);
        }
        
    
    
    
    

   
    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="confetti.css">
    <link rel="stylesheet" href="styl1.css">
</head>
<body>
<header>
  <div class="container-fluid">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
              <a class="navbar-brand" href="#"><img src="./logo3.jpg" alt="logo">   Fit Life</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" href="silownia.html">Strona główna</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="cennik.html">Cennik</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="grafik.html">Grafik</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="kadra2.html">Kadra</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
        </div>
    </header>
   <main><br><br><br><br><br><br><br><br><br> <p><h1>Gratulacje, karnet kupiony!!! 👋</h1></p></main>
     <script src="confetti.js"></script>
    <script>
        const start = () => {
            setTimeout(function () {
                confetti.start();  
            },1000)
        };
        const stop = () =>{
            setTimeout(function(){
                confetti.stop();
            },5000)
        }
           
            start();
            stop();
    </script> 
    <?php

     mysqli_close($bd);
    ?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
     integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>

