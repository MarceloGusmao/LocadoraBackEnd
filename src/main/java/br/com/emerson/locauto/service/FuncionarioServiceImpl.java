package br.com.emerson.locauto.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.emerson.locauto.dao.FuncionarioDAO;
import br.com.emerson.locauto.model.Funcionario;

/**
 * @author Emerson Sousa
 * 
 * Esta classe � um service, camada respons�v�l pela utiliza��o do DAOFuncionario
 */


@Service
public class FuncionarioServiceImpl implements FuncionarioService{
	
	@Autowired
	private FuncionarioDAO dao;
	
	/**
	 * Este m�todo usa DAO para salvar um funcion�rio no banco
	 */
	@Transactional
	public Funcionario salvar(Funcionario funcionario) {
		
		return dao.salvar(funcionario);
	}
	
	/**
	 * Este m�todo usa DAO para buscar um funcion�rio por id.
	 */
	@Transactional
	public Funcionario buscaPorId(Integer id) {
		
		return dao.buscaPorId(id);
	}
	
	/**
	 * Este m�todo usa DAO para buscar todos os funcionarios do banco.
	 */
	@Transactional
	public List<Funcionario> buscaTodos() {

		return dao.buscaTodos();
	}
	
	/**
	 * Este m�todo usa DAO para buscar uma lista de clientes por tipo.
	 */
	@Transactional
	public List<Funcionario> buscaPorTipo(String tipo) {

		return dao.buscaPorTipo(tipo);
	}
	
	/**
	 * Este m�todo usa DAO para deletar um cliente pelo id.
	 */
	@Transactional
	public boolean deleta(Integer id) {
		Boolean result = dao.deleta(id);
		return result;
	}

}
