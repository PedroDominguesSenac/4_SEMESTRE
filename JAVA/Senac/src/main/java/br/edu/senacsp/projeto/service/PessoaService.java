package br.edu.senacsp.projeto.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.senacsp.projeto.model.Pessoa;
import br.edu.senacsp.projeto.repositories.PessoaRepository;

@Service
public class PessoaService {
	@Autowired
	private PessoaRepository pessoaRepository;
	
	public Pessoa findById(Long id) {
		Optional <Pessoa> pessoa = pessoaRepository.findById(id);
		return pessoa.orElse(null);
	}

	public Pessoa findByNome(String nome) {
		Optional <Pessoa> pessoa = pessoaRepository.findByNome(nome);
		return pessoa.orElse(null);
	}

	public Pessoa findByCpf(String cpf) {
		Optional <Pessoa> pessoa = pessoaRepository.findByCpf(cpf);
		return pessoa.orElse(null);
	}

	public List<Pessoa> findAll() {
		List <Pessoa> pessoas = pessoaRepository.findAll();
		return pessoas;
	}

	public Pessoa gravarPessoa(Pessoa pessoa) {
		return pessoaRepository.save(pessoa);
	}

	public void deletar(Long id) {
		pessoaRepository.deleteById(id);		
	}

	public Pessoa update(Long id, Pessoa pessoa) {
		Pessoa alterado = findById(id);
			if(alterado!=null){
				alterado.setNome(pessoa.getNome());
				alterado.setEmail(pessoa.getEmail());
				alterado.setCpf(pessoa.getCpf());
				alterado.setDataNascimento(pessoa.getDataNascimento());
				return pessoaRepository.save(alterado);
			}
			return null;
		}
}