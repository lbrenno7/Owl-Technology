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
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body class="coleta">

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
							<li><a href="home.html">Home</a></li>
							<li>
								<a href="">Parcerias</a>
								<ul>
									<li><a href="solicitarparcerias.jsp">Solicitar Parceria</a></li>
									<li><a href="parcerias.html">Parceiros</a></li>
									
									
								</ul>
							</li>
							<li><a href="coleta.jsp">Coleta</a></li>
							<li><a href="faq.html">FAQ</a></li>
							<li><a href="contatos.jsp">Contatos</a></li>
                                                       <li><a href="login.jsp" accesskey="4" title="">Sair</a></li>
						</ul>
					</nav>

			</div>
			
		<br>
<br>
<br>
					<h2>Solicitar Coleta</h2>
<br>

<form method="post" action="http://localhost:8080/OneCoreProject/ColetaServlet" class="login">

									
  
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
<label>Data:</label>
<div class="6u"><input type="date" required="required" maxlength="10" name="date" pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" min="2015-06-14" max="2050-02-18"></div>
<br>
<label>Horário:</label>
 <div class="6u"><input type="time" required="required" maxlength="8" name="hour" pattern="[0-9]{2}:[0-9]{2}$" /></div>
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