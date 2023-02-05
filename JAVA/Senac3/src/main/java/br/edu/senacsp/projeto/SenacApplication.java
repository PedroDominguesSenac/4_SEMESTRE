package br.edu.senacsp.projeto;

import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.Date;

import javax.swing.text.DateFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import br.edu.senacsp.projeto.model.Pessoa;
import br.edu.senacsp.projeto.repositories.PessoaRepository;

@SpringBootApplication
public class SenacApplication implements CommandLineRunner {

	@Autowired
	PessoaRepository pessoaRepository;
	public static void main(String[] args) {
		SpringApplication.run(SenacApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		Pessoa pessoa1 = new Pessoa("Lucas de Souza", "lucas@gmail.com",
				"08799844722", new Date("18/03/2002"));
		Pessoa pessoa2 = new Pessoa("Marcela de Oliveira", "marcela@gmail.com",
				"30447422155", new Date("18/12/1981"));
		pessoaRepository.saveAll(Arrays.asList(pessoa1, pessoa2));
		
	}

}
