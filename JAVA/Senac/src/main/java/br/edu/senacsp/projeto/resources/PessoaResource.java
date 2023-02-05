package br.edu.senacsp.projeto.resources;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import br.edu.senacsp.projeto.model.Pessoa;
import br.edu.senacsp.projeto.service.PessoaService;

@RestController
@RequestMapping(value = "/pessoa")
public class PessoaResource {
	@Autowired
	private PessoaService pessoaService;
	
	@GetMapping
	public ResponseEntity<List<Pessoa>> findAll(){
		List<Pessoa> pessoas = pessoaService.findAll();
		return ResponseEntity.ok().body(pessoas);
	}
	
	@GetMapping(value = "/{id}")
	public ResponseEntity<Pessoa> findById(@PathVariable Integer id){
		Pessoa pessoa = pessoaService.findById((long)id);
		return ResponseEntity.ok().body(pessoa);
	}
	
	@GetMapping(value = "/nome/{nome}")
	public ResponseEntity<Pessoa> findByNome(@PathVariable String nome){
		Pessoa pessoa = pessoaService.findByNome(nome);
		return ResponseEntity.ok().body(pessoa);
	}
	
	@GetMapping(value = "/cpf/{cpf}")
	public ResponseEntity<Pessoa> findByCpf(@PathVariable String cpf){
		Pessoa pessoa = pessoaService.findByCpf(cpf);
		return ResponseEntity.ok().body(pessoa);
	}	
	
	@PostMapping
	public ResponseEntity<Pessoa> gravarPessoa(
	@RequestBody Pessoa pessoa){
		pessoa = pessoaService.gravarPessoa(pessoa);
	URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").
	buildAndExpand(pessoa.getId()).toUri();
	return ResponseEntity.created(uri).body(pessoa);
	}
	
	@DeleteMapping(value = "/{id}")
	public ResponseEntity<Void> deletar(@PathVariable Long id){
		pessoaService.deletar(id);
		return ResponseEntity.noContent().build();
	}
	
	@PutMapping(value = "/{id}")
	public ResponseEntity<Pessoa> update(@PathVariable Long id, 
		@RequestBody Pessoa Pessoa){
		Pessoa alterado = pessoaService.update(id, Pessoa);
		return ResponseEntity.ok().body(alterado);
	}
}