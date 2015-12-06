package br.com.fafica.projeto.onecore.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import br.com.fafica.projeto.onecore.dao.UsuarioDao;
import br.com.fafica.projeto.onecore.modelos.Usuario;

/**
 * Servlet implementation class ControleLogin
 */
@WebServlet("/ControleLogin")
public class ControleLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControleLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Usuario> arrayListUsuario = new ArrayList<Usuario>();
		try {
			arrayListUsuario = new UsuarioDao().listar();
		} catch (SQLException e) {
			e.printStackTrace();
		}
				
		JSONObject jsonObjectEmail = null;
		JSONObject jsonObjectSenha = null;
		JSONArray arrayEmail = new JSONArray();
		JSONArray arraySenha = new JSONArray();
		
		for(Usuario usuario: arrayListUsuario){
			jsonObjectEmail = new JSONObject();
			jsonObjectEmail.put("email", usuario.getEmail());
			jsonObjectSenha = new JSONObject();
			jsonObjectSenha.put("Senha", usuario.getSenha());
			arrayEmail.add(jsonObjectEmail);
			arraySenha.add(jsonObjectSenha);
			
		}
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.print(arrayEmail);
		out.print(arraySenha);
	}

	

}
