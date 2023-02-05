package br.edu.senacsp.projeto.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

@Entity
public class Pessoa implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	String nome;
	String email;
	String cpf;
	Date  dataNascimento;	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public Date getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	public Pessoa() {
		super();
	}
	
	public Pessoa(String nome, String email, String cpf, Date dataNascimento, boolean adulto) {
		super();
		this.nome = nome;
		this.email = email;
		this.cpf = cpf;
		this.dataNascimento = dataNascimento;		
	}
	public Pessoa(String nome, String email, String cpf, Date dataNascimento) {
		super();
		this.nome = nome;
		this.email = email;
		this.cpf = cpf;
		this.dataNascimento = dataNascimento;
		System.out.println(dataNascimento.getYear());
	}
	@Override
	public String toString() {
		return "Id=" + id + ", nome=" + nome + ", email=" + email + ", cpf=" + cpf + ", dataNascimento="
				+ dataNascimento ;
	}
}