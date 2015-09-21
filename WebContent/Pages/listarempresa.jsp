<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<%@page import="br.com.fafica.projeto.onecore.modelos.Empresa,
br.com.fafica.projeto.onecore.controladores.EmpresaControler,
java.util.List, java.sql.SQLException"%>

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
<img id="icone" src="_imagens/18-anxiety-icon1.png"/>
<nav id="menu">
<h1>Menu Principal</h1>
  <ul type="disc">
 <li onmouseover="mudaFoto('_imagens/home.png')" onmouseout="mudaFoto('_imagens/18-anxiety-icon1.png')"><a href="index.html">Inicial</a></li>
 <li onmouseover="mudaFoto('_imagens/parc.png')" onmouseout="mudaFoto('_imagens/18-anxiety-icon1.png')"><a href="parcerias.html"> Parcerias</a></li>
  <li onmouseover="mudaFoto('_imagens/recy.png')" onmouseout="mudaFoto('_imagens/18-anxiety-icon1.png')"><a href="reciclando.html"> Reciclando</a></li>
 <li onmouseover="mudaFoto('_imagens/faq_img.png')" onmouseout="mudaFoto('_imagens/18-anxiety-icon1.png')"><a href="faq.html">FAQ</a></li>
 <li onmouseover="mudaFoto('_imagens/coleetaa.png')" onmouseout="mudaFoto('_imagens/18-anxiety-icon1.png')"><a href="listarcoleta.html">Listar coleta</a></li>
 <li onmouseover="mudaFoto('_imagens/18-anxiety-icon1.png')" onmouseout="mudaFoto('_imagens/18-anxiety-icon1.png')"><a href="listarempresa.html">Listar empresa</a></li>
 <li onmouseover="mudaFoto('_imagens/coleetaa.png')" onmouseout="mudaFoto('_imagens/18-anxiety-icon1.png')"><a href="coleta.html">Coleta</a></li>
 
  </ul> 
 </nav>
</header>
 <section id="corpo-full">
 <article id="noticia-principal">
 <header id="cabecalho-artigo">
 <hgroup>
<h3>Home &nbsp; > &nbsp; Listar empresa</h3>
<h1>Listagem de coletas solicitadas por empresas</h1>

<h3 class="direita">Atualizado em 17/Agosto/2015</h3>

</hgroup>
</header>



<table id="tabelaspec">
<caption>Empresas<span> Mar/2015</span></caption>
<colgroup span="8">
<col class="coluna1"/>
<col class="coluna2"/>
<col class="coluna3"/>
<col class="coluna4"/>
<col class="coluna5"/>
<col class="coluna6"/>
<col class="coluna7"/>
<col class="coluna8"/>
</colgroup>


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