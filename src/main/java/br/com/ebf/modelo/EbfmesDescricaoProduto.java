package br.com.ebf.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity(name = "Ebfmes.Descricao_Produto")
public class EbfmesDescricaoProduto {

	@Id
	@NotEmpty
	@Column(name = "codigo_produto", length = 24)
	private String codigoProduto;

	@Column(length = 30)
	private String marca;

	@Column(length = 90)
	private String descricao;

	@Column(name = "ano_ini", length = 10)
	private String deAno;

	@Column(name = "ano_fim", length = 10)
	private String ateAno;

	@Column(length = 10)
	private Integer cilindrada;

	@Column(name = "dianteira_traseira", length = 3)
	private String dianteiraTraseira;

	@Column(name = "duplo_pads", columnDefinition = "Character(1)")
	private Character pincaDupla;

	@Column(length = 3)
	private Integer semelhante;

	/***********************************************************************/

	/** CAMPOS PARA OS PRODUTOS ECO ****************************************/

	@Column(name = "desc_aux1", length = 255)
	private String linhaVeiculo;

	@Column(name = "sistema_freio", length = 20)
	private String sistemaFreio;

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

	// TESTE:
	// @OneToOne
	// @JoinColumn(name = "codigo_produto")
	// private EbfmesFerramentaProduto ebfmesFerramentaProduto;

	/***********************************************************************/

	public String getCodigoProduto() {
		return codigoProduto;
	}

	public String getMarca() {
		return marca;
	}

	public String getDescricao() {
		return descricao;
	}

	public String getDeAno() {
		return deAno;
	}

	public String getAteAno() {
		return ateAno;
	}

	public Integer getCilindrada() {
		return cilindrada;
	}

	public String getDianteiraTraseira() {
		return dianteiraTraseira;
	}

	public Character getPincaDupla() {
		return pincaDupla;
	}

	public Integer getSemelhante() {
		return semelhante;
	}

	public String getLinhaVeiculo() {
		return linhaVeiculo;
	}

	public String getSistemaFreio() {
		return sistemaFreio;
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
}