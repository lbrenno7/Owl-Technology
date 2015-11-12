package br.com.fafica.projeto.onecore.main;

import java.sql.SQLException;

import br.com.fafica.projeto.onecore.controladores.ColetaControler;
import br.com.fafica.projeto.onecore.modelos.Coleta;



public class testeando {

	public static void main(String[] args) throws SQLException {
		
		Coleta coleta = new Coleta();
		
		ColetaControler control = ColetaControler.getInstance();
		
		coleta.getIndice();
		coleta.getRua() ;
		coleta.getNumero();
		coleta.getBairro();
		coleta.getCidade();
		coleta.getDataDeColeta();
		coleta.getHorarioDeColeta();
		coleta.getStatus();
		
		
		System.out.print(coleta.getRua());
		
		
	}

}
