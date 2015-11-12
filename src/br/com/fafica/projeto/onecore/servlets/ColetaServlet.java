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
	 * @throws IOException 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String indiceC = request.getParameter("indicecoleta");
		
try {
			
			ColetaControler controler = ColetaControler.getInstance();
			controler.atender(indiceC);
			
			response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/listacoleta.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		
		Coleta coleta = new Coleta();
		coleta.setDataDeColeta(request.getParameter("tDat"));
		coleta.setHorarioDeColeta(request.getParameter("tHor"));
		coleta.setRua(request.getParameter("tRua"));
		coleta.setNumero(Integer.parseInt(request.getParameter("tNum")));
		coleta.setCep(request.getParameter("tCep"));
		coleta.setEstado(request.getParameter("tEst"));
		coleta.setCidade(request.getParameter("tCid"));
		coleta.setBairro(request.getParameter("tBairro"));
		
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
