package br.com.ebf.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "Ebfmes.Ferramenta")
public class EbfmesFerramenta {

	@Id
	@Column(name = "codigo_ferramenta", length = 24)
	private String codigoFerramenta;

	// codigoProduto => EBFMES.FERRAMENTA_PRODUTO

	// descricao => EBFMES.ITEM_FERRAMENTA

	@Column(name = "qtd_furos")
	private Integer qtdFuros;

	@Column(name = "diam_furos")
	private Double diamFuros;

	@Column(name = "diam_entre_furos")
	private Double diamEntreFuros;

	@Column(name = "rebaixo_furos", columnDefinition = "Character(1)")
	private String rebaixoFuros;

	@Column(name = "qtd_alivios")
	private Integer qtdAlivios;

	@Column(name = "diam_entre_alivios")
	private Double diamEntreAlivios;

	@Column(name = "largura_estria")
	private Double larguraEstria;

	@Column(name = "qtd_dentes_estria")
	private Integer qtdDentesEstria;

	@Column(name = "diam_externo_estria")
	private Double diamExternoEstria;

	@Column(name = "diam_interno_estria")
	private Double diamInternoEstria;

	@Column(columnDefinition = "Character(1)")
	private Character capa;

	// corrente => EBF_PRODUTO.tip_corr

	@Column(name = "diam_central")
	private Double diamCentral;

	@Column(name = "diam_rolete")
	private Double diamRolete;

	@Column(columnDefinition = "Character(1)")
	private Character dobra;

	// espessura => EBFMES.DESCRICAO_PRODUTO.espessura_min "/"
	//              EBFMES.DESCRICAO_PRODUTO.espessura_max

	// indice_cavidades => EBFMES.FERRAMENTA_PRODUTO
	@Column(columnDefinition = "Character(1)")
	private Character injetado;

	// dentes => EBFMES.PRODUTO.dentes_elos

	// prensa => EBFMES.FERRAMENTA_PRODUTO

	@Column(columnDefinition = "Character(1)")
	private Character rebaixo;

	public String getCodigoFerramenta() {
		return codigoFerramenta;
	}

	public Integer getQtdFuros() {
		return qtdFuros;
	}

	public Double getDiamFuros() {
		return diamFuros;
	}

	public Double getDiamEntreFuros() {
		return diamEntreFuros;
	}

	public String getRebaixoFuros() {
		return rebaixoFuros;
	}

	public Integer getQtdAlivios() {
		return qtdAlivios;
	}

	public Double getDiamEntreAlivios() {
		return diamEntreAlivios;
	}

	public Double getLarguraEstria() {
		return larguraEstria;
	}

	public Integer getQtdDentesEstria() {
		return qtdDentesEstria;
	}

	public Double getDiamExternoEstria() {
		return diamExternoEstria;
	}

	public Double getDiamInternoEstria() {
		return diamInternoEstria;
	}

	public Character getCapa() {
		return capa;
	}

	public Double getDiamCentral() {
		return diamCentral;
	}

	public Double getDiamRolete() {
		return diamRolete;
	}

	public Character getDobra() {
		return dobra;
	}

	public Character getInjetado() {
		return injetado;
	}

	public Character getRebaixo() {
		return rebaixo;
	}
}