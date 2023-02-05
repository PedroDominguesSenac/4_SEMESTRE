package br.edu.senacsp.mercado;

import java.util.Arrays;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import br.edu.senacsp.mercado.entities.Produto;
import br.edu.senacsp.mercado.repositories.ProdutoRepository;

@SpringBootApplication
public class MercadoBaratoApplication implements CommandLineRunner {

	@Autowired
	ProdutoRepository produtoRepository;
	public static void main(String[] args) {
		SpringApplication.run(MercadoBaratoApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		Produto p1 = new Produto("Macarrão", 
				new Date("07/12/2022"));
		Produto p2 = new Produto("Gelatina", 
				new Date("07/12/2022"));
		produtoRepository.saveAll(Arrays.asList(p1, p2));
	}

}
