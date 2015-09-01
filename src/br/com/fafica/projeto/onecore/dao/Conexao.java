package br.com.fafica.projeto.onecore.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Conexao {

	private Connection conexao;
	private String url;
	private String user;
	private String senha;
	private static String status ="";
	private PreparedStatement stmt;
	
	//declarando instancia de Conexao
	private static Conexao instancia;
	
	//construtor privado de Conexao
	private Conexao(){
		
		this.url="jdbc:mysql://localhost/coletaseletiva";
		this.user="root";
		this.senha="";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			status = "driver nao encontrado, " + e.getMessage();
		}
		
		try {
			this.conexao = DriverManager.getConnection(this.url, this.user, this.senha);
				if(conexao != null){
					status = "Conexao realizada com sucesso";
				}
		} catch (SQLException e) {
			status = "error de conexao, " + e.getMessage();
		}
	}
	
	//retorna a instancia de Conexao Ativa
	public synchronized static Conexao getInstancia(){
		if(instancia == null){
			instancia = new Conexao();
		}
		return instancia;
	}
	
	
	
	//retorna a conexão
	public Connection getConexao(){
		return conexao;
	}
	
	//retorna o status da conexao
	public synchronized static String getStatus(){
		return status;
	}

	public PreparedStatement prepareStatement(String qry) {
		try {	
			stmt =  this.conexao.prepareStatement(qry);
			//System.out.println("cadastrado com sucesso");
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return  stmt;
	}
	
	
}
