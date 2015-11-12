<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<%@page import="br.com.fafica.projeto.onecore.modelos.Coleta,
br.com.fafica.projeto.onecore.controladores.ColetaControler,
java.util.List, java.util.Date, java.text.DateFormat, java.text.SimpleDateFormat"%>

<!DOCTYPE HTML>

<html>
	<head>
	
	<script>
function confirmaAcao (msg, url, param){ 
	if (confirm(msg)){
		url += '?'+param;
		window.location.href = url;
	} 
	return false;
}
</script>

		<title>Coleta seletiva</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="shortcut icon" href="images/favicon.ico"/>

</head>
	
	
	<body class="contact">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<h1 id="logo"><a href="homes.html">COLETA SELETIVA</span></a></h1>
					<nav id="nav">
						<ul>
							<li class="current"><a href="homes.html">HOME</a></li>
							<li class="submenu">
								<a href="#">MENU</a>
								<ul>
									<li><a href="faqs.html">FAQ</a></li>
									<li><a href="parcerias.html">Parcerias</a></li>
									<li><a href="scoletaa.html">Solicitar Coleta</a></li>
									<li><a href="listacoleta.html">List.Coletas</a></li>
									<li><a href="rank.html">Rank</a></li>
									<li><a href="">Sair</a></li>
								
								</ul>
							</li>
							
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon fa-mobile"></span>
						<h2>Coletas solicitadas por <strong>usuários</strong></h2>
						<p></p>
					</header>

					<!-- One -->
						<section class="wrapper style4 special container 75%">
						
						

							<!-- Form -->
								<div class="content">
								<%String data;
			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
			Date date = new Date();
			data = dateFormat.format(date);%>
									<table id="tabelaspec">
									<caption>Usuários<span> atualidado em <%=data%></span></caption>

<colgroup span="5">
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
<th>Indice</th>
<th>Rua</th>
<th>Nº</th>
<th>Cep</th>
<th>Bairro</th>
<th>Cidade</th>
<th>Data</th>
<th>Hora</th>
<th>Status</th>
</tr>

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
								<td><%=coleta.getCep() %></td>
								<td><%=coleta.getBairro() %></td>
								<td><%=coleta.getCidade() %></td>
								<td><%=coleta.getDataDeColeta() %></td>
								<td><%=coleta.getHorarioDeColeta() %></td>
							
								<td><%if(coleta.getStatus().equals("aguardando")){%>
									<a onClick="confirmaAcao('Tem certeza que deseja atender esta coleta?',
                                            'http://localhost:8080/OneCoreProject/ColetaServlet',
                                            'indicecoleta=<%=coleta.getIndice()%>')">Atender</a>
								<%}else{%>
									Atendido
								<%} %></td>
								
                                                 
                                                    								
								</tr>
								<%
								}
								%>
								
						</table>








<br/>
<br/>

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