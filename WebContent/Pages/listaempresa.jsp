<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<%@page import="br.com.fafica.projeto.onecore.modelos.Empresa,
br.com.fafica.projeto.onecore.controladores.EmpresaControler,
java.util.List, java.sql.SQLException, java.util.Date, java.text.DateFormat, java.text.SimpleDateFormat, 
br.com.fafica.projeto.onecore.modelos.Usuario"%>

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
	<body class="no-sidebar">
	<%Usuario usuario = (Usuario) session.getAttribute("usuario");
	if (usuario == null){
		response.sendRedirect("index.html");
	}
	%>
		<div id="page-wrapper">

			<!-- Header -->
					<header id="header">
					<h1 id="logo"><a href="home.jsp">COLETA SELETIVA</span> </a></h1>
					<nav id="nav">
						<ul>
							<li class="current"><a href="home.jsp">HOME</a></li>
							<li class="submenu">
								<a href="#">MENU</a>
								<ul>
									<li><a href="cadempresa.jsp">Cad. Empresa</a></li>
									<li><a href="listarcoleta.jsp">List.Coleta</a></li>
									<li><a href="listaempresa.jsp">List.Empresa</a></li>
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
						<h2>Coletas solicitadas por <strong>empresas</strong></h2>
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
										<%String data;
			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
			Date date = new Date();
			data = dateFormat.format(date);%>
										
										<table id="tabelaspec">
										<caption>Empresas<span> atualidado em <%=data%></span></caption>
<colgroup span="8">
<col class="coluna1"/>
<col class="coluna2"/>
<col class="coluna3"/>
<col class="coluna4"/>
<col class="coluna5"/>
<col class="coluna6"/>
<col class="coluna7"/>
<col class="coluna8"/>
<col class="coluna9"/>
</colgroup>
<tr>
<th>Empresa</th>
<th>CNPJ</th>
<th>CEP</th>
<th>Rua</th>
<th>nº</th>
<th>Bairro</th>
<th>Cidade</th>
<th>Estado</th>
<th>Telefone</th>
</tr>


							<%
								Empresa e = new Empresa();
								
								EmpresaControler control = EmpresaControler.getInstance();
								List<Empresa> empresas = control.listar();
								for (Empresa empresa : empresas){
							%>
							<tr>
							
							<br>
							
								<td><%=empresa.getRazaoSocial()%></td>
								<td><%=empresa.getCNPJ() %></td>
								<td><%=empresa.getCep() %></td>
								<td><%=empresa.getRua() %></td>
								<td><%=empresa.getNumero() %></td>
								<td><%=empresa.getBairro() %></td>
								<td><%=empresa.getCidade() %></td>
								<td><%=empresa.getEstado() %></td>
								<td><%=empresa.getTelefone() %></td>
								</tr>
								<%
								}
								%>
								<br>
								<br>
								<br>
								
						</table>
<br/>
<br/>
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