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
	</head>
	<body class="index">
	<%Usuario usuario = (Usuario) session.getAttribute("usuario");
	if (usuario == null){
		response.sendRedirect("index.html");
	}
	%>
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header" class="alt">
					<h1 id="logo"><a href="homes.jsp">COLETA SELETIVA</a></h1>
					<nav id="nav">
						<ul>
							<li class="current"><a href="homes.jsp">HOME</a></li>
							<li class="submenu">
								<a href="#">MENU</a>
								<ul>
									<li><a href="faqs.jsp">FAQ</a></li>
									<li><a href="parcerias.jsp">Parcerias</a></li>
									<li><a href="scoletaa.jsp">Solicitar Coleta</a></li>
									<li><a href="listacoleta.jsp">List.Coletas</a></li>
									<li><a href="rank.jsp">Rank</a></li>
									<li><a href="logout.jsp">Sair</a></li>
								
								</ul>
							</li>
							
						</ul>
					</nav>
				</header>

			<!-- Banner -->
				<section id="banner">

					
					<div class="inner">

						<header>
							<h2>BEM-VINDO!</h2><br/>
							<h1>Quem se liga, SE-PA-RA! </h1>
						</header>
				

					</div>

				</section>

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon fa-bar-chart-o"></span>
						<h2>Ser <strong>sustent�vel</strong> � da nossa natureza.
						
					</header>

					<!-- One -->
						<section class="wrapper style2 container special-alt">
							<div class="row 50%">
								<div class="8u 12u(narrower)">

									<header>
										<h2>Curiosidades sobre a &nbsp; <strong>"Reciclagem"</strong></h2>
									</header>
									<p>A reciclagem de uma �nica lata de alum�nio economiza energia suficiente para manter uma TV ligada durante tr�s horas.
Cerca de 100 mil pessoas no Brasil vivem exclusivamente de coletar latas de alum�nio e recebem em m�dia tr�s sal�rios m�nimos mensais, segundo a Associa��o Brasileira do Alum�nio.
Uma tonelada de papel reciclado economiza 10mil litros de �gua e evita o corte de 17 �rvores adultas.
Cada 100 toneladas de pl�stico reciclado economizam 1 tonelada de petr�leo.
Um quilo de vidro quebrado faz 1kg de vidro novo e pode ser infinitamente reciclado.
O lacre da latinha n�o vale mais e n�o deve ser vendido separadamente.</p> <p> As empresas reciclam a lata com ou sem o lacre. Isso porque o anel � pequeno e pode se perder durante o transporte.
Para produzir 1 tonelada de papel � preciso 100 mil litros de �gua e 5 mil KW de energia. Para produzir a mesma quantidade de papel reciclado, s�o usados apenas 2 mil litros de �gua e 50% da energia.
Cada 100 toneladas de pl�stico economizam uma tonelada de petr�leo.
O vidro pode ser infinitamente reciclado.</p>
									

								</div>
								<div class="4u 12u(narrower) important(narrower)">

									<ul class="featured-icons">
										<li><span class="icon fa-clock-o"><span class="label">Feature 1</span></span></li>
										<li><span class="icon fa-volume-up"><span class="label">Feature 2</span></span></li>
										<li><span class="icon fa-laptop"><span class="label">Feature 3</span></span></li>
										<li><span class="icon fa-inbox"><span class="label">Feature 4</span></span></li>
										<li><span class="icon fa-lock"><span class="label">Feature 5</span></span></li>
										<li><span class="icon fa-cog"><span class="label">Feature 6</span></span></li>
									</ul>

								</div>
							</div>
						</section>

				

				

			<!-- CTA -->
				<section id="cta">

					<header>
						<h2>Pronto para fazer <strong>algo</strong>?</h2>
						<p>Junte-se a n�s e separe voc� tamb�m seu lixo.</p>
					</header>
					<footer>
						<ul class="buttons">
							<li><a href="scoleta.jsp" class="button special">Solicite sua coleta</a></li>
							
						</ul>
					</footer>

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