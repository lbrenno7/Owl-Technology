package br.com.fafica.projeto.onecore.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.fafica.projeto.onecore.modelos.Empresa;

public class EmpresaDao {
	
Conexao conexao = Conexao.getInstancia();

	
	
	public void cadastrar(Empresa empresa) throws SQLException {
	
		
		String sql = "insert into empresa "
			+ "(razao_social, cnpj, cep, rua, numero, bairro, cidade, estado, telefone)"
			+ " values ('" + empresa.getRazaoSocial() + "','" + empresa.getCNPJ() + "','" 
			+ empresa.getCep() + "','"+ empresa.getRua() + "','" 
			+ empresa.getNumero() + "', '"+ empresa.getBairro() + "' , '" 
			+empresa.getCidade()+ "' , '" + empresa.getEstado() + "' , '" 
			+ empresa.getTelefone()+ "')";
	
		conexao.prepareStatement(sql).executeUpdate();
		}

	public List<Empresa> listar() throws SQLException{
		List<Empresa> listaEmpresa = new ArrayList<>();
		String sql = "select razao_social, cnpj, cep, rua, numero, bairro, cidade, estado, telefone from empresa";
	
		try{
			ResultSet rs;
			rs = conexao.prepareStatement(sql).executeQuery();
		
			while(rs.next()){
				Empresa empresa = new Empresa();
				empresa.setRazaoSocial(rs.getString(1));
				empresa.setCNPJ(rs.getString(2));
				empresa.setCep(rs.getString(3));
				empresa.setRua(rs.getString(4));
				empresa.setNumero(rs.getInt(5));
				empresa.setBairro(rs.getString(6));
				empresa.setCidade(rs.getString(7));
				empresa.setEstado(rs.getString(8));
				empresa.setTelefone(rs.getString(9));
				listaEmpresa.add(empresa);
		}
	}
	
			catch (SQLException e) {
				e.printStackTrace();
			}
		return listaEmpresa;
	}

	public void alterar(Empresa empresa) throws SQLException {
	
		String sql = "update empresa set cep = '"+empresa.getCep()+"' , rua = '"+empresa.getRua()+"' , numero = '"
		+empresa.getNumero()+"' , bairro = '"+empresa.getBairro()+"' , cidade = '"+empresa.getCidade()+"' , estado = '"
		+empresa.getEstado()+"' , telefone = '"+empresa.getTelefone()+"' where email = '"+empresa.getCNPJ()+"'";
			try {
				conexao.prepareStatement(sql).executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}

	public void excluir(Empresa empresa) throws SQLException {
	
	String sql = "delete FROM empresa where email = '"+empresa.getCNPJ()+"'";
		try {
			conexao.prepareStatement(sql).executeUpdate();
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
	}


}
