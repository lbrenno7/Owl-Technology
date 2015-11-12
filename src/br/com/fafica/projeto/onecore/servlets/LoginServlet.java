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
		
		Usuario u = new Usuario();
		u.setEmail(request.getParameter("tEmail"));
		u.setSenha(request.getParameter("tSenha"));
		
		try {
			Usuario check = new Usuario();
			UsuarioControler login = UsuarioControler.getInstance();
			check = login.checar(u);
			int g = check.getGrupo();
			
			
			if(u.getSenha().equals(check.getSenha())){
				
				switch (g) {
				case 0:
					response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/home.html");
					break;
				
				case 1:
					response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/homer.html");
					break;
				case 2:
					response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/homes.html");
					break;

				default:
					response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/login.html");
					break;
				}
				
				
			}
			else{
				response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/login.html");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		
	}

}
