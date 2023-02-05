package br.edu.senacsp.mercado.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.senacsp.mercado.entities.Produto;

public interface ProdutoRepository extends 
	JpaRepository<Produto, Long>{
}
