package br.com.fafica.projeto.onecore.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fafica.projeto.onecore.controladores.UsuarioPessoaControler;
import br.com.fafica.projeto.onecore.modelos.UsuarioPessoa;

/**
 * Servlet implementation class UsuarioPessoaServlet
 */
@WebServlet("/UsuarioPessoaServlet")
public class UsuarioPessoaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UsuarioPessoaServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		UsuarioPessoa pessoa = new UsuarioPessoa();
		pessoa.setNome(request.getParameter("tNome"));
		pessoa.setEmail(request.getParameter("tEmail"));
		pessoa.setCPF(request.getParameter("tCPF"));
		pessoa.setRG(request.getParameter("tRG"));
		pessoa.setTelefone(request.getParameter("tTel"));
		pessoa.setSenha(request.getParameter("PWD1"));
		pessoa.setRua(request.getParameter("tRua"));
		pessoa.setNumero(Integer.parseInt(request.getParameter("tNum")));
		pessoa.setBairro(request.getParameter("tBairro"));
		pessoa.setCEP(request.getParameter("tCep"));
		pessoa.setEstado(request.getParameter("tEst"));
		pessoa.setCidade(request.getParameter("tCid"));
		pessoa.setPerguntaSecreta(request.getParameter("tPerg"));
		pessoa.setRespostaSecreta(request.getParameter("tResp"));
		pessoa.setGrupo(0);
		
	
	
		
			try {
				UsuarioPessoaControler pessoaC = UsuarioPessoaControler.getInstance();	
				pessoaC.adicionar(pessoa);
				
			} catch (SQLException e) {
			e.printStackTrace();
			}
			
			
			 
			response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/login.html");
			
	}

}
