package br.com.fafica.projeto.onecore.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.fafica.projeto.onecore.modelos.Usuario;

public class UsuarioDao {

	Conexao conexao = Conexao.getInstancia();
		
	//metodo cadastrar usuario
	public void cadastrar(Usuario usuario) throws SQLException {
	
		
		String sql = "insert into usuario "
				+ "(nome, email, cep, rua, numero, bairro, cidade, estado, telefone, senha, pergunta_secreta, resposta_secreta, grupo)"
				+ " values ('" + usuario.getNome() + "','" + usuario.getEmail() + "','" + usuario.getCEP() + "','"
				+ usuario.getRua() + "' , '" + usuario.getNumero()+ "' , '"
				+ usuario.getBairro() + "' , '" +usuario.getCidade()+ "' , '" 
				+ usuario.getEstado() + "' , '" + usuario.getTelefone()+ "' , '"
				+ usuario.getSenha()+ "' , '" + usuario.getPerguntaSecreta()+ "' , '"
				+ usuario.getRespostaSecreta()+ "' , '" + usuario.getGrupo()+ "')";
		
		
		conexao.prepareStatement(sql).executeUpdate();
	}
	
	//metodo criado, mas não será usado
	//metodo listar usuario
	public List<Usuario> listar() throws SQLException{
		List<Usuario> listaUsuario = new ArrayList<>();
		String sql = "select email, cep, rua, numero, bairro, cidade, estado, telefone, senha, pergunta_secreta, resposta_secreta from usuario";
		
		try{
			ResultSet rs;
			rs = conexao.prepareStatement(sql).executeQuery();
			
	
			while(rs.next()){
				Usuario usuario = new Usuario();
				usuario.setEmail(rs.getString(1));
				usuario.setCEP(rs.getString(2));
				usuario.setRua(rs.getString(3));
				usuario.setNumero(rs.getInt(4));
				usuario.setBairro(rs.getString(5));
				usuario.setCidade(rs.getString(6));
				usuario.setEstado(rs.getString(7));
				usuario.setTelefone(rs.getString(8));
				usuario.setSenha(rs.getString(9));
				usuario.setPerguntaSecreta(rs.getString(10));
				usuario.setRespostaSecreta(rs.getString(11));
				listaUsuario.add(usuario);
			}
		}
		
		catch (SQLException e) {
		e.printStackTrace();
		}
		return listaUsuario;
	}
	
	//metodo alterar usuario
	public void alterar(Usuario usuario) throws SQLException {
	
		
		String sql = "update usuario set cep = '"+usuario.getCEP()+"' , rua = '"+usuario.getRua()+"' , numero = '"
		+usuario.getNumero()+"' , bairro = '"+usuario.getBairro()+"' , cidade = '"+usuario.getCidade()+"' , estado = '"
		+usuario.getEstado()+"' , telefone = '"+usuario.getTelefone()+"' , senha = '"+usuario.getSenha()+"' , pergunta_secreta = '"
		+usuario.getPerguntaSecreta()+"' , resposta_secreta = '"+usuario.getRespostaSecreta()+"' where email = '"+usuario.getEmail()+"'";
		try {
		conexao.prepareStatement(sql).executeUpdate();
		} catch (SQLException e) {
		e.printStackTrace();
		}
	}
	
	//metodo excluir usuario
	public void excluir(Usuario usuario) throws SQLException {
	
		
		String sql = "delete FROM usuario where email = '"+usuario.getEmail()+"'";
		try {
		conexao.prepareStatement(sql).executeUpdate();
		} catch (SQLException e) {
		e.printStackTrace();
		}
	}
	
public Usuario checar(Usuario usuario) {
		
		String sql = "select email,senha,grupo from usuario where email = '" +usuario.getEmail() +"'";
		Usuario user = new Usuario();
		
		try {
			ResultSet rs;
			rs = conexao.prepareStatement(sql).executeQuery();
			
			while(rs.next()){
				//Usuario user = new Usuario();
				user.setEmail(rs.getString(1));
				user.setSenha(rs.getString(2));
				user.setGrupo(rs.getInt(3));
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
		return user;
	}
	
}


	

