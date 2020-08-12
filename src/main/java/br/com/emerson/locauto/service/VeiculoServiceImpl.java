package br.com.emerson.locauto.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.emerson.locauto.dao.VeiculoDAO;
import br.com.emerson.locauto.model.Veiculo;
/**
 * @author Emerson Sousa
 * 
 * Esta classe � um service, camada respons�v�l pela utiliza��o do DAOVeiculo
 */

@Service
public class VeiculoServiceImpl implements VeiculoService {
	
	@Autowired
	private VeiculoDAO dao;
	
	/**
	 *  Este m�todo usa DAO para salvar umve�culo no banco.
	 */
	@Transactional
	public Veiculo salvar(Veiculo veiculo) {
		
		return dao.salvar(veiculo);
	}
	
	/**
	 *  Este m�todo usa DAO para buscar um ve�culo pelo id.
	 */
	@Transactional
	public Veiculo buscaPorId(Integer id) {
		
		return dao.buscaPorId(id);
	}
	
	/**
	 *  Este m�todo usa DAO para buscar todos os ve�culos.
	 */
	@Transactional
	public List<Veiculo> buscaTodos() {

		return dao.buscaTodos();
	}
	
	/**
	 *  Este m�todo usa DAO para buscar um ve�culo por tipo
	 */
	@Transactional
	public List<Veiculo> buscaPorTipo(String tipo) {

		return dao.buscaPorTipo(tipo);
	}
	
	/**
	 *  Este m�todo usa DAO para deletar um ve�culo pelo id.
	 */
	@Transactional
	public boolean deleta(Integer id) {
		Boolean result = dao.deleta(id);
		return result;
	}

}
