<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="br.com.fafica.projeto.onecore.modelos.Usuario" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Coleta seletiva</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<script language="JavaScript" type="text/javascript" src="assets/js/MascaraValidacao.js"></script>
		<script src="http://code.jquery.com/jquery-1.9.0.min.js" type="text/javascript"></script>
		<link rel="shortcut icon" href="images/favicon.ico"/>
		 <script type='text/javascript' src='//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'></script>
        <script type='text/javascript' src='cep.js'></script>
<script 
src="https://raw.github.com/danpalmer/jquery.complexify.js/master/jquery.complexify.js"></script>
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		

</head>
	
	
	<body class="contact">
	<%Usuario usuario = (Usuario) session.getAttribute("usuario");
	if (usuario == null){
		response.sendRedirect("index.html");
	}
	%>
		<div id="page-wrapper">

			<!-- Header -->
					<header id="header">
					<h1 id="logo"><a href="home.jsp">COLETA SELETIVA</span></a></h1>
					<nav id="nav">
						<ul>
							<li class="current"><a href="home.jsp">HOME</a></li>
							<li class="submenu">
								<a href="#">MENU</a>
								<ul>
									<li><a href="cadempresa.jsp">Cad. Empresa</a></li>
									<li><a href="listarcoleta.jsp">Listar Coleta</a></li>
									<li><a href="listaempresa.jsp">Listar Empresa</a></li>
									<li><a href="logout.jsp">Sair</a></li>
								
								</ul>
							</li>
							
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon fa-envelope"></span>
						<h2>Cadastro Empresa</h2>
						<p>*Campos Obrigatórios.</p>
					</header>

					<!-- One -->
						<section class="wrapper style4 special container 75%">
						
						

							<!-- Form -->
								<div class="content">
<form method="post" id="form1" class="form1" action="http://localhost:8080/OneCoreProject/EmpresaServlet" name="form1">


  <div class="row 20%">
											
										</div><br/>

	 <label id="cad">Razão Social*:</label><input type="text" name="tRazao" id="cRazao"  size="40" placeholder="" required/><br/>
	 
	 <label id="cad">Cnpj*:</label><input type="text" name="cnpj" size="30" onKeyPress="MascaraCNPJ(form1.cnpj);" 
maxlength="18" onBlur="ValidarCNPJ(form1.cnpj);" required><br/>
	
	<label id="cad">Telefone*:</label><input type="tel" name="tel" size="30" placeholder="(81) 5555-5555" onKeyPress="MascaraTelefone(form1.tel);" 
maxlength="14"  onBlur="ValidaTelefone(form1.tel);" required><br/>

	
 
	 
  

    <div class="row 30%">
<div class="6u">
  <label id="cad">Logradouro*:</label><input type="text" name="rua" id="rua" size="40"  placeholder="Rua, Av, Travessa..." required/>
  </div>

  <div class="3u">
<label id="cad">Número*: </label> <input type="number" placeholder="345" size="10" name="tNum" id="cNum" min="0" max="99999" required/>
	</div>
	</div><br/>

<label id="cad">Bairro*:</label><input type="text" size="30" name="bairro" id="bairro" placeholder="Porto alegre" required/><br/>
	
<label id="cad">Cep*:</label><input type="text" name="cep" size="30"  id="cep" placeholder="CEP" onKeyPress="MascaraCep(form1.cep);"
 maxlength="10" onBlur="ValidaCep(form1.cep)" required><br/>

 
 <label id="cad">Estado*:</label><input type="text" name="estado" id="estado" size="10" placeholder="Pernambuco" required><br/>
    
    
<label id="cad">Cidade*:</label><input type="text" name="cidade" id="cidade"  size="30" placeholder="Caruaru" required/>
<br/>

	
<!-- Fim do enderço -->
<!-- Segurança -->	
	


 

   
   <!-- BUTTONS -->
	




<input type="submit" onClick="checkMe()" value="ENVIAR">

<input type="reset" value="CANCELAR">
<br/>
<br/>

</form>
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