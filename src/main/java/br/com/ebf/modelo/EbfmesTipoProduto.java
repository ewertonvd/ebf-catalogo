package br.com.ebf.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "Ebfmes.Tipo_Produto")
public class EbfmesTipoProduto {

	@Id
	@Column(name = "codigo_tipo_produto")
	private Integer codigoTipoProduto;

	@Column(length = 20)
	private String descricao;

	public Integer getCodigoTipoProduto() {
		return codigoTipoProduto;
	}

	public String getDescricao() {
		return descricao;
	}
}