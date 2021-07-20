package br.com.ebf.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "EBF_COD_CLASS_FISCAL")
public class EbfCodClassFiscal {

	@Id
	@Column(name = "codigo_class", length = 5)
	private String codigoClass;

	@Column(name = "class_fiscal", length = 10)
	private String classFiscal;

	public String getCodigoClass() {
		return codigoClass;
	}

	public String getClassFiscal() {
		return classFiscal;
	}
}