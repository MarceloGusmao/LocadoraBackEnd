package br.com.emerson.locauto.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import br.com.emerson.locauto.model.Agencia;
import br.com.emerson.locauto.model.Veiculo;
import br.com.emerson.locauto.service.AgenciaService;
import br.com.emerson.locauto.service.FuncionarioService;
import br.com.emerson.locauto.service.VeiculoService;

@CrossOrigin(origins = "*")
@RestController
public class AgenciaController {
	
	@Autowired
	private AgenciaService agenciaService;
	
	@Autowired
	private FuncionarioService funcionarioService;
	
	@Autowired
	private VeiculoService veiculoService;
	
	private Map<Integer, Agencia> agencias;
	
	/**
	 * Metodo responsavel por listar as agencia no front
	 * @return
	 */
	@ResponseBody
	@GetMapping("/agencia")
	public List<Agencia> listar() {
		List<Agencia> agencias = agenciaService.buscaTodos(); 
		return agencias;
	}
	
	/**
	 * Metodo responsavel por adicionar uma agencia no front
	 * @param agencia Parametro que represeta o objeto ja montado pela view 
	 * @param result 
	 * @param gerenteResponsavel Paramentro que informa qual o gerente desta agencia
	 * @return
	 */
	@ResponseBody
	@PostMapping("/cadastroagencia")
	public Agencia addAgencia(@RequestBody Agencia agencia) {
		return agenciaService.salvar(agencia); 		
	}
	
	/**
	 * Metodo responsavel para deletar uma agencia atraves do id
	 * @param id Parametro que diz qual agencia vai ser deletado
	 * @return
	 */
	@ResponseBody
	@DeleteMapping("/agencia/{id}")
	public ResponseEntity<Void> deletar(@PathVariable("id") int id) {
		try {
			agenciaService.deleta(id);
			return ResponseEntity.noContent().build();
		}catch(Exception e) {
			return ResponseEntity.notFound().build();
		}
	}
	
	/**
	 * Metodo responsavel por mostrar o objeto na view atraves do ID
	 * @param id parametro para buscar a agencia no banco 
	 * @return
	 */
	@ResponseBody
	@GetMapping("/alteraragencia/{id}")
	public ResponseEntity<Agencia> editaAgencia(@PathVariable("id") int id) {
		try {
			Agencia agencia = agenciaService.buscaPorId(id);
			return ResponseEntity.ok(agencia);
		}catch(Exception e) {
			return ResponseEntity.notFound().build();
		}
	}
	
	/**
	 * Metodo responsavel por alterar a agencia no banco 
	 * @param id Parametro para indicar qual agencia esta sendo modificada
	 * @param agencia Objeto passado na view
	 * @return
	 */
	@ResponseBody
	@PostMapping("/alteraragencia/{id}")
	public Agencia alterarAgencia(@PathVariable("id") int id ,@RequestBody Agencia agencia) {
		return agenciaService.salvar(agencia); 		
	}
}
