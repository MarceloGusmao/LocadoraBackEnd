package br.com.emerson.locauto.model;



import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
/**
 * @author Emerson Sousa
 * 
 * Esta classe representa um Funcion�rio do tipo Locador na aplica��o.
 */
@Entity
@DiscriminatorValue(value = "L")
public class Locador extends Funcionario {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

}
