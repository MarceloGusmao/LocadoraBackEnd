package br.com.emerson.locauto.dao;


import java.util.List;

import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.emerson.locauto.model.Agencia;
/**
 * @author Emerson Sousa
 * 
 * Esta classe faz o gerenciamento (CRUD) da classe agencia no banco de dados
 */
@Repository
public class AgenciaDAOImpl implements AgenciaDAO {

	private final Logger logger = LoggerFactory.getLogger(AgenciaDAOImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;

	/**
	 * Salva uma agencia no banco de dados caso a mesma n�o exista, se j� existe faz
	 * um upload da ag�ncia no banco.
	 * 
	 * @param agencia
	 * @return
	 */
	public Agencia salvar(Agencia agencia) {

		logger.info("Iniciando transa��o para salvar/editar registro da agencia");
		try {
			
			sessionFactory.getCurrentSession().saveOrUpdate(agencia);
			
			logger.info("Agencia salva com sucesso");
			
		} catch (Exception e) {
			
			logger.error("Falha ao salvar agencia: " + e.getMessage() );
		}
		
		
		return agencia;
//		
	}

	/**
	 * Busca  a ag�ncia no banco de dados pelo o id passado como par�metro e retorna a ag�ncia encontrada.
	 * @param id
	 * @return
	 */
	public Agencia buscaPorId(Integer id) {

		Agencia agencia = null;
		
		logger.info("Iniciando transa��o para buscar registro da agencia por id");
		
		try {
			
			agencia  =  sessionFactory.getCurrentSession().find(Agencia.class, id);
			
			logger.info("Agencia encontrada com sucesso");
			
		} catch (Exception e) {
			
			logger.error("Falha ao buscar agencia: " + e.getMessage() );
		}
		
		
		return agencia;
//		

	}

	/**
	 * Recupera uma lista de todas as ag�ncias armazenadas no banco
	 * 
	 * @return
	 */
	public List<Agencia> buscaTodos() {

		List<Agencia> agencias = null;
		
		logger.info("Iniciando transa��o para buscar todas as agencias no banco");
		
		try {
			
			agencias = sessionFactory.getCurrentSession().createQuery("from Agencia", Agencia.class).list();
			
			logger.info("Agencias encontrada com sucesso");
			
		} catch (Exception e) {
			
			logger.error("Falha ao buscar agencias: " + e.getMessage() );


		}
		
		
		return agencias;
//		
	}

	/**
	 * Deleta do banco de dados aag�ncias com id passado como par�metro do banco de
	 * dados
	 * 
	 * @param id
	 * @return
	 */
	public boolean deleta(Integer id) {

		Agencia agencia = null;
		
		logger.info("Iniciando transa��o para deletar agencia no banco");
		
		try {
			
			agencia = sessionFactory.getCurrentSession().find(Agencia.class, id);
			
			if(agencia != null) {
				
				sessionFactory.getCurrentSession().delete(agencia);
				
				logger.info("sucesso ao deletar agencia");
				
				return true;
			}else {
				
				logger.error("Falha ao deletar Agencia com id = " + id + " n�o existe");
			}
			
		} catch (Exception e) {
			
			logger.error("Falha ao deletar Agencia" + "erro:" + e.getMessage());
		}
		return false;
		
		
		
		
		
	}

}
