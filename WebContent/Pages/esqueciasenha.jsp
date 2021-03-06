<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="br.com.fafica.projeto.onecore.modelos.Usuario"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Coleta seletiva</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<script language="JavaScript" type="text/javascript" src="MascaraValidacao.js"></script>
		<script src="http://code.jquery.com/jquery-1.9.0.min.js" type="text/javascript"></script>
		<link rel="shortcut icon" href="images/favicon.ico"/>
<script 
src="https://raw.github.com/danpalmer/jquery.complexify.js/master/jquery.complexify.js"></script>
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		
		
</head>
	
	
	<body class="contact">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<h1 id="logo"><a href="index.html">COLETA SELETIVA</span> </a></h1>
					<nav id="nav">
						<ul>
							<li class="current"><a href="index.html">HOME</a></li>
							<li class="submenu">
								<a href="#">MENU</a>
								<ul>
									<li><a href="cadusuario.html">Cad. Usu�rio</a></li>
									<li><a href="cadempresarial.html">Cad. Empresarial</a></li>
									
								
								</ul>
							</li>
							
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon fa-envelope"></span>
						<h2>Esqueceu sua senha?</h2>
						<p></p>
						
						
					</header>

					<!-- One -->
						<section class="wrapper style4 special container 75%">
						
						<%String senha = (String)session.getAttribute("senha");
						if(senha != null){%>
						
						<h1>sua senha � : <%=senha%></h1>
						<footer>
						<ul class="buttons">
							<li><a href="index.html" class="button special">voltar</a></li>
							
						</ul>
					</footer>
						<%session.invalidate();}
						else{%>

							<!-- Form -->
								<div class="content">
								
	<form method="post" id="fContato" action="../LembrarSenhaServlet">

    <label id="cad">E-mail:</label><input type="email" name="tEmail"id="cEmail" size="30"  placeholder="Digite seu e-mail"/><br/>
   
	 <label id="cad">Pergunta Secreta:</label> 
	 <select name="tPerg" id="cPerg" form="perform" onChange="valida()" >
    <option value="animal">Nome do seu primeiro animal</option> 
    <option value="professor">Seu professor favorito</option> 
    <option value="amigo">Amigo de inf�ncia</option> 
    <option value="nasceu">Onde nasceu?</option> 
    <option value="best">Melhor amigo</option> 
    <option value="avo">Nome do seu av�</option> 
    <option value="cor">Cor preferida</option> 
    <option value="musica">Musica preferida</option> 
    <option value="familiar">Familiar que mais gosta</option> 
    <option value="odiar">O que mais odeia?</option> 
    </select><br/><br/>
<label id="cad">Resposta Secreta:</label>
<input type="text" name="tResp" id="cResp" size="30"  placeholder="Lassie"/>
<label id="cad"></label><br/><br/>
<input type="submit" value="enviar"><%} %>
								</div>

						</section>

				</article>
				
				 <!-- Fim do Form -->


			<!-- Footer -->
				<footer id="footer">

					<ul class="icons">
						<li><a href="#" class="icon circle fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon circle fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon circle fa-google-plus"><span class="label">Google+</span></a></li>
						<li><a href="#" class="icon circle fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon circle fa-dribbble"><span class="label">Dribbble</span></a></li>
					</ul>

					<ul class="copyright">
						<li>&copy; Owl Technology</li><li>2015</a></li>
					</ul>

				</footer>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollgress.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>