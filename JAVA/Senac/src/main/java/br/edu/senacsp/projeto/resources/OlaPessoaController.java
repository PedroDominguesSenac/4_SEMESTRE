package br.edu.senacsp.projeto.resources;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class OlaPessoaController {	
	@RequestMapping("/")
	@ResponseBody
	public String BemVindo() {
		return "Bem vindo ao SPRING BOOT";
	}
}
