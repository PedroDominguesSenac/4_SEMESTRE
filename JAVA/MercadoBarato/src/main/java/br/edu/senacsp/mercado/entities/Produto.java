package br.edu.senacsp.mercado.entities;

import java.util.Date;

import javax.persistence.*;

@Entity
public class Produto {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	String descricao;
	Date validade;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Date getValidade() {
		return validade;
	}
	public void setValidade(Date validade) {
		this.validade = validade;
	}
	public Produto() {
		super();
	}
	public Produto(String descricao, Date validade) {
		super();
		this.descricao = descricao;
		this.validade = validade;
	}
	@Override
	public String toString() {
		return "Produto [id=" + id + ", descricao=" + descricao + ", validade=" + validade + "]";
	}
	
	
	
	

}
