<!DOCTYPE HTML>

<html>
	<head>
		<title></title>
		<meta http-equiv="content-type" content="text/html; charset utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.dropotron.min.js"></script>
		<script src="js/jquery.scrolly.min.js"></script>
		<script src="js/jquery.onvisible.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
			<link rel="stylesheet" href="css/style-noscript.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->

  <script language="javascript">
  <!--
  function valida() {
   var s = document.perform.PerguntaSecreta.options[document.perform.PerguntaSecreta.selectedIndex].text;
   if (s == "" || s == null) {
    alert("VAZIO");
   } else {
    alert("CHEIO");
    document.perform.submit();
   }
  }
  -->
  </script>
	</head>
	<body class="esqueciasenha">

		<!-- Header -->
			<div id="header">

				<!-- Inner -->
					<div class="inner">
						<header>
							<h1><a href="index.html" id="logo">Coleta Seletiva</a></h1>
						</header>
					</div>
				
				
				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="index.html">Inicial</a></li>
							<li>
								<a href="">Cadastro</a>
								<ul>
									<li><a href="cadastroempresarial.jsp">Cadastro Empresarial</a></li>
									<li><a href="cadastrousuario.jsp">Cadastro Usuário</a></li>
									
									
								</ul>
							</li>
							<li><a href="login.jsp">Login</a></li>
                                                        <li><a href="esqueciasenha.jsp">Esqueceu a senha</a></li>
							
						</ul>
					</nav>

			</div>
			
		<br>


<h2>Esqueceu sua senha?</h2>
<br>
<form method="post" action="index.html" class="login">
<br>
     
 <label>Email:</label>
  <input type="email" required="required" class="input-text" name="email" placeholder="janedoe@hot..." pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" />
<br>

<label>Pergunta Secreta:</label>
<select name="PerguntaSecreta" form="perform" onChange="valida()">
  <option value="animal">Nome do seu primeiro animal</option> 
    <option value="professor">Seu professor favorito</option> 
    <option value="amigo">Amigo de infância</option> 
    <option value="nasceu">Onde nasceu?</option> 
    <option value="best">Melhor amigo</option> 
    <option value="avo">Nome do seu avô</option> 
    <option value="cor">Cor preferida</option> 
    <option value="musica">Musica preferida</option> 
    <option value="familiar">Familiar que mais gosta</option> 
    <option value="odiar">O que mais odeia?</option> 
    

</select>

<br>

<label>Resposta Secreta:</label>
<input type="text" required="required" name="resposta"  placeholder="Lassie" pattern="[a-z\s]+$" />
<br>




    
<input type="submit" value="Confirmar">
<input type="reset" value="Limpar">
    

  </form>
<br>
		<!-- Footer -->
			<footer id="footer">

				

				<!-- Menu -->
					<ul class="menu">
						<li>Copyright &copy; 2015 One core technology </li><li></a></li>
					</ul>

			</footer>
			

	</body>
</html>