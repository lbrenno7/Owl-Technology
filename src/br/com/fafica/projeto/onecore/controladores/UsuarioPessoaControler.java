package br.com.fafica.projeto.onecore.controladores;

import java.sql.SQLException;
import java.util.List;

import br.com.fafica.projeto.onecore.dao.UsuarioPessoaDao;
import br.com.fafica.projeto.onecore.modelos.UsuarioPessoa;

public class UsuarioPessoaControler{
	
	private static UsuarioPessoaControler instance;
	private UsuarioPessoaDao dao;
	
	private UsuarioPessoaControler() throws SQLException{
		super();
		this.dao = new UsuarioPessoaDao();
	}
	
	public static UsuarioPessoaControler getInstance() throws SQLException {
		if (instance==null){
			instance = new UsuarioPessoaControler();
		}
		return instance;
	}
	
	public void adicionar (UsuarioPessoa pessoa) throws SQLException{
		dao.cadastrar(pessoa);
	}
	
	public List<UsuarioPessoa> listar() throws SQLException{
		return dao.listar();
	}
	
	public void alterar (UsuarioPessoa pessoa) throws SQLException{
		dao.alterar(pessoa);
	}
	
	public void deletar (UsuarioPessoa pessoa) throws SQLException{
		dao.excluir(pessoa);
	}
	
}
