<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<%@page import="br.com.fafica.projeto.onecore.modelos.Empresa,
br.com.fafica.projeto.onecore.controladores.EmpresaControler,
java.util.List, java.sql.SQLException"%>
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
							<table style="width:100%">
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
	
							
							
							<!-- Footer -->
			<footer id="footer">

				

				<!-- Menu -->
					<ul class="menu">
						<li>Copyright &copy; 2015 One core technology </li><li></a></li>
					</ul>

			</footer>
			
	</body>
</html>