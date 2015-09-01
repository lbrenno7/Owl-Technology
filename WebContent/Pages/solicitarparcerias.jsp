<!DOCTYPE HTML>

<html>
	<head>
		<title></title>
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
<script language="javascript">	  
	  function validarTextArea(idObjeto) {
			var texto = '';
		  
		  if (document.getElementById(idObjeto) != null) {
				  texto = document.getElementById(idObjeto).value;
		  }
		  if (texto != null && texto.length > 0) {
				  return true;
		  }
		  else {
				  return false;
				
		  }
	  }
</script>
	<body class="solicitarparcerias">

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
							<li><a href="home.html">Home</a></li>
							<li>
								<a href="">Parcerias</a>
								<ul>
									<li><a href="solicitarparcerias.jsp">Solicitar Parceria</a></li>
									<li><a href="parcerias.html">Parceiros</a></li>
									
									
								</ul>
							</li>
							<li><a href="coleta.jsp">Coleta</a></li>
							<li><a href="faq.html">FAQ</a></li>
							<li><a href="contatos.jsp">Contatos</a></li>
                                                       <li><a href="login.jsp" accesskey="4" title="">Sair</a></li>
						</ul>
					</nav>

			</div>
			
		<br>
								<h2>Solicitar parcerias!</h2>
<br>

					<!-- Contact Form -->
							<form method="post" action="#">
								
                                                                    <label>Nome:</label>
									<div class="12u"><input type="text" required="required" name="nome" placeholder="Nome" pattern="[a-z\s]+$" /></div>
									<br>
								
								          <label>E-mail:</label>
                                                                        <div class="12u"><input type="email" required="required" class="input-text" placeholder="E-mail" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" /></div>
                                                                          <br>
                                                                           <label>Mensagem:</label>
									<div class="12u"><textarea name="message" placeholder="Mensagem" rows="6" onclick="java script: alert(validarTextArea('textArea1'));"></textarea></div>
                                                                        
								
								<br>
											<br> <input type="submit" value="Envie" >
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