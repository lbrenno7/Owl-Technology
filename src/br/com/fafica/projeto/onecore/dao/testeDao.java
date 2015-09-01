package br.com.fafica.projeto.onecore.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.fafica.projeto.onecore.modelos.Teste;

public class testeDao {
		
	
	Conexao conexao = Conexao.getInstancia();
	
	public void adicionar(Teste teste) {
		
		String sql = "insert into teste (nome) values ('"
				+ teste.getNome() + "')";
		
		try {
			conexao.prepareStatement(sql).executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
	}
	
	public List<Teste> listar() {
		List<Teste> lista = new ArrayList<Teste>();
		String sql = "SELECT * FROM teste";
		try {
			ResultSet rs;
			rs = conexao.prepareStatement(sql).executeQuery();
			while (rs.next()) {
				Teste teste = new Teste();
				teste.setId(rs.getInt("indice"));
				teste.setNome(rs.getString("nome"));
				
				lista.add(teste);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return lista;
	}
	
	public void excluir(Teste teste) {
		String sql = "delete FROM teste where id = '"+teste.getId()+"'";
		try {
			conexao.prepareStatement(sql).executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void alterar(Teste teste) {
		String sql = "update teste set nome = '"+teste.getNome()+"' where id = '"+teste.getId()+"'";
		try {
			conexao.prepareStatement(sql).executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
