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
		pessoa.setNome(request.getParameter("nome"));
		pessoa.setEmail(request.getParameter("email"));
		pessoa.setRG(request.getParameter("rg"));
		pessoa.setCPF(request.getParameter("cpf"));
		pessoa.setCEP(request.getParameter("cep"));
		pessoa.setRua(request.getParameter("rua"));
		pessoa.setNumero(Integer.parseInt(request.getParameter("numero")));
		pessoa.setBairro(request.getParameter("bairro"));
		pessoa.setCidade(request.getParameter("cidade"));
		pessoa.setEstado(request.getParameter("estado"));
		pessoa.setTelefone(request.getParameter("phone"));
		pessoa.setSenha(request.getParameter("pwd1"));
		pessoa.setPerguntaSecreta(request.getParameter("pergunta"));
		pessoa.setRespostaSecreta(request.getParameter("resposta"));
		pessoa.setGrupo(0);
		
	
	
		
			try {
				UsuarioPessoaControler pessoaC = UsuarioPessoaControler.getInstance();	
				pessoaC.adicionar(pessoa);
				
			} catch (SQLException e) {
			e.printStackTrace();
			}
			
			
			 
			response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/login.jsp");
			
	}

}
