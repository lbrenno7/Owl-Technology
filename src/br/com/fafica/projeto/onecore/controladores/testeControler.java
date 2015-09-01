package br.com.fafica.projeto.onecore.controladores;

import java.sql.SQLException;
import java.util.List;

import br.com.fafica.projeto.onecore.dao.testeDao;
import br.com.fafica.projeto.onecore.modelos.Teste;

public class testeControler {
	
	private static testeControler instance;
	private testeDao dao;
	
	private testeControler() throws SQLException{
		super();
		this.dao = new testeDao();
	}
	
	public static testeControler getInstance() throws SQLException {
		if (instance==null){
			instance = new testeControler();
		}
		return instance;
	}
	
	public void adicionar (Teste teste) throws SQLException{
		dao.adicionar(teste);
	}
	
	public List<Teste> listar() throws SQLException{
		return dao.listar();
	}
	
	public void alterar (Teste teste) throws SQLException{
		dao.alterar(teste);
	}
	
	public void deletar (Teste teste) throws SQLException{
		dao.excluir(teste);
	}

	public Teste getTeste(int indice){
		Teste teste = new Teste();
		teste.setId(1);
		teste.setNome("teste");
		return teste;
	}

}
