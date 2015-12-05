package br.com.fafica.projeto.onecore.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		JSONObject jsonObject = null;
		JSONArray array = new JSONArray();
		
		for(Usuario usuario: arrayListUsuario){
			jsonObject = new JSONObject();
			jsonObject.put("email", usuario.getEmail());
			//array.add (metodo add nao existe)
		}
	}

	

}
