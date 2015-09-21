<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<%@page import="br.com.fafica.projeto.onecore.modelos.Coleta,
br.com.fafica.projeto.onecore.controladores.ColetaControler,
java.util.List"%>


<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8" />

<title>Coleta Seletiva</title>
<link rel="stylesheet" href="_css/estilo.css"/>
<link rel="stylesheet" href="_css/specs.css"/>


</head>
<script language="javascript" src="_javascript/funcoes.js">

</script>

<body>
<div id="interface">
<header id="cabecalho">

<hgroup>

<h1></h1>
<h2></h2>
</hgroup>
<img id="icone" src="_imagens/Actions-view-calendar-list-icon.png"/>
<nav id="menu">
<h1>Menu Principal</h1>
  <ul type="disc">
   <li onmouseover="mudaFoto('_imagens/home.png')" onmouseout="mudaFoto('_imagens/Actions-view-calendar-list-icon.png')"><a href="index.html">Inicial</a></li>
 <li onmouseover="mudaFoto('_imagens/parc.png')" onmouseout="mudaFoto('_imagens/Actions-view-calendar-list-icon.png')"><a href="parcerias.html"> Parcerias</a></li>
  <li onmouseover="mudaFoto('_imagens/recy.png')" onmouseout="mudaFoto('_imagens/Actions-view-calendar-list-icon.png')"><a href="reciclando.html"> Reciclando</a></li>
 <li onmouseover="mudaFoto('_imagens/faq_img.png')" onmouseout="mudaFoto('_imagens/Actions-view-calendar-list-icon.png')"><a href="faq.html">FAQ</a></li>
 <li onmouseover="mudaFoto('_imagens/Actions-view-calendar-list-icon.png')" onmouseout="mudaFoto('_imagens/Actions-view-calendar-list-icon.png')"><a href="listarcoleta.html">Listar coleta</a></li>
 <li onmouseover="mudaFoto('_imagens/coleetaa.png')" onmouseout="mudaFoto('_imagens/Actions-view-calendar-list-icon.png')"><a href="coleta.html">Coleta</a></li>

  </ul> 
 </nav>
</header>
 <section id="corpo-full">
 <article id="noticia-principal">
 <header id="cabecalho-artigo">
 <hgroup>
<h3>Home &nbsp; > &nbsp; Listar coleta</h3>
<h1>Listagem de coletas solicitadas por usuários</h1>

<h3 class="direita">Atualizado em 17/Agosto/2015</h3>

</hgroup>
</header>



<table id="tabelaspec">
<caption>Usuários<span> Mar/2015</span></caption>
<colgroup span="5">
<col class="coluna1"/>
<col class="coluna2"/>
<col class="coluna3"/>
<col class="coluna4"/>
<col class="coluna5"/>
</colgroup>


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








<br/>
<br/>









</article>
</section>

</section>
<footer id="rodape">
<p>Copyright 2013 - by One Core<br/>
<a href="http://facebook.com/cursosemvideo" target="_blank">Facebook</a> | Twitter</p>
</footer>
</div>
</body>
</html>