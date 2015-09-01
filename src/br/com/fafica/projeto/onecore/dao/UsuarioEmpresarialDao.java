package br.com.fafica.projeto.onecore.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.fafica.projeto.onecore.modelos.UsuarioEmpresarial;

public class UsuarioEmpresarialDao {
	Conexao conexao = Conexao.getInstancia();

	
	
	public void cadastrar(UsuarioEmpresarial usuarioEmp) throws SQLException {
	
		
		String sql = "insert into usuario "
				+ "(nome, email, cep, rua, numero, bairro, cidade, estado, telefone, senha, pergunta_secreta, resposta_secreta, grupo)"
				+ " values ('" + usuarioEmp.getNome() + "','" + usuarioEmp.getEmail() + "','" + usuarioEmp.getCEP() + "','"
				+ usuarioEmp.getRua() + "' , '" + usuarioEmp.getNumero()+ "' , '"
				+ usuarioEmp.getBairro() + "' , '" +usuarioEmp.getCidade()+ "' , '" 
				+ usuarioEmp.getEstado() + "' , '" + usuarioEmp.getTelefone()+ "' , '"
				+ usuarioEmp.getSenha()+ "' , '" + usuarioEmp.getPerguntaSecreta()+ "' , '"
				+ usuarioEmp.getRespostaSecreta()+ "' , '"
				+ usuarioEmp.getGrupo()+ "')";
		
		String sql2 = "insert into usuario_empresarial "
				+ "(email_empresarial, matricula, cnpj_empresa)"
				+ " values ('"+ usuarioEmp.getEmail() + "' , '"+ usuarioEmp.getMatricula() +  "' , '" + usuarioEmp.getVinculo()+ "')";
		
		conexao.prepareStatement(sql).executeUpdate();
		conexao.prepareStatement(sql2).executeUpdate();
		
	
		
		}

	public List<UsuarioEmpresarial> listar() throws SQLException{
		List<UsuarioEmpresarial> listaUsuarioEmp = new ArrayList<>();
		String sql = "select*from usuario_empresarial_listar";
	
		try{
			ResultSet rs;
			rs = conexao.prepareStatement(sql).executeQuery();
		
			while(rs.next()){
				UsuarioEmpresarial usuarioEmp = new UsuarioEmpresarial();
				usuarioEmp.setNome(rs.getString(1));
				usuarioEmp.setEmail(rs.getString(2));
				usuarioEmp.setCEP(rs.getString(3));
				usuarioEmp.setRua(rs.getString(4));
				usuarioEmp.setNumero(rs.getInt(5));
				usuarioEmp.setBairro(rs.getString(6));
				usuarioEmp.setCidade(rs.getString(7));
				usuarioEmp.setEstado(rs.getString(8));
				usuarioEmp.setTelefone(rs.getString(9));
				usuarioEmp.setSenha(rs.getString(10));
				usuarioEmp.setPerguntaSecreta(rs.getString(11));
				usuarioEmp.setRespostaSecreta(rs.getString(12));
				usuarioEmp.setMatricula(rs.getString(13));
				usuarioEmp.setVinculo(rs.getString(14));
				listaUsuarioEmp.add(usuarioEmp);
		}
	}
	
			catch (SQLException e) {
				e.printStackTrace();
			}
		return listaUsuarioEmp;
	}

	public void alterar(UsuarioEmpresarial usuarioEmp) throws SQLException {
	
		String sql = "update usuario set cep = '"+usuarioEmp.getCEP()+"' , rua = '"+usuarioEmp.getRua()+"' , numero = '"
		+usuarioEmp.getNumero()+"' , bairro = '"+usuarioEmp.getBairro()+"' , cidade = '"+usuarioEmp.getCidade()+"' , estado = '"
		+usuarioEmp.getEstado()+"' , telefone = '"+usuarioEmp.getTelefone()+"' , senha = '"+usuarioEmp.getSenha()+"' , pergunta_secreta = '"
		+usuarioEmp.getPerguntaSecreta()+"' , resposta_secreta = '"+usuarioEmp.getRespostaSecreta()+"' where email = '"+usuarioEmp.getEmail()+"'";
			try {
				conexao.prepareStatement(sql).executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}

	public void excluir(UsuarioEmpresarial usuarioEmp) throws SQLException {
	
	String sql = "delete FROM usuario_emp where email_empresarial ='"+usuarioEmp.getEmail()+"'";	
	String sql2 = "delete FROM usuario where email = '"+usuarioEmp.getEmail()+"'";
		try {
			conexao.prepareStatement(sql).executeUpdate();
			conexao.prepareStatement(sql2).executeUpdate();
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
	}


}
