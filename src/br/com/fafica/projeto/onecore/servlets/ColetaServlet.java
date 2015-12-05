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
		String pagina = request.getParameter("pagina");
		System.out.println(pagina);
try {
			
			ColetaControler controler = ColetaControler.getInstance();
			controler.atender(indiceC);
			
			
			
			response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/"+pagina);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		
		Coleta coleta = new Coleta();
		coleta.setRua(request.getParameter("tRua"));
		coleta.setNumero(Integer.parseInt(request.getParameter("tNum")));
		coleta.setBairro(request.getParameter("tBairro"));
		coleta.setCep(request.getParameter("tCep"));
		coleta.setEstado(request.getParameter("tEstado"));
		coleta.setCidade(request.getParameter("tCidade"));
		coleta.setDataDeColeta(request.getParameter("tData"));
		coleta.setHorarioDeColeta(request.getParameter("tHora"));
		coleta.setEmail_solicitante(request.getParameter("email"));
		coleta.setMsg(request.getParameter("tMens"));
		
		String pagina = request.getParameter("pagina");
		
		String[] tiposDeLixoArray = request.getParameterValues("lixos");
		String tiposDeLixo = "";
		
		for (int i = 0; i < tiposDeLixoArray.length; i++) {
			tiposDeLixo += tiposDeLixoArray[i] + ", ";
		}
		
		
		
		coleta.setTiposDeLixo(tiposDeLixo);
		
		
		try {
				ColetaControler c = ColetaControler.getInstance();
				c.adicionar(coleta);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
		response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/"+pagina);
		
	}
		

}
