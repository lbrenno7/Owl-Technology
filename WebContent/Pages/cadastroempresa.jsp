<!DOCTYPE HTML>

<html>
	<head>
		<title>One Core</title>
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
		
	</head>
	<body class="faq">

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
							<li><a href="homes.html">Home</a></li>
                                                        <li><a href="cadastroempresa.jsp">Cadastro Empresa</a></li>
                                                        <li><a href="listarempresa.jsp">Listar Empresa</a></li>
							
                                                        <li><a href="listar.jsp">Listar Coleta</a></li>
							
							
							
                                                        <li><a href="login.jsp" accesskey="4" title="">Sair</a></li>
						</ul>
					</nav>

			</div>
<br>
<br>
			
		
	 <h2>Cadastro de Empresa</h2>
<br>


<form method="post" action="http://localhost:8080/OneCoreProject/EmpresaServlet" class="login">

<br>
<label>Razão social:</label>
<input type="text" required="required" name="razaosocial" pattern="[a-zA-Z\s]+$" />
<br>
  <label>Cnpj:</label>
  <input type="text" required="required" name="cnpj"  pattern="[0-9]+$" />
<br>
<label>Cep:</label>
 <input type="text" required="required" name="cep" placeholder="00000008" pattern="[0-9]+$" />
<br>
 <label>Rua:</label>
 <input type="text" required="required" placeholder="rua porto alegre" name="rua" pattern="[a-zA-Z0-1-9\s]+$" />
<br>
<label>Nº:</label>
<div class="6u"><input type="text" required="required" placeholder="1021" name="numero" pattern="[0-9]+$"/></div> 
<br>
 <label>Bairro:</label>
 <input type="text" required="required" placeholder="boa vista" name="bairro" pattern="[a-zA-Z\s]+$" />
<br>

<label>Cidade:</label>
 <input type="text" required="required" name="cidade" placeholder="Recife" pattern="[a-z\s]+$" />
<br>
<label>Estado:</label>
<select name="estado" form="regiao" onChange="valida()">
  <option value="pe">Pernambuco</option> 
    <option value="al">Alagoas</option> 
    <option value="am">Amazonas</option> 
    <option value="ap">Amapá</option> 
    <option value="ba">Bahia</option> 
    <option value="ce">Ceará</option> 
    <option value="df">Distrito Federal</option> 
    <option value="es">Espírito Santo</option> 
    <option value="go">Goiás</option> 
    <option value="ma">Maranhão</option> 
    <option value="mt">Mato Grosso</option> 
    <option value="ms">Mato Grosso do Sul</option> 
    <option value="mg">Minas Gerais</option> 
    <option value="pa">Pará</option> 
    <option value="pb">Paraíba</option> 
    <option value="pr">Paraná</option> 
    <option value="ac">Acre/option> 
    <option value="pi">Piauí</option> 
    <option value="rj">Rio de Janeiro</option> 
    <option value="rn">Rio Grande do Norte</option> 
    <option value="ro">Rondônia</option> 
    <option value="rs">Rio Grande do Sul</option> 
    <option value="rr">Roraima</option> 
    <option value="sc">Santa Catarina</option> 
    <option value="se">Sergipe</option> 
    <option value="sp">São Paulo</option> 
    <option value="to">Tocantins</option>
</select>
<br>
<label>Telefone:</label>
<input type="tel" required="required"  name="phone"  pattern="\([0-9]{2}\) [0-9]{4,6}-[0-9]{3,4}$" />
<br>
<br>





<input type="submit" value="Confirmar">
<input type="reset" value="Limpar">


</form>
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