<?php
//declaraçao de atributo
$imagem = "midias/img1.jpg";
$titulo = "PC Gamer Completo Intel";
$resumo = "PC Gamer Completo Intel Core i7 16GB SSD 512GB Monitor 19 Kit Gamer Strong Tech";
$valor= 1900;
$quantidade = 100;
$i = 1;
?>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>O lojinha</title>
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
              <a class="navbar-brand" href="index.html">LogoDaLojinha</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.html">Inicial</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="categoria.html">Categorias</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="subcategoria.html">Sub-Categorias</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
    </header>
<main class="container">
    <div id="carouselExampleIndicators" class="carousel slide">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="6" aria-label="Slide 7"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="carrosel/caro1.webp" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="carrosel/caro2.webp" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="carrosel/caro3.webp" class="d-block w-100" alt="...">  
          </div>
          <div class="carousel-item">
            <img src="carrosel/carro4.webp" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="carrosel/carro5.webp" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="carrosel/caro6.webp" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="carrosel/caro7.webp" class="d-block w-100" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      <div class="row">
        <?php while ($i<=10){ ?>
        <div class="col mt-2">
        <div class="card" style="width: 18rem;">
  <img src="<?php echo $imagem; ?>" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title"><?php echo$titulo; ?></h5>
    <p class="card-text"><?php echo $resumo; ?></p>
    <p class="text-danger">Valor:<b>R$ <?php echo $valor; ?></b></p>
    <p class="text-primary">Estoque: <?php echo $quantidade; ?></p>
    <a href="#" class="btn btn-primary">Ver Produto</a>
  </div>
</div>
        </div>
        <?php $i++; }//$i=$i+1?>
      </div>
</main>
 <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>   
</body>
</html>   