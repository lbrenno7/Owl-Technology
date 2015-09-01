package br.com.fafica.projeto.onecore.controladores;

import java.sql.SQLException;
import java.util.List;

import br.com.fafica.projeto.onecore.dao.EmpresaDao;
import br.com.fafica.projeto.onecore.modelos.Empresa;

public class EmpresaControler {

	private static EmpresaControler instance;
	private EmpresaDao dao;
	
	private EmpresaControler() throws SQLException, InstantiationException, IllegalAccessException{
		super();
		this.dao = new EmpresaDao();
	}
	
	public static EmpresaControler getInstance() throws SQLException, InstantiationException, IllegalAccessException {
		if (instance==null){
			instance = new EmpresaControler();
		}
		return instance;
	}
	
	public void adicionar (Empresa empresa) throws SQLException{
		dao.cadastrar(empresa);
	}
	
	public List<Empresa> listar() throws SQLException{
		return dao.listar();
	}
	
	public void alterar (Empresa empresa) throws SQLException{
		dao.alterar(empresa);
	}
	
	public void deletar (Empresa empresa) throws SQLException{
		dao.excluir(empresa);
	}



	
}
