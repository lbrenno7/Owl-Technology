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
		<link rel="shortcut icon" href="images/favicon.ico"/>
		<script language="javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
		
<script language="JavaScript">function selecionar_todas(retorno){var formulario=document.form1;	if(retorno==true){	
	for(i=0;i<formulario.length;i++){			if(formulario.elements[i].type=="checkbox" && formulario.elements[i].name!="todas"){			  if(formulario.elements[i].checked==false){					formulario.elements[i].checked=true;	   		}			}		}	} 	else {		for(i=0;i<formulario.length;i++){			if(formulario.elements[i].type=="checkbox" && formulario.elements[i].name!="todas"){			  if(formulario.elements[i].checked==true){	   			formulario.elements[i].checked=false;			  }			}		}	}}</script>




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
					<h1 id="logo"><a href="homes.jsp">COLETA SELETIVA</span></a></h1>
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

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon fa-envelope"></span>
						<h2>Solicitar Coleta</h2>
						<p>*Campos Obrigatórios.</p>
					</header>

					<!-- One -->
						<section class="wrapper style4 special container 75%">
						
						

							<!-- Form -->
								<div class="content">
									<form method="post" id="form1" name="form1" action="http://localhost:8080/OneCoreProject/ColetaServlet">
									
									

 

 
<div class="row 30%">
<div class="6u">
  <label id="cad">Logradouro*:</label><input type="text" name="tRua" id="rua" size="40"  placeholder="Rua, Av, Travessa..." required/>
  </div>
  <div class="3u">
<label id="cad">Número*: </label> <input type="number" placeholder="345" size="10" name="tNum" id="cNum" min="0" max="99999" required/>
	</div>
	</div><br/>
<input type="hidden" name="email" value="<%= usuario.getEmail()%>">
<input type="hidden" name="pagina" value="scoletaa.jsp">
<label id="cad">Bairro*:</label><input type="text" size="30" name="tBairro" id="bairro" placeholder="Porto alegre" required/><br/>
<br/>

    <label id="cad">Cep*:</label><input type="text" name="tCep" size="30" id="cep" placeholder="CEP" onKeyPress="MascaraCep(form1.cep);"
 maxlength="10" onBlur="ValidaCep(form1.cep)" required><br/>

 
 <label id="cad">Estado*:</label><input type="text" name="tEstado" size="10" placeholder="Pernambuco" id="estado" required><br/>
    
<label id="cad">Cidade*:</label><input type="text" name="tCidade" id="cidade" size="30" placeholder="Caruaru" required/>
<br/>
	 <label id="cad">Data da coleta*:</label><input type="date" name="tData" id="data" size="30" onKeyPress="MascaraData(form1.data);"
 maxlength="10" onBlur= "ValidaDataform1.data);" required><br/><br/>
	 <label id="cad">Horário da coleta*:</label><input type="time" size="20" name="tHora" id="cHor" required/><br/><br/>
	<b>Categorias dos lixos*:</b><br/><br/>
	 <input type="checkbox" name="lixos" id="plastico" value="plastico">Plástico<br/> <br/>

	 <input type="checkbox" name="lixos" id="vidro" value="vidro">Vidro<br/><br/>
	 
	 <input type="checkbox" name="lixos" id="metal" value="metal" > Metal <br/><br/>
	
	 <input type="checkbox" name="lixos" id="papel" value="papel"> Papel <br/><br/>
	
	 
	  <input type="checkbox" name="lixos" id="eletronico" value="eletronico">Eletrônico <br/><br/>
	 
	
	 <input type="checkbox" name="lixos" id="outros" value="outros">Outros <br/><br/>
	 
	 

 

Marcar todos | Desmarcar todos<input name="todas" type="checkbox" value="checkbox" onClick="selecionar_todas(this.checked)">
<br/><br/>
	<label id="cad">Mensagem:</label><textarea  name="tMens" id="cMens" cols="35" rows="5" placeholder="Deixe aqui sua mensagem"></textarea><br/><br/>
    
 
<br/>
<br/>




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