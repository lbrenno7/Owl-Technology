package br.com.fafica.projeto.onecore.controladores;

import java.sql.SQLException;
import java.util.List;

import br.com.fafica.projeto.onecore.dao.UsuarioEmpresarialDao;
import br.com.fafica.projeto.onecore.modelos.UsuarioEmpresarial;

public class UsuarioEmpresarialControler {
	
	private static UsuarioEmpresarialControler instance;
	private UsuarioEmpresarialDao dao;
	
	private UsuarioEmpresarialControler() throws SQLException{
		super();
		this.dao = new UsuarioEmpresarialDao();
	}
	
	public static UsuarioEmpresarialControler getInstance() throws SQLException {
		if (instance==null){
			instance = new UsuarioEmpresarialControler();
		}
		return instance;
	}
	
	public void adicionar (UsuarioEmpresarial empresa) throws SQLException{
		dao.cadastrar(empresa);
	}
	
	public List<UsuarioEmpresarial> listar() throws SQLException{
		return dao.listar();
	}
	
	public void alterar (UsuarioEmpresarial empresa) throws SQLException{
		dao.alterar(empresa);
	}
	
	public void deletar (UsuarioEmpresarial empresa) throws SQLException{
		dao.excluir(empresa);
	}


}
