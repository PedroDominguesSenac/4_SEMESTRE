package br.edu.senacsp.projeto.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.senacsp.projeto.model.Pessoa;

public interface PessoaRepository extends JpaRepository<Pessoa, Long>{
	
	Optional<Pessoa> findByNome(String nome);

	Optional<Pessoa> findByCpf(String cpf);

	void deleteById(Integer id);
}