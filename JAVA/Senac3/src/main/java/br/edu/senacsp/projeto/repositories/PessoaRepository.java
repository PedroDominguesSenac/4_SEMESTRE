package br.edu.senacsp.projeto.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.senacsp.projeto.model.Pessoa;

public interface PessoaRepository extends 
	JpaRepository<Pessoa, Long>{

}
