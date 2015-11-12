package br.com.fafica.projeto.onecore.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fafica.projeto.onecore.controladores.UsuarioEmpresarialControler;
import br.com.fafica.projeto.onecore.modelos.UsuarioEmpresarial;

/**
 * Servlet implementation class UsuarioEmpresarialServlet
 */
@WebServlet("/UsuarioEmpresarialServlet")
public class UsuarioEmpresarialServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioEmpresarialServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		UsuarioEmpresarial e = new UsuarioEmpresarial();
		e.setNome(request.getParameter("tNome"));
		e.setMatricula(request.getParameter("matricula"));
		e.setEmail(request.getParameter("email"));
		e.setVinculo(request.getParameter("vinculo"));
		e.setTelefone(request.getParameter("tel"));
		e.setSenha(request.getParameter("PWD1"));
		e.setRua(request.getParameter("rua"));
		e.setNumero(Integer.parseInt(request.getParameter("tNum")));
		e.setBairro(request.getParameter("bairro"));
		e.setCEP(request.getParameter("cep"));
		e.setEstado(request.getParameter("estado"));
		e.setCidade(request.getParameter("tCid"));
		e.setPerguntaSecreta(request.getParameter("tPerg"));
		e.setRespostaSecreta(request.getParameter("tResp"));
		e.setGrupo(1);
		
		
		
		try {
			UsuarioEmpresarialControler c = UsuarioEmpresarialControler.getInstance();
			c.adicionar(e);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/login.html");
		
	}

}
