<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf" %>

<!DOCTYPE html>
<html>

<head>

<title>Catálogo de produtos - EBF VAZ</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.min.css'/>"  />

</head>

<body>
	<form action="${linkTo[ProdutoController].carregaProdVaz(null)}" method="get">

		<input type="hidden" name="hdprodutoVaz" id="hdprodutoVaz" value="<%=request.getRemoteUser()%>">
		<input type="hidden" value="1" id="controle_cons" name="controle_cons" /> <br />
		<div id="container-fluid" style="width: 66%;">
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
							<li><a href="${linkTo[ProdutoController].listaVaz()}" id="listarProdutos">Listar</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<br /> 

		<div class="btn-group" data-toggle="buttons"></div>
		<div class="panel panel-default painelKit" style="width: 66%;">
			<div class="panel-heading">
				<h3 class="panel-title">Informações do Produto - VAZ</h3>
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
			</div><br />

		
			<!--SEGUNDA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2"><br />
     				<label>Descrição tipo produto:</label>
					<input type="text" name="ebfmesProduto.ebfmesTipoProduto.descricao" id="ebfmesTipoProduto.descricao" class="form-control" value="${ebfmesProduto.ebfmesTipoProduto.descricao}" disabled />
				</div>
				<div class="col-md-1"><br />
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
					<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.marca" id="ebfProduto.ebfmesDescricaoProduto.marca" class="form-control" value="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.marca}" disabled />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />

			
			<!--TERCEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-6">
					<label>Modelo:</label>
					<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.descricao" id="ebfProduto.ebfmesDescricaoProduto.descricao" class="form-control" value="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.descricao}" disabled />
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
				<div class="col-md-6"></div>
			</div><br /><br />

			<!--QUARTA LINHA... -->
			<div class="row text-left">
 				<div class="col-md-1">
					<label>Cilindrada:</label>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.cilindrada == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.cilindrada" id="ebfProduto.ebfmesDescricaoProduto.cilindrada" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.cilindrada != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.cilindrada" id="ebfProduto.ebfmesDescricaoProduto.cilindrada" class="form-control" value="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.cilindrada}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
					<label>Corrente:</label>
					<c:if test="${ebfmesProduto.ebfProduto.tipoCorrente == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.tipoCorrente" id="ebfProduto.tipoCorrente" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.tipoCorrente != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.tipoCorrente" id="ebfProduto.tipoCorrente" class="form-control" value="${ebfmesProduto.ebfProduto.tipoCorrente}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
					<label>Prefixo:</label> 
					<c:if test="${ebfmesProduto.ebfProduto.prefixo == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.prefixo" id="ebfProduto.prefixo" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.prefixo != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.prefixo" id="ebfProduto.prefixo" class="form-control" value="${ebfmesProduto.ebfProduto.prefixo}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
					<label>Nro. Dentes/Elos:</label>
					<c:if test="${ebfmesProduto.nroDentesElos == null}"> 
						<input type="text" name="ebfmesProduto.nroDentesElos" id="nroDentesElos" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.nroDentesElos != null}"> 
						<input type="text" name="ebfmesProduto.nroDentesElos" id="nroDentesElos" class="form-control" value="${ebfmesProduto.nroDentesElos}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
					<label>Dianteira/ Traseira:</label>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.dianteiraTraseira == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.dianteiraTraseira" id="ebfProduto.ebfmesDescricaoProduto.dianteiraTraseira" class="form-control" value=" - " disabled />
					</c:if> 
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.dianteiraTraseira != null}">
						<input type="text" name="ebfProduto.ebfmesDescricaoProduto.dianteiraTraseira" id="ebfProduto.ebfmesDescricaoProduto.dianteiraTraseira" class="form-control" value="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.dianteiraTraseira}" disabled />
					</c:if> 
				</div>
				<div class="col-md-1">
					<label>Pinça dupla:</label>
					<c:if test="${ebfmesProduto.ebfProduto.pincaDupla == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.pincaDupla" id="ebfProduto.pincaDupla" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.pincaDupla != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.pincaDupla" id="ebfProduto.pincaDupla" class="form-control" value="${ebfmesProduto.ebfProduto.pincaDupla}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
					<label>Marca:</label>
					<c:if test="${ebfmesProduto.ebfProduto.marca == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.marca" id="ebfProduto.marca" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.marca != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.marca" id="ebfProduto.marca" class="form-control" value="${ebfmesProduto.ebfProduto.marca}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
					<label>Original:</label>
					<c:if test="${ebfmesProduto.ebfProduto.original == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.original" id="ebfProduto.original" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.original != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.original" id="ebfProduto.original" class="form-control" value="${ebfmesProduto.ebfProduto.original}" disabled />
					</c:if>
				</div>
				<div class="col-md-1"></div>
			</div><br /><br />

			<!--QUINTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1">
					<label>Liberado:</label>
					<c:if test="${ebfmesProduto.liberado == null}">
						<input type="text" name="ebfmesProduto.liberado" id="liberado" class="form-control" value=" - " disabled />
					</c:if> 
					<c:if test="${ebfmesProduto.liberado != null}">
						<input type="text" name="ebfmesProduto.liberado" id="liberado" class="form-control" value="${ebfmesProduto.liberado}" disabled />
					</c:if> 
				</div>
				<div class="col-md-1">
					<label>Lançamento:</label>
					<c:if test="${ebfmesProduto.lancamento == null}">
						<input type="text" name="ebfmesProduto.lancamento" id="lancamento" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.lancamento != null}">
						<input type="text" name="ebfmesProduto.lancamento" id="lancamento" class="form-control" value="${ebfmesProduto.lancamento}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
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
				<div class="col-md-1">
					<label>Preço:</label> 
					<c:if test="${ebfmesProduto.ebfProduto.preco == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.preco" id="ebfProduto.preco" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.preco != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.preco" id="ebfProduto.preco" class="form-control" value="${ebfmesProduto.ebfProduto.preco}" disabled />
					</c:if>
				</div>
				<div class="col-md-3">
					<label>Semelhante:</label> 
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.semelhante == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.semelhante" id="ebfProduto.ebfmesDescricaoProduto.semelhante" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.semelhante != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.semelhante" id="ebfProduto.ebfmesDescricaoProduto.semelhante" class="form-control" value="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.semelhante}" disabled />
					</c:if>
				</div>
				<div class="col-md-1"></div>
			</div><br /><br />

			<!-- SEXTA LINHA -->		 
			<div class="row text-left">
				<div class="col-md-1"><br />
					<label>Imagem:</label>
					<c:if test="${ebfmesProduto.ebfProduto.imagem == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.imagem" id="ebfProduto.imagem" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.imagem != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.imagem" id="ebfProduto.imagem" class="form-control" value="${ebfmesProduto.ebfProduto.imagem}" disabled />
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
				<div class="col-md-1"></div>
			</div><br /><br />


			<!-- SÉTIMA LINHA -->	
		    <div class="row text-left">
				<div class="col-md-1">
					<label>NCM:</label>
					<c:if test="${ebfmesProduto.ebfProduto.ebfCodClassFiscal.classFiscal == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfCodClassFiscal.classFiscal" id="ebfProduto.ebfCodClassFiscal.classFiscal" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.ebfCodClassFiscal.classFiscal != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfCodClassFiscal.classFiscal" id="ebfProduto.ebfCodClassFiscal.classFiscal" class="form-control" value="${ebfmesProduto.ebfProduto.ebfCodClassFiscal.classFiscal}" disabled />
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
				<div class="col-md-2">
					<label>Imagem do produto:</label>
					<c:if test="${ebfmesProduto.ebfProduto.localImagem != null and ebfmesProduto.ebfProduto.imagem != null}">
						<img src="${linkTo[ProdutoController].imgProduto(ebfmesProduto.codigoProduto)}" width="460" height="250">
					</c:if>
				</div>
				<div class="col-md-1"></div>
			</div><br /><br /><br />

		<div id="dialog" title="Lista clientes" style="overflow-x: hidden;">
			<table id="tabPesquisa"></table>
		</div>
	</form>

</body>
</html>