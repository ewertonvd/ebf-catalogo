package br.com.ebf.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity(name = "EBF_PRODUTO_AUXILIAR")
public class EbfProdutoAuxiliar {

	@Id
	@NotEmpty
	@Column(name = "codigo_produto", length = 24)
	private String codigoProduto;

	@Column(name = "descricao", length = 30)
	private String descricaoTipoProduto;

	public String getCodigoProduto() {
		return codigoProduto;
	}

	public String getDescricaoTipoProduto() {
		return descricaoTipoProduto;
	}
}