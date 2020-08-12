package br.com.emerson.locauto.service;



import java.util.List;
/**
 * @author Emerson Sousa
 * 
 * Esta classe � um service, camada respons�v�l pela utiliza��o do DAOPlanos
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.emerson.locauto.dao.PlanosDAO;
import br.com.emerson.locauto.model.Planos;
/**
 * @author Emerson Sousa
 * 
 * Esta classe � um service, camada respons�v�l pela utiliza��o do DAOPlanos
 */


@Service
public class PlanosServiceImpl implements PlanosService {

	@Autowired
	private PlanosDAO dao;

	/**
	 *  Este m�todo usa DAO para salvar  um plano.
	 */
	@Transactional
	public Planos salvar(Planos plano) {

		return dao.salvar(plano);
	}

	/**
	 *  Este m�todo usa DAO para buscar um plano pelo id.
	 */
	@Transactional
	public Planos buscaPorId(Integer id) {

		return dao.buscaPorId(id);
	}

	/**
	 *  Este m�todo usa DAO para buscar todos os planos.
	 */
	@Transactional
	public List<Planos> buscaTodos() {

		return dao.buscaTodos();
	}

	/**
	 *  Este m�todo usa DAO para buscar uma lista de planos por tipo.
	 */
	@Transactional
	public List<Planos> buscaPorTipo(String tipo) {

		return dao.buscaPorTipo(tipo);
	}

	/**
	 *  Este m�todo usa DAO para deletar um plano do banco
	 */
	@Transactional
	public boolean deleta(Integer id) {
		Boolean result = dao.deleta(id);
		return result;
	}

}
