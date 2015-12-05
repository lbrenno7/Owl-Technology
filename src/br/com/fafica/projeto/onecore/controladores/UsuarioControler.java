package br.com.fafica.projeto.onecore.controladores;

import java.sql.SQLException;
import java.util.List;

import br.com.fafica.projeto.onecore.dao.UsuarioDao;
import br.com.fafica.projeto.onecore.modelos.Usuario;

public class UsuarioControler {
	
	private static UsuarioControler instance;
	private UsuarioDao dao;
	
	private UsuarioControler() throws SQLException{
		super();
		this.dao = new UsuarioDao();
	}
	
	public static UsuarioControler getInstance() throws SQLException {
		if (instance==null){
			instance = new UsuarioControler();
		}
		return instance;
	}
	
	public void adicionar (Usuario usuario) throws SQLException{
		dao.cadastrar(usuario);
	}
	
	public List<Usuario> listar() throws SQLException{
		return dao.listar();
	}
	
	public void alterar (Usuario usuario) throws SQLException{
		dao.alterar(usuario);
	}
	
	public void deletar (Usuario usuario) throws SQLException{
		dao.excluir(usuario);
	}
	
	public Usuario checar(Usuario usuario) {
		usuario = dao.checar(usuario);
		return usuario;

	}
	public Usuario recuperarSenha(Usuario usuario){
		usuario = dao.recuperarSenha(usuario);
		return usuario;
	}
	public List<Usuario> rank() throws SQLException{
		return dao.rank();
	}
	


}
