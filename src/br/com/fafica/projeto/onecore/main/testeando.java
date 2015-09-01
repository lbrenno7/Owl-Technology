package br.com.fafica.projeto.onecore.main;

import java.sql.SQLException;

import br.com.fafica.projeto.onecore.controladores.EmpresaControler;
import br.com.fafica.projeto.onecore.modelos.Empresa;


public class testeando {

	public static void main(String[] args) {
		
		
		Empresa e = new Empresa();
		e.setRazaoSocial("qualquer empresa ai ltda");
		e.setCNPJ("50285825000178");
		e.setCep("5512391");
		e.setRua("sei n");
		e.setNumero(120);
		e.setBairro("sadsasdas");
		e.setCidade("Sao Paulo");
		e.setEstado("Sao Paulo");
		e.setTelefone("(87) 2729-2921");
		
		try {
			EmpresaControler c = EmpresaControler.getInstance();
			c.adicionar(e);
		} catch (InstantiationException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

	}

}
