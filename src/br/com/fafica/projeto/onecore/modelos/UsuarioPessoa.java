package br.com.fafica.projeto.onecore.modelos;

public class UsuarioPessoa extends Usuario {
	
	
	
	private String RG;
	private String CPF;
	
	
	
	
	public String getRG() {
		return RG;
	}
	public void setRG(String RG) {
		this.RG = RG;
	}
	public String getCPF() {
		return CPF;
	}
	public void setCPF(String CPF) {
		this.CPF = CPF;
	}
	
	/*public String getCpfFormatado() {
    	return this.CPF.substring(0,3) + '.' + this.CPF.substring(3,6) + '.' + this.CPF.substring(6,9) + '-' + this.CPF.substring(9,11);
    }*/
    
    /*public void setCpf(String CPF) {
    	this.CPF = CPF.replaceAll("\\.|\\-|\\ ", "");
    }*/
	
	
	
	
	
	
}
