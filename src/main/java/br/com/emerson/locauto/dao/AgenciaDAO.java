package br.com.emerson.locauto.dao;

import java.util.List;

import br.com.emerson.locauto.model.Agencia;

public interface AgenciaDAO {
	
	public Agencia salvar(Agencia agencia);
	public Agencia buscaPorId(Integer id);
	public List<Agencia> buscaTodos();
	public boolean deleta(Integer id);
	

}
