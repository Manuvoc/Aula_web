<?php 
include "../controller/LivrosController.php";
//Util::verificar();

$livros = new LivrosController();

  if(!empty($_POST['id'])){
    $livros ->update($_POST);
    header("location: LivrosList.php");

  } elseif(!empty($_POST)) {
    $livros ->salvar($_POST);
    header("location: LivrosList.php");

  }

  if(!empty($_GET['id'])){
    $data = $livros ->buscar($_GET['id']);
  }
?>
<html>
  <head>
    <title>Livraria M&M</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  </head>
  <body>
     <!-- Navigation-->
     <nav class="navbar navbar-dark bg-dark fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="./index.php">Livraria M&M</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Livraria</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="./index.php">inicio</a>
          </li>
    
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Cadastros
            </a>
            <ul class="dropdown-menu dropdown-menu-dark">
              <li><a class="dropdown-item" href="./UsuarioForm.php">Usuario</a></li>
              <li><a class="dropdown-item" href="./LivrosForm.php">Livros</a></li>
              <li><a class="dropdown-item" href="#">Acessórios</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</nav>
<br>
<br>
<br>
      <h1>Formulário Livros</h1>
        <form action="LivrosForm.php" method="POST">
            <input type="hidden" name="id" value="<?php echo !empty($data->id) ? $data->id : "" ?>"/><br>
            <label>Gênero do livro</label><br>
            <input type="text" name="genero" value="<?php echo !empty($data->genero) ? $data->genero : "" ?>"/><br>
            <label>Autor</label><br>
            <input type="text" name="autor" value="<?php echo !empty($data->autor) ? $data->autor : "" ?>"/><br>

            <input type="submit" value="Salvar"/>
            <button><a href="LivrosList.php">Voltar</a></button>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
	</body>
</html>