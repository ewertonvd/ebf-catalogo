package br.com.ebf.controller;

import java.io.File;
import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;
import br.com.ebf.dao.ProdutoDao;
import br.com.ebf.modelo.EbfmesProduto;

@Controller
public class ProdutoController {

	private ProdutoDao produtoDao;
	private Result result;

	@Inject
	public ProdutoController(ProdutoDao produtoDao, Result result) {
		this.produtoDao = produtoDao;
		this.result = result;
	}

	// PARA USO DO CDI
	public ProdutoController() {
	}

	public void index() {
	}

	public void formVaz() {
	}

	public void formEco() {
	}

	public void formVazCap() {
	}

	public void formKitVaz() {
	}

	public void listaVaz() {
		List<EbfmesProduto> produtos = produtoDao.listaVaz(3, 4, 7, 31, 49, 64, 68, 109, 226);
		result.include("produtos", produtos);
	}

	public void listaEco() {
		List<EbfmesProduto> produtos = produtoDao.listaEco(87); 
		result.include("produtos", produtos);
	}

	public void listaVazCap() {
		List<EbfmesProduto> produtos = produtoDao.listaVazCap(104, 105, 137, 217);
		result.include("produtos", produtos);
	}

	public void listaKitVaz() {
		List<EbfmesProduto> produtos = produtoDao.listaKitVaz(127, 225);
		result.include("produtos", produtos);
	}

	/*****************************************************************************************/
	// MÉTODO SALVA:

	// @IncludeParameters
	// public void salvaVaz(@Valid Produto produto, ProdutoVaz produtoVaz,
	// TipoProduto tipoProduto) {
	// validator.onErrorRedirectTo(this).formVaz();
	// tipoProduto =
	// produtoDao.buscaTPPorDescricao(produto.getDescricaoTipoProduto());
	// produto.setTipoProduto(tipoProduto.getTipoProduto());
	// produtoVaz.setCodigoProduto(produto.getCodigoProduto());
	// produto.setProdutoVaz(produtoVaz);
	// produtoVaz.setProduto(produto);
	// produtoDao.salva(produto);
	// result.redirectTo(this).listaVaz();
	// }

	// @IncludeParameters
	// public void salvaVazKit(@Valid Produto produto, ProdutoVazKit
	// produtoVazKit, TipoProduto tipoProduto) {
	// validator.onErrorRedirectTo(this).formVazKit();
	// tipoProduto =
	// produtoDao.buscaTPPorDescricao(produto.getDescricaoTipoProduto());
	// produto.setTipoProduto(tipoProduto.getTipoProduto());
	// produtoVazKit.setCodigoProduto(produto.getCodigoProduto());
	// produto.setProdutoVazKit(produtoVazKit);
	// produtoVazKit.setProduto(produto);
	// produtoDao.salva(produto);
	// result.redirectTo(this).listaVazKit();
	// }

	// @IncludeParameters
	// public void salvaEco(@Valid Produto produto, ProdutoEco produtoEco,
	// TipoProduto tipoProduto) {
	// validator.onErrorRedirectTo(this).formEco();
	// tipoProduto =
	// produtoDao.buscaTPPorDescricao(produto.getDescricaoTipoProduto());
	// produto.setTipoProduto(tipoProduto.getTipoProduto());
	// produtoEco.setCodigoProduto(produto.getCodigoProduto());
	// produto.setProdutoEco(produtoEco);
	// produtoEco.setProduto(produto);
	// produtoDao.salva(produto);
	// result.redirectTo(this).listaEco();
	// }

	// @IncludeParameters
	// public void salvaVazCap(@Valid Produto produto, ProdutoVazCap
	// produtoVazCap, TipoProduto tipoProduto) {
	// validator.onErrorRedirectTo(this).formVazCap();
	// tipoProduto =
	// produtoDao.buscaTPPorDescricao(produto.getDescricaoTipoProduto());
	// produto.setTipoProduto(tipoProduto.getTipoProduto());
	// produtoVazCap.setCodigoProduto(produto.getCodigoProduto());
	// produto.setProdutoVazCap(produtoVazCap);
	// produtoVazCap.setProduto(produto);
	// produtoDao.salva(produto);
	// result.redirectTo(this).listaVazCap();
	// }

	/*****************************************************************************************/
	// MÉTODO CARREGA:

	public void carregaProdVaz(String codigoProduto, Result result) {
		EbfmesProduto ebfmesProduto = produtoDao.buscaProduto(codigoProduto);
		result.include(ebfmesProduto);
		imgProduto(codigoProduto);
		result.of(this).formVaz();
	}

	public void carregaProdEco(String codigoProduto, Result result) {
		EbfmesProduto ebfmesProduto = produtoDao.buscaProduto(codigoProduto);
		result.include(ebfmesProduto);
		imgProduto(codigoProduto);
		result.of(this).formEco();
	}

