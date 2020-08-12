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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import br.com.emerson.locauto.model.Carro;
import br.com.emerson.locauto.model.Motocicleta;
import br.com.emerson.locauto.model.Veiculo;
import br.com.emerson.locauto.service.AgenciaService;
import br.com.emerson.locauto.service.VeiculoService;

@CrossOrigin(origins = "*")
@RestController
public class MotoController {

	@Autowired
	private VeiculoService veiculoService;

	@Autowired
	private AgenciaService agenciaService;
	
	/**
	 * Metodo responsavel para mostrar a lista na view
	 * @return
	 */
	@ResponseBody
	@GetMapping("/moto")
	public List<Veiculo> listar() {
		return veiculoService.buscaPorTipo("M");
	}
	
	/**
	 * Metodo responsavel para cadastrar uma moto no banco
	 * @param moto Parametro que molda o objeto da view para o metodo
	 * @return
	 */
	@ResponseBody
	@PostMapping("/cadastromoto")
	public Veiculo addMoto(@RequestBody Motocicleta moto) {
		return veiculoService.salvar(moto);
	}
	
	/**
	 * Metodo responsavel por deletar uma moto atraves do id 
	 * @param id parametro que pega o id da view 
	 * @return
	 */
	@ResponseBody
	@DeleteMapping("/moto/{id}")
	public ResponseEntity<?> deletar(@PathVariable("id") int id) {
		
		veiculoService.deleta(id);
		return ResponseEntity.noContent().build();
	}
	
	/**
	 * Metodo responsavel por pegar a moto do banco para poder fazer a alteração
	 * @param id parametro que pega o id da view para buscar a moto no banco
	 * @return
	 */
	@GetMapping("/alteramoto/{id}")
	public ResponseEntity<Veiculo> editaMoto(@PathVariable("id") int id) {
		Veiculo moto = veiculoService.buscaPorId(id);
		
		if(moto == null) {
			return ResponseEntity.notFound().build();
		}
		return ResponseEntity.ok(moto);
	}
	
	/**
	 * Metodo responsavel por alterar a moto 
	 * @param id parametro que identifica qual moto esta sendo modificada
	 * @param Moto parametro que molda o objeto da view
	 * @return
	 */
	@ResponseBody
	@PostMapping("/alteramoto/{id}")
	public Veiculo editMoto(@PathVariable("id") int id, @RequestBody Motocicleta Moto) {
		return veiculoService.salvar(Moto);
	}
}
