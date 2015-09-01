package br.com.fafica.projeto.onecore.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.fafica.projeto.onecore.modelos.Coleta;

public class coletaDao {
	
	Conexao conexao = Conexao.getInstancia();

	//metodo para criar uma coleta
	public void cadastrar(Coleta coleta) throws SQLException {
	
		
		String sql = "insert into coleta "
				+ "(rua, numero, bairro, cidade, estado, data_de_coleta, horario_de_coleta)"
				+ " values ('" + coleta.getRua() + "','" + coleta.getNumero() + "','"
				+ coleta.getBairro() + "' , '" + coleta.getCidade()+ "' , '"
				+ coleta.getEstado() + "' , '" +coleta.getDataDeColeta()+ "' , '" 
				+ coleta.getHorarioDeColeta() + "')";
		
		conexao.prepareStatement(sql).executeUpdate();
		
	}
	

	//metodo que lista todas as coletas
	public List<Coleta> listar(){
	List<Coleta> listaColeta = new ArrayList<>();
	String sql = "select indice, rua, numero, bairro, cidade, estado, data_de_coleta, horario_de_coleta from coleta order by indice";
	
		try{
			ResultSet rs;
			rs = conexao.prepareStatement(sql).executeQuery();
			
	
			while(rs.next()){
				Coleta coleta = new Coleta();
				coleta.setIndice(rs.getInt(1));
				coleta.setRua(rs.getString(2));
				coleta.setNumero(rs.getInt(3));
				coleta.setBairro(rs.getString(4));
				coleta.setCidade(rs.getString(5));
				coleta.setEstado(rs.getString(6));
				coleta.setDataDeColeta(rs.getString(7));
				coleta.setHorarioDeColeta(rs.getString(8));
				listaColeta.add(coleta);
			}
		}
		
		catch (SQLException e) {
		e.printStackTrace();
		}
		return listaColeta;
	}
			
	

	//metodo que altera uma coleta, é possivel apenas alterar : data e hora
	public void alterar(Coleta coleta) throws SQLException {
	
	
		String sql = "update coleta set data_de_coleta = '"+coleta.getDataDeColeta()+"' , hora_de_coleta = '"+coleta.getHorarioDeColeta()+"' where id = '"+coleta.getIndice()+"'";
		try {
		conexao.prepareStatement(sql).executeUpdate();
		} catch (SQLException e) {
		e.printStackTrace();
		}
			
	}

	//meto de exclusão de uma coleta
	public void excluir(Coleta coleta) throws SQLException {
	
	
		String sql = "delete FROM coleta where indice = '"+coleta.getIndice()+"'";
		try {
		conexao.prepareStatement(sql).executeUpdate();
		} catch (SQLException e) {
		e.printStackTrace();
		}
	}
	

}

