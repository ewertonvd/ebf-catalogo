package br.com.ebf.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.ebf.dao.FerramentaProdutoDao;
import br.com.ebf.modelo.EbfmesFerramentaProduto;

@Controller
public class FerramentaProdutoController {

	private FerramentaProdutoDao ferramentaProdutoDao;
	private Result result;

	@Inject
	public FerramentaProdutoController(FerramentaProdutoDao ferramentaProdutoDao, Result result) {
		this.ferramentaProdutoDao = ferramentaProdutoDao;
		this.result = result;
	}

	// PARA USO DO CDI
	public FerramentaProdutoController() {
	}

	public void formFerramentaProduto() {
	}
	
	public void listaFerramentaProduto() {
		List<EbfmesFerramentaProduto> ferramentas = ferramentaProdutoDao.listaFerramentas();
		result.include("ferramentas", ferramentas);
	}

	/*****************************************************************************************/
	// MÉTODO SALVA:

	// @IncludeParameters
	// public void salva(@Valid FerramentaProdVaz ferramentaProdVaz, ProdutoVaz
	// produtoVaz) {
	// validator.onErrorRedirectTo(this).formFerramentaProdVaz();
	// ferramentaProdutoDao.salvaFerramentaProdVaz(ferramentaProdVaz);
	// result.redirectTo(this).listaFerramentaProdVaz();
	// }

	/*****************************************************************************************/
	// MÉTODO ATUALIZA:

	// public void atualizaProdVaz(Integer id, Result result) {
	// FerramentaProdVaz ferramentaProdVaz =
	// ferramentaProdutoDao.buscaFerramentaProdVaz(id);
	// result.include(ferramentaProdVaz);
	// listaProdVaz("VAZ", "XTREME");
	// result.of(this).formFerramentaProdVaz();
	// }

	/*****************************************************************************************/
	// MÉTODO LISTA DE PRODUTOS:

	// public void listaProdVaz(String marca1, String marca2) {
	// List<Produto> produtos = ferramentaProdutoDao.listaProdVaz(marca1,
	// marca2);
	// result.include("produtos", produtos);
	// }

	public void carregaFerramenta(String codigoFerramenta, Result result) {
		EbfmesFerramentaProduto ebfmesFerramentaProduto = ferramentaProdutoDao.buscaFerramenta(codigoFerramenta);
		result.include(ebfmesFerramentaProduto);
		result.of(this).formFerramentaProduto();
	}

	/*****************************************************************************************/
	// MÉTODO LISTA:


}