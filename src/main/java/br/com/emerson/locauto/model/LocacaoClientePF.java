package br.com.emerson.locauto.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
/**
 * 
 * @author Emerson
 *Essta classe representa uma loca��o para um clientePF na aplica��o
 */
@Entity
@DiscriminatorValue("PF")
public class LocacaoClientePF extends Locacao{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@ManyToOne
	ClientePF clientePF;

	public ClientePF getClientePF() {
		return clientePF;
	}

	public void setClientePF(ClientePF clientePF) {
		this.clientePF = clientePF;
	}
	
	


}
