<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<%@page import="br.com.fafica.projeto.onecore.modelos.Coleta,
br.com.fafica.projeto.onecore.controladores.ColetaControler,
java.util.List"%>
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
			<link rel="stylesheet" href=css/skel.css />
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

							<table class="">
							<%
								Coleta c = new Coleta();
								
								ColetaControler control = ColetaControler.getInstance();
								List<Coleta> coletas = control.listar();
								for (Coleta coleta : coletas){
							%>
							<tr>
								<td><%=coleta.getIndice()%></td>
								<td><%=coleta.getRua() %></td>
								<td><%=coleta.getNumero() %></td>
								<td><%=coleta.getBairro() %></td>
								<td><%=coleta.getCidade() %></td>
								<td><%=coleta.getDataDeColeta() %></td>
								<td><%=coleta.getHorarioDeColeta() %></td>
								</tr>
								<%
								}
								%>
								
						</table>					
							
	
							
							
							<!-- Footer -->
			<footer id="footer">

				

				<!-- Menu -->
					<ul class="menu">
						<li>Copyright &copy; 2015 One core technology </li><li></a></li>
					</ul>

			</footer>
			
	</body>
</html>