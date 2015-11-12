package br.com.fafica.projeto.onecore.modelos;

public class Coleta {

	private int indice;
	private String rua;
	private int numero;
	private String cep;
	private String bairro;
	private String cidade;
	private String estado;
	private String dataDeColeta;
	private String horarioDeColeta;
	private String status;
	
	
	

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getIndice() {
		return indice;
	}

	public void setIndice(int indice) {
		this.indice = indice;
	}
	
	public String getRua() {
		return rua;
	}
	public void setRua(String rua) {
		this.rua = rua;
	}
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getDataDeColeta() {
		return dataDeColeta;
	}
	public void setDataDeColeta(String dataDeColeta) {
		this.dataDeColeta = dataDeColeta;
	}
	public String getHorarioDeColeta() {
		return horarioDeColeta;
	}
	public void setHorarioDeColeta(String horarioDeColeta) {
		this.horarioDeColeta = horarioDeColeta;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	
	
	
}
