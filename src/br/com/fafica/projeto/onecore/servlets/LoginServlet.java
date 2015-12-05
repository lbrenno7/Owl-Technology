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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		usuario.setSenha(request.getParameter("tSenha"));
		
		
		try {
			Usuario check = new Usuario();
			UsuarioControler login = UsuarioControler.getInstance();
			check = login.checar(usuario);
			int g = check.getGrupo();
			
			
			if(usuario.getSenha().equals(check.getSenha())){
				
				switch (g) {
				case 0:
					request.getSession().setAttribute("usuario", usuario);
					response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/homes.jsp");
					break;
				
				case 1:
					request.getSession().setAttribute("usuario", usuario);
					response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/homer.jsp");
					break;
				case 2:
					request.getSession().setAttribute("usuario", usuario);
					response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/home.jsp");
					break;

				default:
					response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/index.html");
					break;
				}
				
				
			}
			else{
				response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/index.html");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		
	}

}
