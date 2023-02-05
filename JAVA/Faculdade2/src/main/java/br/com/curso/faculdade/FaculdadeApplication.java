package br.com.curso.faculdade;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.format.annotation.DateTimeFormat;

import br.com.curso.faculdade.entities.Aluno;
import br.com.curso.faculdade.repositories.AlunoRepository;

@SpringBootApplication
public class FaculdadeApplication implements CommandLineRunner{
		
	public static void main(String[] args) {
		SpringApplication.run(FaculdadeApplication.class, args);
	}
	@Override
	public void run(String... args) throws Exception {		
	}
}
 
