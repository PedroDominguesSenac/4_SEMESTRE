package br.edu.senacsp.projeto.service;

import java.util.Arrays;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import br.edu.senacsp.projeto.model.Pessoa;
import br.edu.senacsp.projeto.repositories.PessoaRepository;

@Service
public class DBService {
	@Autowired
	private PessoaRepository pessoaRepository;
	
	@Bean
	public void cadastrar() {
		Pessoa pessoa1 = new Pessoa("Lucas de Castro", "lucas@gmail.com",
				"08799844722", new Date("18/03/2013"));
		Pessoa pessoa2 = new Pessoa("Marcela Boaventura", "marcela@gmail.com",
				"30447422185", new Date("15/02/1981"));
		Pessoa pessoa3 = new Pessoa("Pedro de Souza", "pedro@gmail.com",
				"08799844742", new Date("13/03/1935"));
		Pessoa pessoa4 = new Pessoa("Julia Muniz", "julia@gmail.com",
				"30447422175", new Date("02/02/2015"));
		pessoaRepository.saveAll(Arrays.asList(pessoa1, pessoa2, pessoa3, pessoa4));
	}
	

}
