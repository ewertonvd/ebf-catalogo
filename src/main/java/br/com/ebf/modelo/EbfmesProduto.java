package br.com.ebf.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity(name = "Ebfmes.Produto")
public class EbfmesProduto {

	@Id
	@NotEmpty
	@Column(name = "codigo_produto", length = 24)
	private String codigoProduto;

	@Column(length = 5)
	private String tipo;

	@Column(name = "dentes_elos", length = 10)
	private String nroDentesElos;

	@Column(length = 1)
	private String liberado;

	@Column(columnDefinition = "Character(1)")
	private Character lancamento;

	@Column(columnDefinition = "Character(1)")
	private Character promocao;

	@Column(name = "queima_estoque", columnDefinition = "Character(1)")
	private Character queimaEstoque;

	@Column(name = "peso_liquido")
	private Double pesoLiquido;

	@Column(name = "comprimento_min")
	private Double comprimentoMin;

	@Column(name = "comprimento_max")
	private Double comprimentoMax;

	@Column(name = "largura_min")
	private Double larguraMin;

	@Column(name = "largura_max")
	private Double larguraMax;

	@Column(name = "espessura_min")
	private Double espessuraMin;

	@Column(name = "espessura_max")
	private Double espessuraMax;

	// NOVOS CAMPOS, PARA PROD. VAZCAP
	@Column(name = "modelo_tipo_produto", length = 60)
	private String modeloTipoProduto;

	@Column(length = 75)
	private String descricao;

	@Column(length = 2)
	private Integer tamanho;

	@Column(length = 30)
	private String cor;

	@Column(length = 30)
	private String decal;

	@Column(name = "cor_decal", length = 30)
	private String corDecal;

	@Column(length = 30)
	private String adesivo;

	@Column(name = "cor_adesivo", length = 30)
	private String corAdesivo;

	/**********************************************************************/
	@OneToOne
	@JoinColumn(name = "codigo_produto")
	EbfProduto ebfProduto;

	@OneToOne
	@JoinColumn(name = "codigo_tipo_produto")
	EbfmesTipoProduto ebfmesTipoProduto;

	/**********************************************************************/

	public String getCodigoProduto() {
		return codigoProduto;
	}

	public String getTipo() {
		return tipo;
	}

	public String getNroDentesElos() {
		return nroDentesElos;
	}

	public String getLiberado() {
		return liberado;
	}

	public Character getLancamento() {
		return lancamento;
	}

	public Character getPromocao() {
		return promocao;
	}

	public Character getQueimaEstoque() {
		return queimaEstoque;
	}

	public Double getPesoLiquido() {
		return pesoLiquido;
	}

	public Double getComprimentoMin() {
		return comprimentoMin;
	}

	public Double getComprimentoMax() {
		return comprimentoMax;
	}

	public Double getLarguraMin() {
		return larguraMin;
	}

	public Double getLarguraMax() {
		return larguraMax;
	}

	public Double getEspessuraMin() {
		return espessuraMin;
	}

	public Double getEspessuraMax() {
		return espessuraMax;
	}

	public String getModeloTipoProduto() {
		return modeloTipoProduto;
	}

	public String getDescricao() {
		return descricao;
	}

	public Integer getTamanho() {
		return tamanho;
	}

	public String getCor() {
		return cor;
	}

	public String getDecal() {
		return decal;
	}

	public String getCorDecal() {
		return corDecal;
	}

	public String getAdesivo() {
		return adesivo;
	}

	public String getCorAdesivo() {
		return corAdesivo;
	}

	public EbfProduto getEbfProduto() {
		return ebfProduto;
	}

	public EbfmesTipoProduto getEbfmesTipoProduto() {
		return ebfmesTipoProduto;
	}
}