package br.com.fafica.projeto.onecore.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fafica.projeto.onecore.controladores.EmpresaControler;
import br.com.fafica.projeto.onecore.modelos.Empresa;

/**
 * Servlet implementation class EmpresaServlet
 */
@WebServlet("/EmpresaServlet")
public class EmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpresaServlet() {
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
	
		Empresa empresa = new Empresa();
		empresa.setRazaoSocial(request.getParameter("razaosocial"));
		empresa.setCNPJ(request.getParameter("cnpj"));
		empresa.setCep(request.getParameter("cep"));
		empresa.setRua(request.getParameter("rua"));
		empresa.setNumero(Integer.parseInt(request.getParameter("numero")));
		empresa.setBairro(request.getParameter("bairro"));
		empresa.setCidade(request.getParameter("cidade"));
		empresa.setEstado(request.getParameter("estado"));
		empresa.setTelefone(request.getParameter("telefone"));
		
		try {
			EmpresaControler c = EmpresaControler.getInstance();
			c.adicionar(empresa);
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		response.sendRedirect("http://localhost:8080/OneCoreProject/Pages/homes.html");
		
	}

}
