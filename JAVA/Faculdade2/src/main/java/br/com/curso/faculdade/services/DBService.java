package br.com.curso.faculdade.services;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import br.com.curso.faculdade.entities.Aluno;
import br.com.curso.faculdade.repositories.AlunoRepository;

@Service
public class DBService {
	@Autowired
	AlunoRepository alunoRepository;
	@Bean
	public void instanciarDB() {
	DateTimeFormatter formato = DateTimeFormatter.ofPattern(
			"dd/MM/yyyy HH:mm");
	Aluno aluno1 = new Aluno("Joaquim José da Silva", 
			LocalDateTime.parse("07/10/2022 20:35", formato), true);
	Aluno aluno2 = new Aluno("Maria Benedita", 
			LocalDateTime.parse("07/10/2022 20:39", formato), false);
	Aluno aluno3 = new Aluno("Marcos Joaquim", 
			LocalDateTime.parse("14/10/2022 19:56", formato), true);
	Aluno aluno4 = new Aluno("Julio Joaquim", 
			LocalDateTime.parse("14/10/2022 20:20", formato), true);
	alunoRepository.saveAll(Arrays.asList(aluno1, aluno2, aluno3, aluno4));
	}
}
