package br.com.emerson.locauto.model;



import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

/**
 * @author Emerson Sousa
 * 
 * Esta classe representa um ve�culo do tipo carro na aplica��o.
 */
@Entity
@DiscriminatorValue(value = "C")
public class Carro extends Veiculo {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String acessorios;
	private String potencia;
	public String getAcessorios() {
		return acessorios;
	}
	public void setAcessorios(String acessorios) {
		this.acessorios = acessorios;
	}
	public String getPotencia() {
		return potencia;
	}
	public void setPotencia(String potencia) {
		this.potencia = potencia;
	}


	

}
