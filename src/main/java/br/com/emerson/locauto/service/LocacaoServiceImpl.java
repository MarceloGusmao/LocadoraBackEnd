package br.com.emerson.locauto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.emerson.locauto.dao.LocacaoDAO;
import br.com.emerson.locauto.model.Locacao;
import br.com.emerson.locauto.model.LocacaoClientePF;

/**
 * Esta classe � um service, camada respons�v�l pela utiliza��o do DAOLocacao
 * @author Emerson
 *
 */
@Service
public class LocacaoServiceImpl implements LocacaoService {

	@Autowired
	private LocacaoDAO dao;

	/**
	 * Este m�todo usa DAO para salvar uma loca��o no banco.
	 */
	@Transactional
	public Locacao salvar(Locacao locacao) {

		return dao.salvar(locacao);
	}

	/**
	 * Este m�todo usa DAO para buscar uma locacao pelo id.
	 */
	@Transactional
	public Locacao buscaPorId(Integer id) {

		return dao.buscaPorId(id);
	}

	/**
	 * Este m�todo usa DAO para buscar todos as loca��es no banco.
	 */
	@Transactional
	public List<Locacao> buscaTodos() {

		return dao.buscaTodos();
	}

	/**
	 * Este m�todo usa DAO para deletar uma loca��o pelo id.
	 */
	@Transactional
	public boolean deleta(Integer id) {
		Boolean result = dao.deleta(id);
		return result;
	}

	/**
	 * Este m�todo usa DAO para buscar uma lista de  loca��es por tipo de cliente.
	 */
	@Transactional
	public List<Locacao> buscaPorTipoCliente(String clienteTipo) {
		
		return dao.buscaPorTipoCliente(clienteTipo);
	}

	/**
	 *  Este m�todo usa DAO para buscar uma lista de  loca��es por tipo de cliente e Status da loca��o.
	 */
	@Transactional
	public List<Locacao> buscaPorTipoClienteStatus(String clienteTipo, String situacao) {
		
		return dao.buscaPorTipoClienteStatus(clienteTipo, situacao);
	}

}
