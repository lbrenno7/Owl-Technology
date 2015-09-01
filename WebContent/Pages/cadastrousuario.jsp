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
   var s = document.estado.regiao.options[document.estado.regiao.selectedIndex].text;
   if (s == "" || s == null) {
    alert("VAZIO");
   } else {
    alert("CHEIO");
    document.estado.submit();
   }
  }
  -->
  </script>
	</head>
	<body class="cadastrousuario">

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
									<li><a href="cadastroempresarial.jsp">Usuário Empresarial</a></li>
									<li><a href="cadastrousuario.jsp">Cadastro Usuário</a></li>
									
									
								</ul>
							</li>
							<li><a href="login.jsp">Login</a></li>
							
						</ul>
					</nav>

			</div>
<br>
<br>
			
		
	 <h2>Cadastro</h2>
<br>
<br>
<br>


<form method="post" action="http://localhost:8080/OneCoreProject/UsuarioPessoaServlet" class="login">

  <label>Nome:</label>
  <input type="text" required="required" placeholder="Jane Doe" name="nome" pattern="[a-zA-Z\s]+$" />
<br>

  <label>Email:</label>
   <input type="email" required="required" class="input-text" placeholder="janedoe@hot..." name="email"  pattern="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" />
<br>
  <label>RG:</label>
  <input type="text" required="required" name="rg" placeholder="somente numeros" pattern="[0-9]+$" />
<br>
 <label>CPF:</label>
 <input type="text" required="required" name="cpf" placeholder="somente numeros" pattern="[0-9]+$" />
<br>
<label>Cep:</label>
 <input type="text" required="required" name="cep" placeholder="somente numeros" pattern="[0-9]+$" />
<br>
 <label>Rua:</label>
 <input type="text" required="required" placeholder="rua porto alegre" name="rua" pattern="[a-zA-Z\s]+$" />
<br>
<label>Nº:</label>
<div class="6u"><input type="text" required="required" placeholder="1021" name="numero" pattern="[0-9]+$"/></div> 
<br>
 <label>Bairro:</label>
 <input type="text" required="required" placeholder="boa vista" name="bairro" pattern="[a-zA-Z\s]+$" />
<br>

<label>Cidade:</label>
 <input type="text" required="required" name="cidade" placeholder="Recife" pattern="[a-zA-Z\s]+$" />
<br>
<label>Estado:</label>
<select name="estado">
    <option value="Acre">Acre</option> 
    <option value="Alagoas">Alagoas</option> 
    <option value="Amazonas">Amazonas</option> 
    <option value="Amapa">Amapá</option> 
    <option value="Bahia">Bahia</option> 
    <option value="Ceara">Ceará</option> 
    <option value="Distrito Federal">Distrito Federal</option> 
    <option value="Espirito Santo">Espírito Santo</option> 
    <option value="Goias">Goiás</option> 
    <option value="Maranhao">Maranhão</option> 
    <option value="Mato Grosso">Mato Grosso</option> 
    <option value="Mato Grosso do Sul">Mato Grosso do Sul</option> 
    <option value="Minas Gerais">Minas Gerais</option> 
    <option value="Para">Pará</option> 
    <option value="Paraiba">Paraíba</option> 
    <option value="Parana">Paraná</option> 
    <option value="Pernambuco">Pernambuco</option> 
    <option value="Piaui">Piauí</option> 
    <option value="Rio de janeiro">Rio de Janeiro</option> 
    <option value="Rio Grande do Norte">Rio Grande do Norte</option> 
    <option value="Rondonia">Rondônia</option> 
    <option value="Rio Grande do Sul">Rio Grande do Sul</option> 
    <option value="Roraima">Roraima</option> 
    <option value="Santa Catarina">Santa Catarina</option> 
    <option value="Sergipe">Sergipe</option> 
    <option value="Sao Paulo">São Paulo</option> 
    <option value="Tocantins">Tocantins</option>
</select>
<br>
<label>Telefone:</label>
<input type="tel" required="required"  name="phone"  pattern="\([0-9]{2}\)[0-9]{4,6}-[0-9]{3,4}$" />
<br>
<label>Senha:</label>
<input type="password" required pattern="[a-zA-Z0-9]{8}" placeholder="8 caracteres" name="pwd1" onchange="form.pwd2.pattern = this.value;">
<br>
<label>Confirme sua senha:</label>
<input type="password" required pattern="[a-zA-Z0-9)]{8}" placeholder="8 caracteres" name="pwd2">
<br>
<label>Pergunta Secreta:</label>
<select name="pergunta">
  <option value="Nome do seu primeiro animal">Nome do seu primeiro animal</option> 
    <option value="Seu professor favorito">Seu professor favorito</option> 
    <option value="Onde nasceu?">Onde nasceu?</option> 
    <option value="Nome do seu Melhor amigo">Nome do seu Melhor amigo</option> 
    <option value="Nome do seu avô">Nome do seu avô</option> 
    <option value="Cor preferida">Cor preferida</option> 
    <option value="Musica preferida">Musica preferida</option> 
    <option value="Familiar que mais gosta">Familiar que mais gosta</option> 
    <option value="O que mais odeia?">O que mais odeia?</option> 
</select>
<br>

<label>Resposta Secreta:</label>
<input type="text" required="required" name="resposta"   pattern="[a-zA-Z0-9\s]+$" />
<br>





<input type="submit" value="Confirmar">
<input type="reset" value="Limpar">
</form>
<br>
<br>
<br>
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