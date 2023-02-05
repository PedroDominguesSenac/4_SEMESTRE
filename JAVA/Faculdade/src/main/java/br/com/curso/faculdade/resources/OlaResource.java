package br.com.curso.faculdade.resources;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class OlaResource {
	@RequestMapping("/") //a fim de mapear a raiz do servidor
	@ResponseBody //a fim de imprimir no corpo da página
	public String Ola() {
			return "Aplicação Funcionando!!!";
	}
}