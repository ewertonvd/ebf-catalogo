<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf" %>

<!DOCTYPE html>
<html>

<head>

<title>Catálogo de produtos - VAZ KIT´S</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.min.css'/>"  />

</head>

<body>
	<form action="${linkTo[ProdutoController].carregaProdVaz(null)}" method="get">
<%-- 		<input name="produtoVazKit.sulfixoOpcionalaux" type="hidden" value="${produto.produtoVazKit.sulfixoOpcional}"> --%>
<%-- 		<input name="produtoVazKit.tipoCorrenteaux" type="hidden" value="${produto.produtoVazKit.tipoCorrente}"> --%>
<%-- 		<input name="produto.marcaaux" type="hidden" value="${produto.marca}"> --%>
<%-- 		<input name="produto.originalaux" type="hidden" value="${produto.original}"> --%>
<%-- 		<input name="produto.liberadoaux" type="hidden" value="${produto.liberado}"> --%>
<%-- 		<input name="produto.lancamentoaux" type="hidden" value="${produto.lancamento}"> --%>
<%-- 		<input name="produto.promocaoaux" type="hidden" value="${produto.promocao}"> --%>
<%-- 		<input name="produto.queimaEstoqueaux" type="hidden" value="${produto.queimaEstoque}"> --%>
<%-- 		<input name="produto.catalogoaux" type="hidden" value="${produto.catalogo}"> --%>

		<input type="hidden" name="hdprodutoVazKit" id="hdprodutoVazKit" value="<%=request.getRemoteUser()%>">
		<input type="hidden" value="1" id="controle_cons" name="controle_cons" /> <br />
		<div id="container-fluid">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
							<li><a href="${linkTo[ProdutoController].listaKitVaz()}" id="listarProdutos">Listar</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<br /> 

		<div class="btn-group" data-toggle="buttons"></div>
		<div class="panel panel-default painelKit" style="width: 66%;">
			<div class="panel-heading">
				<h3 class="panel-title">Informações dos KIT´S VAZ</h3>
			</div>
			<div id="collapse1" class="panel-body panel-collapse collapse"></div>
		</div><br />
		
			<!--PRIMEIRA LINHA... -->
			<div class="row text-left">
				
				<div class="col-md-2">
					<label>Código:</label> 
					<input type="text" name="ebfmesProduto.codigoProduto" id="codigoProduto" class="form-control" value="${ebfmesProduto.codigoProduto}" disabled />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />

		
			<!--SEGUNDA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2"><br />
     				<label>Descrição tipo produto:</label>
					<input type="text" name="ebfmesProduto.ebfmesTipoProduto.descricao" id="ebfmesTipoProduto.descricao" class="form-control" value="${ebfmesProduto.ebfmesTipoProduto.descricao}" disabled />
				</div>
				
				<div class="col-md-1">
					<label>Sulfixo Opcional:</label>
					<c:if test="${ebfmesProduto.ebfProduto.sulfixoOpcional == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.sulfixoOpcional" id="ebfProduto.sulfixoOpcional" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.sulfixoOpcional != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.sulfixoOpcional" id="ebfProduto.sulfixoOpcional" class="form-control" value="${ebfmesProduto.ebfProduto.sulfixoOpcional}" disabled />
					</c:if>
				</div>
				<div class="col-md-2"><br />
					<label>Montadora:</label>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.marca == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.marca" id="ebfProduto.ebfmesDescricaoProduto.marca" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.marca != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.marca" id="ebfProduto.ebfmesDescricaoProduto.marca" class="form-control" value="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.marca}" disabled />
					</c:if>
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />
		
				
			<!--TERCEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-5">
					<label>Modelo:</label>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.descricao == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.descricao" id="ebfProduto.ebfmesDescricaoProduto.descricao" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.descricao != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.descricao" id="ebfProduto.ebfmesDescricaoProduto.descricao" class="form-control" value="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.descricao}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
					<label>De ano:</label> 
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.deAno == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.deAno" id="ebfProduto.ebfmesDescricaoProduto.deAno" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.deAno != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.deAno" id="ebfProduto.ebfmesDescricaoProduto.deAno" class="form-control" value="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.deAno}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
					<label>Até ano:</label>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.ateAno == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.ateAno" id="ebfProduto.ebfmesDescricaoProduto.ateAno" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.ateAno != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.ateAno" id="ebfProduto.ebfmesDescricaoProduto.ateAno" class="form-control" value="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.ateAno}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
					<label>Cilindrada:</label>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.cilindrada == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.cilindrada" id="ebfProduto.ebfmesDescricaoProduto.cilindrada" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.cilindrada != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.cilindrada" id="ebfProduto.ebfmesDescricaoProduto.cilindrada" class="form-control" value="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.cilindrada}" disabled />
					</c:if>
				</div>
				<div class="col-md-5"></div>
			</div><br /><br />

			<!--QUARTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1"><br />
					<label>Corrente:</label> 
					<c:if test="${ebfmesProduto.ebfProduto.tipoCorrente == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.tipoCorrente" id="ebfProduto.tipoCorrente" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.tipoCorrente != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.tipoCorrente" id="ebfProduto.tipoCorrente" class="form-control" value="${ebfmesProduto.ebfProduto.tipoCorrente}" disabled />
					</c:if>
				</div>
				<div class="col-md-1"><br />
					<label>Marca:</label>
					<c:if test="${ebfmesProduto.ebfProduto.marca == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.marca" id="ebfProduto.marca" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.marca != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.marca" id="ebfProduto.marca" class="form-control" value="${ebfmesProduto.ebfProduto.marca}" disabled />
					</c:if>
				</div>
				<div class="col-md-1"><br />
					<label>Original:</label>
					<c:if test="${ebfmesProduto.ebfProduto.original == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.original" id="ebfProduto.original" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.original != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.original" id="ebfProduto.original" class="form-control" value="${ebfmesProduto.ebfProduto.original}" disabled />
					</c:if>
				</div>
				<div class="col-md-1"><br />
					<label>Liberado:</label> 
					<c:if test="${ebfmesProduto.liberado == null}">
						<input type="text" name="ebfmesProduto.liberado" id="liberado" class="form-control" value=" - " disabled />
					</c:if> 
					<c:if test="${ebfmesProduto.liberado != null}">
						<input type="text" name="ebfmesProduto.liberado" id="liberado" class="form-control" value="${ebfmesProduto.liberado}" disabled />
					</c:if> 
				</div>
				<div class="col-md-1"><br />
					<label>Lançamento:</label>
					<c:if test="${ebfmesProduto.lancamento == null}">
						<input type="text" name="ebfmesProduto.lancamento" id="lancamento" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.lancamento != null}">
						<input type="text" name="ebfmesProduto.lancamento" id="lancamento" class="form-control" value="${ebfmesProduto.lancamento}" disabled />
					</c:if>
				</div>
				<div class="col-md-1"><br />
					<label>Promoção:</label> 
					<c:if test="${ebfmesProduto.promocao == null}">
						<input type="text" name="ebfmesProduto.promocao" id="promocao" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.promocao != null}">
						<input type="text" name="ebfmesProduto.promocao" id="promocao" class="form-control" value="${ebfmesProduto.promocao}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
					<label>Queima estoque:</label>
					<c:if test="${ebfmesProduto.queimaEstoque == null}">
						<input type="text" name="ebfmesProduto.queimaEstoque" id="queimaEstoque" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.queimaEstoque != null}">
						<input type="text" name="ebfmesProduto.queimaEstoque" id="queimaEstoque" class="form-control" value="${ebfmesProduto.queimaEstoque}" disabled />
					</c:if>
				</div>
				<div class="col-md-1"><br />
					<label>Preço:</label> 
					<c:if test="${ebfmesProduto.ebfProduto.preco == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.preco" id="ebfProduto.preco" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.preco != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.preco" id="ebfProduto.preco" class="form-control" value="${ebfmesProduto.ebfProduto.preco}" disabled />
					</c:if>
				</div>		
				<div class="col-md-1"></div>		
			</div><br /><br />

			<!--QUINTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1"><br />
					<label>Peso:</label>
					<c:if test="${ebfmesProduto.pesoLiquido == null}">
                    	<input type="text" name="ebfmesProduto.pesoLiquido" id="pesoLiquido" class="form-control" value=" - " disabled />
                    </c:if>
					<c:if test="${ebfmesProduto.pesoLiquido != null}">
                    	<input type="text" name="ebfmesProduto.pesoLiquido" id="pesoLiquido" class="form-control" value="${ebfmesProduto.pesoLiquido}" disabled />
                    </c:if>
				</div>
				<div class="col-md-1"><br />
					<label>EAN:</label>
					<c:if test="${ebfmesProduto.ebfProduto.ean == null}">
	                    <input type="text" name="ebfmesProduto.ebfProduto.ean" id="ebfProduto.ean" class="form-control" value=" - " disabled />
                    </c:if>
					<c:if test="${ebfmesProduto.ebfProduto.ean != null}">
	                    <input type="text" name="ebfmesProduto.ebfProduto.ean" id="ebfProduto.ean" class="form-control" value="${ebfmesProduto.ebfProduto.ean}" disabled />
                    </c:if>
				</div>
				<div class="col-md-1"><br />
					<label>NCM:</label>
					<c:if test="${ebfmesProduto.ebfProduto.ebfCodClassFiscal.classFiscal == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfCodClassFiscal.classFiscal" id="ebfProduto.ebfCodClassFiscal.classFiscal" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.ebfCodClassFiscal.classFiscal != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfCodClassFiscal.classFiscal" id="ebfProduto.ebfCodClassFiscal.classFiscal" class="form-control" value="${ebfmesProduto.ebfProduto.ebfCodClassFiscal.classFiscal}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
					<label>Imagem embalagem:</label>
					<c:if test="${ebfmesProduto.ebfProduto.imagemEmbalagem == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.imagemEmbalagem" id="ebfProduto.imagemEmbalagem" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.imagemEmbalagem != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.imagemEmbalagem" id="ebfProduto.imagemEmbalagem" class="form-control" value="${ebfmesProduto.ebfProduto.imagemEmbalagem}" disabled />
					</c:if>
				</div>
				<div class="col-md-4"><br />
					<label>Local imagem:</label>
					<c:if test="${ebfmesProduto.ebfProduto.localImagem == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.LocalImagem" id="ebfProduto.localImagem" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.localImagem != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.localImagem" id="ebfProduto.localImagem" class="form-control" value="${ebfmesProduto.ebfProduto.localImagem}" disabled />
					</c:if>
				</div>
				<div class="col-md-1"></div>
			</div><br /><br />


			<!-- SEXTA LINHA -->		 
			<div class="row text-left">
				<div class="col-md-2">
					<label>Código COROA:</label>
					<c:if test="${ebfmesProduto.ebfProduto.codigoCoroa == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.codigoCoroa" id="ebfProduto.codigoCoroa" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.codigoCoroa != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.codigoCoroa" id="ebfProduto.codigoCoroa" class="form-control" value="${ebfmesProduto.ebfProduto.codigoCoroa}" disabled />
					</c:if>
				</div>
				<div class="col-md-2">
					<label>Código CORRENTE:</label>
					<c:if test="${ebfmesProduto.ebfProduto.codigoCorrente == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.codigoCorrente" id="ebfProduto.codigoCorrente" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.codigoCorrente != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.codigoCorrente" id="ebfProduto.codigoCorrente" class="form-control" value="${ebfmesProduto.ebfProduto.codigoCorrente}" disabled />
					</c:if>
				</div>
				<div class="col-md-2">
					<label>Código PINHÃO:</label>
					<c:if test="${ebfmesProduto.ebfProduto.codigoPinhao == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.codigoPinhao" id="ebfProduto.codigoPinhao" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.codigoPinhao != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.codigoPinhao" id="ebfProduto.codigoPinhao" class="form-control" value="${ebfmesProduto.ebfProduto.codigoPinhao}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
					<label>Catálogo:</label>
					<c:if test="${ebfmesProduto.ebfProduto.catalogo == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.catalogo" id="ebfProduto.catalogo" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.catalogo != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.catalogo" id="ebfProduto.catalogo" class="form-control" value="${ebfmesProduto.ebfProduto.catalogo}" disabled />
					</c:if>
					
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />

			<!-- SÉTIMA LINHA -->	
			<div class="row text-left">
				<div class="col-md-3">
					<label>Imagem COROA:</label>
					<c:if test="${ebfmesProduto.ebfProduto.localImagem != null and ebfmesProduto.ebfProduto.imagemCoroa != null}">
						<img src="${linkTo[ProdutoController].imgCoroa(ebfmesProduto.codigoProduto)}" width="400" height="250">
					</c:if>
				</div>

				<div class="col-md-3">
					<label>Imagem CORRENTE:</label>
					<c:if test="${ebfmesProduto.ebfProduto.localImagem != null and ebfmesProduto.ebfProduto.imagemCorrente != null}">
						<img src="${linkTo[ProdutoController].imgCorrente(ebfmesProduto.codigoProduto)}" width="350" height="250">
					</c:if>
				</div>

				<div class="col-md-3">
					<label>Imagem PINHÃO:</label>
					<c:if test="${ebfmesProduto.ebfProduto.localImagem != null and ebfmesProduto.ebfProduto.imagemPinhao != null}">
						<img src="${linkTo[ProdutoController].imgPinhao(ebfmesProduto.codigoProduto)}" width="370" height="250">
					</c:if>
				</div>
				<div class="col-md-3"></div>
			</div><br /><br />

<!-- 		***************************************************************************************************************************************************	 -->

		<div id="dialog" title="Lista clientes" style="overflow-x: hidden;">
			<table id="tabPesquisa"></table>
		</div>
	</form>

	<script type="text/javascript" src="<c:url value="/js/jlib.js"/>"></script>   
	<script type="text/javascript" src="<c:url value="/js/select.js"/>"></script>
	
</body>
</html>