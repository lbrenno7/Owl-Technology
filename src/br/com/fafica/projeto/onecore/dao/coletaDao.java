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
				+ "(rua, numero, cep, bairro, cidade, estado, data_de_coleta, horario_de_coleta, tipos_de_lixo, msg)"
				+ " values ('" + coleta.getRua() + "','" + coleta.getNumero() + "','"
				+ coleta.getCep() + "' , '"+ coleta.getBairro() + "' , '" 
				+ coleta.getCidade()+ "' , '"+ coleta.getEstado() + "' , '" 
				+coleta.getDataDeColeta()+ "' , '" 	+ coleta.getHorarioDeColeta() + "' , '" + coleta.getTiposDeLixo() + "' , '" + coleta.getMsg() + "')";
		
		conexao.prepareStatement(sql).executeUpdate();
		
		
		
			String sql2 = "select max(indice) from coleta";
			
			ResultSet rs;
			rs = conexao.prepareStatement(sql2).executeQuery();
			
			int indice=0;
			while(rs.next()){
			indice = rs.getInt(1);}
			
			String sql3 = "insert into usuariosolicitacoleta "
					+ "(Email_Usuario, Indice_Coleta, rua, numero, cep, bairro, cidade, estado, data_de_coleta, horario_de_coleta, tipos_de_lixo, msg)"
					+ " values ('" + coleta.getEmail_solicitante() + "','" + indice + "','" + coleta.getRua() + "','" + coleta.getNumero() + "','"
					+ coleta.getCep() + "' , '"+ coleta.getBairro() + "' , '" 
					+ coleta.getCidade()+ "' , '"+ coleta.getEstado() + "' , '" 
					+coleta.getDataDeColeta()+ "' , '" 	+ coleta.getHorarioDeColeta() + "' , '" + coleta.getTiposDeLixo() + "' , '" + coleta.getMsg() + "')";
			
			
			conexao.prepareStatement(sql3).executeUpdate();
			
			String sql4 = "select coletas from usuario WHERE email ='"+coleta.getEmail_solicitante()+"'";
		
			int qtd_coletas=0;
			rs = conexao.prepareStatement(sql4).executeQuery();
			while(rs.next()){
				qtd_coletas = rs.getInt(1);
			}
			qtd_coletas++;
			String sql5 = "UPDATE usuario set coletas="+qtd_coletas+" where email='"+coleta.getEmail_solicitante()+"'";
			conexao.prepareStatement(sql5).executeUpdate();
	}
	

	//metodo que lista todas as coletas
	public List<Coleta> listar(){
	List<Coleta> listaColeta = new ArrayList<>();
	String sql = "select indice, rua, numero, cep, bairro, cidade, estado, data_de_coleta, horario_de_coleta, status_coleta, tipos_de_lixo from coleta order by indice";
	
		try{
			ResultSet rs;
			rs = conexao.prepareStatement(sql).executeQuery();
			
	
			while(rs.next()){
				Coleta coleta = new Coleta();
				coleta.setIndice(rs.getInt(1));
				coleta.setRua(rs.getString(2));
				coleta.setNumero(rs.getInt(3));
				coleta.setCep(rs.getString(4));
				coleta.setBairro(rs.getString(5));
				coleta.setCidade(rs.getString(6));
				coleta.setEstado(rs.getString(7));
				coleta.setDataDeColeta(rs.getString(8));
				coleta.setHorarioDeColeta(rs.getString(9));
				coleta.setStatus(rs.getString(10));
				coleta.setTiposDeLixo(rs.getString(11));
				listaColeta.add(coleta);
			}
		}
		
		catch (SQLException e) {
		e.printStackTrace();
		}
		return listaColeta;
	}
			
	//metodo que consulta somente as coletas do usuario
	
	//metodo que lista todas as coletas
		public List<Coleta> listarMinhas(String email_usuario){
		List<Coleta> listaColeta = new ArrayList<>();
		String sql = "select Indice_Coleta, rua, numero, cep, bairro, cidade, estado, data_de_coleta, horario_de_coleta, status_coleta, tipos_de_lixo from usuariosolicitacoleta where Email_Usuario ='"+email_usuario+"'order by Indice_Coleta";
		
			try{
				ResultSet rs;
				rs = conexao.prepareStatement(sql).executeQuery();
				
		
				while(rs.next()){
					Coleta coleta = new Coleta();
					coleta.setIndice(rs.getInt(1));
					coleta.setRua(rs.getString(2));
					coleta.setNumero(rs.getInt(3));
					coleta.setCep(rs.getString(4));
					coleta.setBairro(rs.getString(5));
					coleta.setCidade(rs.getString(6));
					coleta.setEstado(rs.getString(7));
					coleta.setDataDeColeta(rs.getString(8));
					coleta.setHorarioDeColeta(rs.getString(9));
					coleta.setStatus(rs.getString(10));
					coleta.setTiposDeLixo(rs.getString(11));
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
	
	
		String sql = "update coleta set data_de_coleta = '"+coleta.getDataDeColeta()+"' , hora_de_coleta = '"+coleta.getHorarioDeColeta()+"' where indice = '"+coleta.getIndice()+"'";
		try {
		conexao.prepareStatement(sql).executeUpdate();
		} catch (SQLException e) {
		e.printStackTrace();
		}
			
	}
	
	//metodo que altera  status de uma coleta para atendido
	public void atender(String indice) throws SQLException {
		
		
		String sql = "update coleta set status_coleta = 'atendido' where indice = '"+indice+"'";
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

