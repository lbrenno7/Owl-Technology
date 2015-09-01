package br.com.fafica.projeto.onecore.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fafica.projeto.onecore.controladores.ColetaControler;
import br.com.fafica.projeto.onecore.modelos.Coleta;

/**
 * Servlet implementation class ColetaServlet
 */
@WebServlet("/ColetaServlet")
public class ColetaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ColetaServlet() {
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
		
		Coleta coleta = new Coleta();
		coleta.setRua(request.getParameter("rua"));
		coleta.setNumero(Integer.parseInt(request.getParameter("numero")));
		coleta.setBairro(request.getParameter("bairro"));
		coleta.setCidade(request.getParameter("cidade"));
		coleta.setEstado(request.getParameter("estado"));
		coleta.setDataDeColeta(request.getParameter("date"));
		coleta.setHorarioDeColeta(request.getParameter("hour"));
		
		try {
			ColetaControler c = ColetaControler.getInstance();
			c.adicionar(coleta);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/home.html");
		
	}

}