	public void carregaProdVazCap(String codigoProduto, Result result) {
		EbfmesProduto ebfmesProduto = produtoDao.buscaProduto(codigoProduto);
		result.include(ebfmesProduto);
		imgProduto(codigoProduto);
		result.of(this).formVazCap();
	}

	public void carregaKitVaz(String codigoProduto, Result result) {
		EbfmesProduto ebfmesProduto = produtoDao.buscaProduto(codigoProduto);
		result.include(ebfmesProduto);
		imgCoroa(codigoProduto);
		imgCorrente(codigoProduto);
		imgPinhao(codigoProduto);
		result.of(this).formKitVaz();
	}

	/*****************************************************************************************/
	// MÉTODO PARA CARREGAR IMAGEM DO PRODUTO NO FORM:

	@Get("produto/{codigoProduto}/imgProduto")
	public File imgProduto(String codigoProduto) {
		EbfmesProduto ebfmesProduto = produtoDao.buscaProduto(codigoProduto);

		// CAMINHO PARA CARREGAR A IMAGEM DURANTE O DESENVOLVIMENTO:
		String caminho = ebfmesProduto.getEbfProduto().getLocalImagem() + "\\" + ebfmesProduto.getEbfProduto().getImagem();
		
		System.out.println("EVD: " + caminho);

		// CAMINHO PARA CARREGAR A IMAGEM NO SERVIDOR LINUX:
		// String caminho = produto.getLocalImagem().toString().replace("F:",
		// "/mnt/fileserverebf/EBF") + "/" + produto.getImagem();
		// caminho = caminho.replace("\\", "/");

		
		if (!caminho.contains("jpg")) {
			return null;
		} else {
			File arquivo = new File(caminho);
			return arquivo;
		}
	}

	@Get("produto/{codigoProduto}/imgCoroa")
	public File imgCoroa(String codigoProduto) {
		EbfmesProduto ebfmesProduto = produtoDao.buscaProduto(codigoProduto);

		// CAMINHO PARA CARREGAR A IMAGEM DURANTE O DESENVOLVIMENTO:
//		String caminho = ebfmesProduto.getLocalImagem() + "\\" + ebfmesProduto.getImagemCoroa();
		String caminho = ebfmesProduto.getEbfProduto().getLocalImagem() + "\\" + ebfmesProduto.getEbfProduto().getImagem();

		// CAMINHO PARA CARREGAR A IMAGEM NO SERVIDOR LINUX:
		// String caminho = produto.getLocalImagem().toString().replace("F:",
		// "/mnt/fileserverebf/EBF") + "/" + produto.getImagem();
		// caminho = caminho.replace("\\", "/");

		if (!caminho.contains("jpg")) {
			return null;
		} else {
			File arquivo = new File(caminho);
			return arquivo;
		}
	}

	@Get("produto/{codigoProduto}/imgCorrente")
	public File imgCorrente(String codigoProduto) {
		EbfmesProduto ebfmesProduto = produtoDao.buscaProduto(codigoProduto);

		// CAMINHO PARA CARREGAR A IMAGEM DURANTE O DESENVOLVIMENTO:
//		String caminho = ebfmesProduto.getLocalImagem() + "\\" + ebfmesProduto.getImagemCorrente();
		String caminho = ebfmesProduto.getEbfProduto().getLocalImagem() + "\\" + ebfmesProduto.getEbfProduto().getImagem();

		// CAMINHO PARA CARREGAR A IMAGEM NO SERVIDOR LINUX:
		// String caminho = produto.getLocalImagem().toString().replace("F:",
		// "/mnt/fileserverebf/EBF") + "/" + produto.getImagem();
		// caminho = caminho.replace("\\", "/");

		if (!caminho.contains("jpg")) {
			return null;
		} else {
			File arquivo = new File(caminho);
			return arquivo;
		}
	}

	@Get("produto/{codigoProduto}/imgPinhao")
	public File imgPinhao(String codigoProduto) {
		EbfmesProduto ebfmesProduto = produtoDao.buscaProduto(codigoProduto);

		// CAMINHO PARA CARREGAR A IMAGEM DURANTE O DESENVOLVIMENTO:
//		String caminho = ebfmesProduto.getLocalImagem() + "\\" + ebfmesProduto.getImagemPinhao();
		String caminho = ebfmesProduto.getEbfProduto().getLocalImagem() + "\\" + ebfmesProduto.getEbfProduto().getImagem();
		
		// CAMINHO PARA CARREGAR A IMAGEM NO SERVIDOR LINUX:
		// String caminho = produto.getLocalImagem().toString().replace("F:",
		// "/mnt/fileserverebf/EBF") + "/" + produto.getImagem();
		// caminho = caminho.replace("\\", "/");

		if (!caminho.contains("jpg")) {
			return null;
		} else {
			File arquivo = new File(caminho);
			return arquivo;
		}
	}
}