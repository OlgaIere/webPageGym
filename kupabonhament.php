
<?php

$bd = mysqli_connect('localhost', 'root', '', 'silka');
?>

<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Siłownia</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="stylnowuzyt.css">
</head>

<body> 
<header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
              <a class="navbar-brand" href="#"><img src="./logo3.jpg" alt="logo">   Fit Life</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" href="./silownia.html">Strona główna</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Cennik</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Grafik</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Kadra</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
    </header>
    <main> 
        <div class="container">
<h1>Kup abonament</h1><br><h3>Wypełnij dane</h3>
    <form action="nowyuzytkownik.php" metoth ="GET">
    <label>
        <br>
    <input type="text" name="imie" id="im" placeholder="Imię"> 
</label><br><br>
    <label>
    <input type="text" name="nazwisko" id="naz" placeholder="Nazwisko">
</label><br><br>
    <label>
    <input type="text" name="telefon" id="tel" placeholder="Telefon">
</label><br><br>
    <label>
    <input type="email" name="email" id="emai" placeholder="Email">
</label><br><br>
    <h3>Wybierz swój karnet</h3><br>

    <label>
    <select name="nazwa" multiple size="4" >
        <option value="1">Karnet na 1 miesiąc</option>
        <option value="2">Karnet na 3 miesiące</option>
        <option value="3">Karnet na 6 miesiące</option>
        <option value="4">Karnet na 1 rok c</option>
        
    </select>
</label><br><br>
    <label>
    <input type="submit" value="Kupuję">
</label><br><br>
    

    
</form>
</div>
    


    

   
    <?php
    mysqli_close($bd);
    ?>
    </main>
</body>

</html>