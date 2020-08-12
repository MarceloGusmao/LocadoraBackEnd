package br.com.emerson.locauto.service;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.emerson.locauto.dao.ClienteDAO;
import br.com.emerson.locauto.model.Cliente;
/**
 * @author Emerson Sousa
 * 
 * Esta classe � um service, camada respons�v�l pela utiliza��o do DAOCliente 
 */
@Service
public class ClienteServiceImpl implements ClienteService {

	@Autowired
	private ClienteDAO dao;

	/**
	 * Este m�todo usa DAO para salvar um cliente no banco
	 */
	@Transactional
	public Cliente salvar(Cliente cliente) {

		return dao.salvar(cliente);
	}

	/**
	 * Este m�todo usa DAO para buscar um cliente pelo id
	 */
	@Transactional
	public Cliente buscaPorId(Integer id) {

		return dao.buscaPorId(id);
	}

	/**
	 * Este m�todo usa DAO para buscar todos os clientes no banco
	 */
	@Transactional
	public List<Cliente> buscaTodos() {

		return dao.buscaTodos();
	}
	
	/**
	 * Este m�todo usa DAO para buscar os clientes por tipo no banco
	 */
	@Transactional
	public List<Cliente> buscaPorTipo(String tipo) {

		return dao.buscaPorTipo(tipo);
	}

	@Transactional
	public boolean deleta(Integer id) {

		Boolean result = dao.deleta(id);
		return result;
	}

}
