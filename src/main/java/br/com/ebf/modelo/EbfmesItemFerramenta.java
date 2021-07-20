package br.com.ebf.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "Ebfmes.Item_Ferramenta")
public class EbfmesItemFerramenta {

	@Id
	@Column(name = "codigo_ferramenta", length = 24)
	private String codigoFerramenta;

	@Column(length = 60)
	private String descricao;

	public String getCodigoFerramenta() {
		return codigoFerramenta;
	}

	public String getDescricao() {
		return descricao;
	}
}