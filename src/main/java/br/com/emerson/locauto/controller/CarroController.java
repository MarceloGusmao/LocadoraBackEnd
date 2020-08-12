package br.com.emerson.locauto.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import br.com.emerson.locauto.model.Agencia;
import br.com.emerson.locauto.model.Carro;
import br.com.emerson.locauto.model.Veiculo;
import br.com.emerson.locauto.service.AgenciaService;
import br.com.emerson.locauto.service.VeiculoService;

@CrossOrigin(origins = "*")
@RestController
public class CarroController {

	@Autowired
	private VeiculoService veiculoService;

	@Autowired
	private AgenciaService agenciaService;
	
	/**
	 * Metodo responsavel por mostrar a lista de carro na view
	 * @return
	 */
	@ResponseBody
	@GetMapping("/carro")
	public List<Veiculo> listar() {
		return veiculoService.buscaPorTipo("C");
	}
	
	/**
	 * Metodo responsavel por adicionar o carro no banco
	 * @param carro Parametro que molda o objeto da view
	 * @return
	 */
	@ResponseBody
	@PostMapping("/cadastrocarro")
	public Veiculo addCarro(@RequestBody Carro carro) {
		return veiculoService.salvar(carro);
	}
	
	/**
	 * Metodo responsavel por deletar o carro do banco
	 * @param id parametro responsavel por dizer qual o id do carro que quer deletar
	 * @return
	 */
	@ResponseBody
	@DeleteMapping("/carro/{id}")
	public ResponseEntity<Void> deletar(@PathVariable("id") int id) {
		try {
			veiculoService.deleta(id);
			return ResponseEntity.noContent().build();
		}catch(Exception e) {
			return ResponseEntity.notFound().build();
		}
	}
	
	/**
	 * Metodo responsavel por pegar o carro que deseja alterar
	 * @param id parametro responsavel pegar o id do carro que quer alterar
	 * @return
	 */
	@ResponseBody
	@GetMapping(value = "/alteracarro/{id}")
	public ResponseEntity<Veiculo> editaCarro(@PathVariable("id") int id) {
		
		Veiculo carro = veiculoService.buscaPorId(id);
		
		if(carro == null) {
			return ResponseEntity.notFound().build();
		}
		return ResponseEntity.ok(carro);
	}
	
	/**
	 * Metodo responsavel por alterar o carro do banco
	 * @param id parametro responsavel por dizer qual carro esta sendo alterado
	 * @param carro parametro responsavel por moldar o objeto da view
	 * @return
	 */
	@ResponseBody
	@PostMapping("/alteracarro/{id}")
	public Veiculo editCarro(@PathVariable("id") int id, @RequestBody Carro carro) {
		return veiculoService.salvar(carro);
	}
}
