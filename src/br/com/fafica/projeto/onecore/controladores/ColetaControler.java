package br.com.fafica.projeto.onecore.controladores;

import java.sql.SQLException;
import java.util.List;

import br.com.fafica.projeto.onecore.dao.coletaDao;
import br.com.fafica.projeto.onecore.modelos.Coleta;

public class ColetaControler {
	
	private static ColetaControler instance;
	private coletaDao dao;
	
	private ColetaControler() throws SQLException{
		super();
		this.dao = new coletaDao();
	}
	
	public static ColetaControler getInstance() throws SQLException {
		if (instance==null){
			instance = new ColetaControler();
		}
		return instance;
	}
	
	public void adicionar (Coleta coleta) throws SQLException{
		dao.cadastrar(coleta);
	}
	
	public List<Coleta> listar() throws SQLException{
		return dao.listar();
	}
	public List<Coleta> listarMinhas(String email_usuario) throws SQLException{
		return dao.listarMinhas(email_usuario);
	}
	
	public void alterar (Coleta coleta) throws SQLException{
		dao.alterar(coleta);
	}
	
	public void atender (String indice) throws SQLException{
		dao.atender(indice);
	}
	
	public void deletar (Coleta coleta) throws SQLException{
		dao.excluir(coleta);
	}


}
