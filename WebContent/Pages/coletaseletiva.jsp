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
							<li><a href="homer.html">Home</a></li>
							<li>
								<a href="">Parcerias</a>
								<ul>
									<li><a href="solicitarparceria.jsp">Solicitar Parceria</a></li>
									<li><a href="parceria.html">Parceiros</a></li>
									
									
								</ul>
							</li>
                                                        <li><a href="listarcoleta.jsp">Listar Coleta</a></li>
							<li><a href="coletaseletiva.jsp">Coleta</a></li>
							<li><a href="faqs.html">FAQ</a></li>
							<li><a href="contato.jsp">Contatos</a></li>
                                                       <li><a href="login.jsp" accesskey="4" title="">Sair</a></li>
						</ul>
					</nav>

			</div>
			
		<br>
<br>
<br>
					<h2>Solicitar Coleta</h2>
<br>

<form method="post" action="index.html" class="login">

									



  
<label>Rua:</label>
<input type="text" required="required" placeholder="rua porto alegre" name="rua" pattern="[a-z\s]+$" />
<br>
<label>N�:</label>
<div class="6u"><input type="text" required="required" placeholder="1021" name="numero" pattern="[0-9]+$"/></div> 
<br>
<label>Bairro:</label>
<input type="text" required="required" placeholder="boa vista" name="bairro" pattern="[a-z\s]+$" />
<br>
<label>Cidade:</label>
<input type="text" required="required" name="cidade" placeholder="Recife" pattern="[a-z\s]+$" />
<br>
<label>Estado:</label>
<select name="Estado" form="carform">
  <option value="pe">Pernambuco</option> 
    <option value="al">Alagoas</option> 
    <option value="am">Amazonas</option> 
    <option value="ap">Amap�</option> 
    <option value="ba">Bahia</option> 
    <option value="ce">Cear�</option> 
    <option value="df">Distrito Federal</option> 
    <option value="es">Esp�rito Santo</option> 
    <option value="go">Goi�s</option> 
    <option value="ma">Maranh�o</option> 
    <option value="mt">Mato Grosso</option> 
    <option value="ms">Mato Grosso do Sul</option> 
    <option value="mg">Minas Gerais</option> 
    <option value="pa">Par�</option> 
    <option value="pb">Para�ba</option> 
    <option value="pr">Paran�</option> 
    <option value="ac">Acre</option> 
    <option value="pi">Piau�</option> 
    <option value="rj">Rio de Janeiro</option> 
    <option value="rn">Rio Grande do Norte</option> 
    <option value="ro">Rond�nia</option> 
    <option value="rs">Rio Grande do Sul</option> 
    <option value="rr">Roraima</option> 
    <option value="sc">Santa Catarina</option> 
    <option value="se">Sergipe</option> 
    <option value="sp">S�o Paulo</option> 
    <option value="to">Tocantins</option>
</select>
<br>
<label>Data:</label>
<div class="6u"><input type="date" required="required" maxlength="10" name="date" pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" min="2015-06-14" max="2050-02-18"></div>
<br>
<label>Hor�rio:</label>
 <div class="6u"><input type="time" required="required" maxlength="8" name="hour" pattern="[0-9]{2}:[0-9]{2} [0-9]{2}$" /></div>
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