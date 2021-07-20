package br.com.ebf.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity(name = "EBF_PRODUTO")
public class EbfProduto {

	@Id
	@NotEmpty
	@Column(name = "codigo_produto", length = 24)
	private String codigoProduto;

	@Column(name = "codigo_rapido", length = 24)
	private String codigoRapido;

	@Column(name = "sulfixo_opcional", length = 6)
	private String sulfixoOpcional;

	@Column(name = "tip_corr", length = 7)
	private String tipoCorrente;

	@Column(length = 6)
	private String prefixo;

	@Column(name = "duplo_pads", length = 1)
	private String pincaDupla;

	@Column(length = 30)
	private String marca;

	@Column(name = "pc_orig", columnDefinition = "Character(1)")
	private Character original;

	@Column(name = "preco_real")
	private Double preco;

	@Column(length = 60)
	private String imagem;

	@Column(name = "imagem_embalagem", length = 60)
	private String imagemEmbalagem;

	@Column(name = "local_imagem", length = 100)
	private String localImagem;

	@Column(name = "codigo_ean", length = 24)
	private String ean;

	@Column(columnDefinition = "Character(1)")
	private Character catalogo;

	/***************************************************************/

	// KIT - VAZ

	@Column(name = "codigo_coroa", length = 24)
	private String codigoCoroa;

	@Column(name = "codigo_corrente", length = 24)
	private String codigoCorrente;

	@Column(name = "codigo_pinhao", length = 24)
	private String codigoPinhao;

	@Column(name = "imagem_coroa", length = 60)
	private String imagemCoroa;

	@Column(name = "imagem_corrente", length = 60)
	private String imagemCorrente;

	@Column(name = "imagem_pinhao", length = 60)
	private String imagemPinhao;

	public String getCodigoProduto() {
		return codigoProduto;
	}

	/***************************************************************/
	// Mapeamento:

	@OneToOne
	@JoinColumn(name = "codigo_class")
	private EbfCodClassFiscal ebfCodClassFiscal;

	@OneToOne
	@JoinColumn(name = "codigo_produto")
	EbfmesDescricaoProduto ebfmesDescricaoProduto;

	/***************************************************************/

	public String getCodigoRapido() {
		return codigoRapido;
	}

	public String getSulfixoOpcional() {
		return sulfixoOpcional;
	}

	public String getTipoCorrente() {
		return tipoCorrente;
	}

	public String getPrefixo() {
		return prefixo;
	}

	public String getPincaDupla() {
		return pincaDupla;
	}

	public String getMarca() {
		return marca;
	}

	public Character getOriginal() {
		return original;
	}

	public Double getPreco() {
		return preco;
	}

	public String getImagem() {
		return imagem;
	}

	public String getImagemEmbalagem() {
		return imagemEmbalagem;
	}

	public String getLocalImagem() {
		return localImagem;
	}

	public String getEan() {
		return ean;
	}

	public Character getCatalogo() {
		return catalogo;
	}

	public String getCodigoCoroa() {
		return codigoCoroa;
	}

	public String getCodigoCorrente() {
		return codigoCorrente;
	}

	public String getCodigoPinhao() {
		return codigoPinhao;
	}

	public String getImagemCoroa() {
		return imagemCoroa;
	}

	public String getImagemCorrente() {
		return imagemCorrente;
	}

	public String getImagemPinhao() {
		return imagemPinhao;
	}

	public EbfCodClassFiscal getEbfCodClassFiscal() {
		return ebfCodClassFiscal;
	}

	public EbfmesDescricaoProduto getEbfmesDescricaoProduto() {
		return ebfmesDescricaoProduto;
	}
}