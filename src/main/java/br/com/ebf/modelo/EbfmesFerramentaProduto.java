package br.com.ebf.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name = "Ebfmes.Ferramenta_Produto")
public class EbfmesFerramentaProduto {

	@Id
	@Column(name = "codigo_ferramenta", length = 24)
	private String codigoFerramenta;

	@Column(name = "codigo_produto", length = 24)
	private String codigoProduto;

	@Column(name = "indice_cavidades")
	private Integer indiceCavidades;

	@Column
	private Integer prensa;

	/****************************************************/
	// MAPEAMENTO

	@OneToOne
	@JoinColumn(name = "codigo_ferramenta")
	EbfmesItemFerramenta ebfmesItemFerramenta;

	/****************************************************/

	public String getCodigoFerramenta() {
		return codigoFerramenta;
	}

	public String getCodigoProduto() {
		return codigoProduto;
	}

	public Integer getIndiceCavidades() {
		return indiceCavidades;
	}

	public Integer getPrensa() {
		return prensa;
	}

	public EbfmesItemFerramenta getEbfmesItemFerramenta() {
		return ebfmesItemFerramenta;
	}
}