<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="br.com.fafica.projeto.onecore.modelos.Usuario" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Coleta Seletiva</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<link rel="shortcut icon" href="images/favicon.ico"/>
		
			<script language="javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$("#ocultar").click(function(event){
	  event.preventDefault();
	  $("#capaefectos").hide("slow");
	});
 
	$("#mostrar").click(function(event){
	  event.preventDefault();
	  $("#capaefectos").show(3000);
	});
});
</script>
	</head>
	
	
	<body class="no-sidebar">
	<%Usuario usuario = (Usuario) session.getAttribute("usuario");
	if (usuario == null){
		response.sendRedirect("index.html");
	}
	%>
		<div id="page-wrapper">

			<!-- Header -->
			<header id="header">
					<h1 id="logo"><a href="homer.jsp">COLETA SELETIVA</span> </a></h1>
					<nav id="nav">
						<ul>
							<li class="current"><a href="homer.jsp">HOME</a></li>
							<li class="submenu">
								<a href="#">MENU</a>
								<ul>
									<li><a href="faq.jsp">FAQ</a></li>
									<li><a href="parc.jsp">Parcerias</a></li>
									<li><a href="scoleta.jsp">Solicitar Coleta</a></li>
									<li><a href="listcoleta.jsp">List.Coleta</a></li>
									<li><a href="ranking.jsp">Rank</a></li>
									<li><a href="logout.jsp">Sair</a></li>
								
								</ul>
							</li>
							
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon fa-mobile"></span>
						<h2>Perguntas Frequentes</h2>
						<p></p>
					</header>

					<!-- One -->
						<section class="wrapper style4 container">

							<!-- Content -->
								<div class="content">
									<section>
										
										<header>
											<h3></h3>
										</header>
										<p>
<a href="#" id="ocultar">-</a> | 
<a href="#" id="mostrar">+</a> 
Como o sistema funciona?
	</p>
										
										<div id="capaefectos" style="background-color: #DCDCDC; color:fff; padding:10px;">
 
  <p>Tem como objetivo facilitar o contato dos clientes com as empresas de coleta seletiva, para que sejam realizadas as coletas na residência do cliente, fazendo assim, será muito mais fácil de entrar em contato com tais empresas.</p>

 
</div>
								</section>
								</div>

						</section>

					

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