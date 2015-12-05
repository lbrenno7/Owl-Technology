package br.com.fafica.projeto.onecore.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fafica.projeto.onecore.controladores.UsuarioControler;
import br.com.fafica.projeto.onecore.modelos.Usuario;

/**
 * Servlet implementation class LembrarSenhaServlet
 */
@WebServlet("/LembrarSenhaServlet")
public class LembrarSenhaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LembrarSenhaServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Usuario usuario = new Usuario();
		usuario.setEmail(request.getParameter("tEmail"));
		usuario.setPerguntaSecreta("tPerg");
		usuario.setRespostaSecreta("tResp");
		
		try {
			Usuario check = new Usuario();
			UsuarioControler procurarsenha = UsuarioControler.getInstance();
			check = procurarsenha.recuperarSenha(usuario);
			
			if(usuario.getEmail().equals(check.getEmail()) || 
					usuario.getPerguntaSecreta().equals(check.getPerguntaSecreta()) || 
					usuario.getRespostaSecreta().equals(check.getRespostaSecreta())){
				
						request.getSession().setAttribute("senha", check.getSenha());
						response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/esqueciasenha.jsp");
					}
					else{
					response.sendRedirect("esqueciasenha.html");	
					}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
