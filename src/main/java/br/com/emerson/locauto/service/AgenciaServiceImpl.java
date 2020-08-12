package br.com.emerson.locauto.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.emerson.locauto.dao.AgenciaDAO;
import br.com.emerson.locauto.model.Agencia;
/**
 * @author Emerson Sousa
 * 
 * Esta classe � um service, camada respons�v�l pela utiliza��o do DAOAgencia 
 */
@Service
public class AgenciaServiceImpl implements AgenciaService {
	
	@Autowired
	private AgenciaDAO dao;
	
	/**
	 * Este m�todo usa DAO para salva uma ag�nciano banco
	 */
	@Transactional
	public Agencia salvar(Agencia agencia) {
		
		return dao.salvar(agencia);
	}
	
	/**
	 * Este m�todo usa DAO para buscar uma ag�ncia pelo id
	 */
	@Transactional
	public Agencia buscaPorId(Integer id) {
		
		return dao.buscaPorId(id);
	}
	
	/**
	 * Este m�todo usa DAO para buscar todas as ag�ncias no banco
	 */
	@Transactional
	public List<Agencia> buscaTodos() {

		return dao.buscaTodos();
	}
	
	/**
	 * Este m�todo usa DAO para deletar uma ag�ncia pelo id
	 */
	@Transactional
	public boolean deleta(Integer id) {
		Boolean result = dao.deleta(id);
		return result;
	}

}
