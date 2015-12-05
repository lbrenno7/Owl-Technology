package br.com.fafica.projeto.onecore.main;

import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.fafica.projeto.onecore.controladores.UsuarioControler;
import br.com.fafica.projeto.onecore.dao.Conexao;
import br.com.fafica.projeto.onecore.modelos.Usuario;

public class main {

	public static void main(String[] args) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		
		Conexao conexao = Conexao.getInstancia();
		System.out.println(Conexao.getStatus());
		
		
		///rever logica, da busca no banco, esta gravando o mesmo usuario em vez de procurar
		/*Usuario u = new Usuario();
		u.setEmail("brenno.lima@gmail.com");
		u.setSenha("hduiahduiasds");
		
		
		Usuario check = new Usuario();
		UsuarioControler login = UsuarioControler.getInstance();
		check = login.checar(u);
		
		
		
		System.out.println(u.getEmail()+" , "+u.getSenha());
		System.out.println(check.getEmail()+" , "+check.getSenha()+ " , "+check.getGrupo());*/
		
String sql2 = "select max(indice) from coleta";
		
		ResultSet rs;
		rs = conexao.prepareStatement(sql2).executeQuery();
		int indice=0;
		
		while(rs.next()){
		indice = rs.getInt(1);}
		
		System.out.println(indice);
		
			
	}
}


