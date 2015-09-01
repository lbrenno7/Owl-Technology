package br.com.fafica.projeto.onecore.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.fafica.projeto.onecore.modelos.UsuarioPessoa;

public class UsuarioPessoaDao {
	Conexao conexao = Conexao.getInstancia();

//metodo de castro de pessoa	
public void cadastrar (UsuarioPessoa pessoa) throws SQLException {
	
		
	String sql = "insert into usuario "
			+ "(nome, email, cep, rua, numero, bairro, cidade, estado, telefone, senha, pergunta_secreta, resposta_secreta, grupo)"
			+ " values ('" + pessoa.getNome() + "','" + pessoa.getEmail() + "','" + pessoa.getCEP() + "','"
			+ pessoa.getRua() + "' , '" + pessoa.getNumero()+ "' , '"
			+ pessoa.getBairro() + "' , '" +pessoa.getCidade()+ "' , '" 
			+ pessoa.getEstado() + "' , '" + pessoa.getTelefone()+ "' , '"
			+ pessoa.getSenha()+ "' , '" + pessoa.getPerguntaSecreta()+ "' , '"
			+ pessoa.getRespostaSecreta()+ "' ,'"
			+ pessoa.getGrupo()+ "')";
	String sql2 = "insert into usuario_pessoa "
			+ "(email_pessoa, rg, cpf)"
			+ " values ('"+ pessoa.getEmail() + "' , '"+ pessoa.getRG() +  "' , '" + pessoa.getCPF()+ "')";
	
	conexao.prepareStatement(sql).executeUpdate();
	conexao.prepareStatement(sql2).executeUpdate();
	}

//metodo para listar pessoas
public List<UsuarioPessoa> listar() throws SQLException{
	List<UsuarioPessoa> listaPessoa = new ArrayList<>();
	String sql = "select*usuario_pessoa_listar";
	
	try{
		ResultSet rs;
		rs = conexao.prepareStatement(sql).executeQuery();
		

		while(rs.next()){
			UsuarioPessoa pessoa = new UsuarioPessoa();
			pessoa.setNome(rs.getString(1));
			pessoa.setEmail(rs.getString(2));
			pessoa.setCEP(rs.getString(3));
			pessoa.setRua(rs.getString(4));
			pessoa.setNumero(rs.getInt(5));
			pessoa.setBairro(rs.getString(6));
			pessoa.setCidade(rs.getString(7));
			pessoa.setEstado(rs.getString(8));
			pessoa.setTelefone(rs.getString(9));
			pessoa.setSenha(rs.getString(10));
			pessoa.setPerguntaSecreta(rs.getString(1));
			pessoa.setRespostaSecreta(rs.getString(12));
			pessoa.setRG(rs.getString(13));
			pessoa.setCPF(rs.getString(14));;
			listaPessoa.add(pessoa);
		}
	}
	
	catch (SQLException e) {
	e.printStackTrace();
	}
	return listaPessoa;
}

//metodo de alteração de pessoas, 
//obs: pessoa não pode alterar : nome,email,rg ou cpf
public void alterar(UsuarioPessoa pessoa) throws SQLException {
	
	
	String sql = "update usuario set cep = '"+pessoa.getCEP()+"' , rua = '"+pessoa.getRua()+"' , numero = '"
			+pessoa.getNumero()+"' , bairro = '"+pessoa.getBairro()+"' , cidade = '"+pessoa.getCidade()+"' , estado = '"
			+pessoa.getEstado()+"' , telefone = '"+pessoa.getTelefone()+"' , senha = '"+pessoa.getSenha()+"' , pergunta_secreta = '"
			+pessoa.getPerguntaSecreta()+"' , resposta_secreta = '"+pessoa.getRespostaSecreta()+"' where email = '"+pessoa.getEmail()+"'";
			try {
			conexao.prepareStatement(sql).executeUpdate();
			} catch (SQLException e) {
			e.printStackTrace();
			}
}

public void excluir(UsuarioPessoa pessoa) throws SQLException {
	
	String sql = "delete FROM usuario_pessoa where email_pessoa = '"+pessoa.getEmail()+"'";
	String sql2 = "delete FROM usuario where email = '"+pessoa.getEmail()+"'";
	try {
		conexao.prepareStatement(sql).executeUpdate();
		conexao.prepareStatement(sql2).executeUpdate();
	} catch (SQLException e) {
	e.printStackTrace();
	}
}

}
