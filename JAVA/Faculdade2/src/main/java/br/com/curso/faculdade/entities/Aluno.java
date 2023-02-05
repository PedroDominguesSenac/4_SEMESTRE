package br.com.curso.faculdade.entities;
import java.io.Serializable;
import java.time.LocalDateTime;
import javax.persistence.Entity;
import javax.persistence.*;

@Entity (name = "Alunos")
public class Aluno implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column (name = "RA")
	int ra;
	
	@Column (name = "Nome")
	String nome;
	
	@Column
	LocalDateTime dataCadastro;
	
	@Column
	boolean ativo;

	public boolean isAtivo() {
		return ativo;
	}

	public Aluno(String nome, LocalDateTime dataCadastro, boolean ativo) {
		super();
		this.nome = nome;
		this.dataCadastro = dataCadastro;
		this.ativo = ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public int getRa() {
		return ra;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public LocalDateTime getDataCadastro() {
		return dataCadastro;
	}

	public void setDataCadastro(LocalDateTime dataCadastro) {
		this.dataCadastro = dataCadastro;
	}

	public Aluno() {
		super();
	}

	public Aluno(String nome, LocalDateTime dataCadastro) {
		super();
		this.nome = nome;
		this.dataCadastro = dataCadastro;
	}

	@Override
	public String toString() {
		return "Aluno RA = " + ra + ", Nome =" + nome + ", "
				+ "Data de Cadastro = " + dataCadastro 
				+ "Aluno ativo" + ativo + "\n";
	}
}