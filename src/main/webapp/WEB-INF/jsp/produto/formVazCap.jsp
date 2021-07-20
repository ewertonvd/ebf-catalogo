<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> --%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>

<title>Catálogo de produtos - VAZCAP</title>

<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.min.css'/>"  />

</head>

<body>
	<form action="${linkTo[ProdutoController].carregaProdVazCap(null)}" method="get">
<%-- 		<input name="produto.marcaaux" type="hidden" value="${produto.marca}"> --%>
<%-- 		<input name="produtoVazCap.modeloTipoProdutoaux" type="hidden" value="${produto.produtoVazCap.modeloTipoProduto}"> --%>
<%-- 		<input name="produtoVazCap.modeloaux" type="hidden" value="${produto.produtoVazCap.modelo}"> --%>
<%-- 		<input name="produto.originalaux" type="hidden" value="${produto.original}"> --%>
<%-- 		<input name="produto.liberadoaux" type="hidden" value="${produto.liberado}"> --%>
<%-- 		<input name="produto.lancamentolaux" type="hidden" value="${produto.lancamento}"> --%>
<%-- 		<input name="produto.promocaoaux" type="hidden" value="${produto.promocao}"> --%>
<%-- 		<input name="produto.queimaEstoqueaux" type="hidden" value="${produto.queimaEstoque}"> --%>
	
		<input type="hidden" name="hdprodutoVazCap" id="hdprodutoVazCap" value="<%=request.getRemoteUser()%>">
		<input type="hidden" value="1" id="controle_cons" name="controle_cons" /> <br />
		<div id="container-fluid">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
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
<%-- 						<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li> --%>
							<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
							<li><a href="${linkTo[ProdutoController].listaVazCap()}" id="listarProdutos">Listar</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
		<br /> 

		<div class="btn-group" data-toggle="buttons"></div>
		<div class="panel panel-default painelKit" style="width: 66%;">
			<div class="panel-heading">
				<h3 class="panel-title">Informações do Produto - VAZCAP</h3>
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
				<div class="col-md-2">
					<label>Descrição tipo produto:</label>
					<input type="text" name="ebfmesProduto.ebfmesTipoProduto.descricao" id="ebfmesTipoProduto.descricao" class="form-control" value="${ebfmesProduto.ebfmesTipoProduto.descricao}" disabled />
                </div>
				<div class="col-md-1">
					<label>Código rápido:</label> 
					<c:if test="${ebfmesProduto.ebfProduto.codigoRapido == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.codigoRapido" id="ebfProduto.codigoRapido" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.codigoRapido != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.codigoRapido" id="ebfProduto.codigoRapido" class="form-control" value="${ebfmesProduto.ebfProduto.codigoRapido}" disabled />
					</c:if>
				</div>
				<div class="col-md-2">
					<label>Marca:</label>
					<c:if test="${ebfmesProduto.ebfProduto.marca == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.marca" id="ebfProduto.marca" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.marca != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.marca" id="ebfProduto.marca" class="form-control" value="${ebfmesProduto.ebfProduto.marca}" disabled />
					</c:if>
				</div>
				<div class="col-md-3">
					<label>Modelo tipo produto:</label>
					<c:if test="${ebfmesProduto.modeloTipoProduto == null}">
						<input type="text" name="ebfmesProduto.modeloTipoProduto" id="ebfmesProduto.modeloTipoProduto" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.modeloTipoProduto != null}">
						<input type="text" name="ebfmesProduto.modeloTipoProduto" id="ebfmesProduto.modeloTipoProduto" class="form-control" value="${ebfmesProduto.modeloTipoProduto}" disabled />
					</c:if>
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />
			
			
			<!--TERCEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-7">
					<label>Descrição:</label>
					<input type="text" name="ebfmesProduto.descricao" id="descricao" class="form-control" value="${ebfmesProduto.descricao}" disabled /> 
				</div>
				<div class="col-md-3">
					<label>Semelhantes:</label> 
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.semelhante == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.semelhante" id="ebfProduto.ebfmesDescricaoProduto.semelhante" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.semelhante != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.semelhante" id="ebfProduto.ebfmesDescricaoProduto.semelhante" class="form-control" value="${ebfmesProduto.ebfProduto.ebfmesDescricaoProduto.semelhante}" disabled />
 					</c:if>
				</div>				
				<div class="col-md-6"></div>
			</div><br /><br />


			<!--QUARTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1">
					<label>Tamanho:</label>
					<c:if test="${ebfmesProduto.tamanho == null}">
						<input type="text" name="ebfmesProduto.tamanho" id="tamanho" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.tamanho != null}">
						<input type="text" name="ebfmesProduto.tamanho" id="tamanho" class="form-control" value="${ebfmesProduto.tamanho}" disabled />
					</c:if>
				</div>
				<div class="col-md-2">
					<label>Cor:</label> 
					<c:if test="${ebfmesProduto.cor == null}">
						<input type="text" name="ebfmesProduto.cor" id="cor" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.cor != null}">
						<input type="text" name="ebfmesProduto.cor" id="cor" class="form-control" value="${ebfmesProduto.cor}" disabled />
					</c:if>
				</div>
				<div class="col-md-2">
					<label>Decal:</label> 
					<c:if test="${ebfmesProduto.decal == null}">
						<input type="text" name="ebfmesProduto.decal" id="decal" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.decal != null}">
						<input type="text" name="ebfmesProduto.decal" id="decal" class="form-control" value="${ebfmesProduto.decal}" disabled />
					</c:if>
				</div>
				<div class="col-md-2">
					<label>Cor decal:</label> 
					<c:if test="${ebfmesProduto.corDecal == null}">
						<input type="text" name="ebfmesProduto.corDecal" id="corDecal" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.corDecal != null}">
						<input type="text" name="ebfmesProduto.corDecal" id="corDecal" class="form-control" value="${ebfmesProduto.corDecal}" disabled />
					</c:if>
				</div>
				<div class="col-md-2">
					<label>Adesivo:</label> 
					<c:if test="${ebfmesProduto.adesivo == null}">
						<input type="text" name="ebfmesProduto.adesivo" id="adesivo" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.adesivo != null}">
						<input type="text" name="ebfmesProduto.adesivo" id="adesivo" class="form-control" value="${ebfmesProduto.adesivo}" disabled />
					</c:if>
				</div>
				<div class="col-md-1"></div>
			</div><br /><br />
			

			<!--QUINTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<label>Cor adesivo:</label> 
					<c:if test="${ebfmesProduto.corAdesivo == null}">
						<input type="text" name="ebfmesProduto.corAdesivo" id="corAdesivo" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.corAdesivo != null}">
						<input type="text" name="ebfmesProduto.corAdesivo" id="corAdesivo" class="form-control" value="${ebfmesProduto.corAdesivo}" disabled />
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
				<div class="col-md-2">
					<label>Imagem embalagem:</label>
					<c:if test="${ebfmesProduto.ebfProduto.imagemEmbalagem == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.imagemEmbalagem" id="ebfProduto.imagemEmbalagem" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.imagemEmbalagem != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.imagemEmbalagem" id="ebfProduto.imagemEmbalagem" class="form-control" value="${ebfmesProduto.ebfProduto.imagemEmbalagem}" disabled />
					</c:if>
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />

			<!-- SEXTA LINHA -->		 
			<div class="row text-left">	
				<div class="col-md-2">
					<label>Imagem:</label> 
					<c:if test="${ebfmesProduto.ebfProduto.imagem == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.imagem" id="ebfProduto.imagem" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.imagem != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.imagem" id="ebfProduto.imagem" class="form-control" value="${ebfmesProduto.ebfProduto.imagem}" disabled />
					</c:if>
				</div>
				<div class="col-md-1">
					<label>Peso:</label>
					<c:if test="${ebfmesProduto.pesoLiquido == null}">
                    	<input type="text" name="ebfmesProduto.pesoLiquido" id="pesoLiquido" class="form-control" value=" - " disabled />
                    </c:if>
					<c:if test="${ebfmesProduto.pesoLiquido != null}">
                    	<input type="text" name="ebfmesProduto.pesoLiquido" id="pesoLiquido" class="form-control" value="${ebfmesProduto.pesoLiquido}" disabled />
                    </c:if>
				</div>
				<div class="col-md-1">
					<label>EAN:</label>
					<c:if test="${ebfmesProduto.ebfProduto.ean == null}">
	                    <input type="text" name="ebfmesProduto.ebfProduto.ean" id="ebfProduto.ean" class="form-control" value=" - " disabled />
                    </c:if>
					<c:if test="${ebfmesProduto.ebfProduto.ean != null}">
	                    <input type="text" name="ebfmesProduto.ebfProduto.ean" id="ebfProduto.ean" class="form-control" value="${ebfmesProduto.ebfProduto.ean}" disabled />
                    </c:if>
				</div>
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
				<div class="col-md-4">
					<label>Local imagem:</label>
					<c:if test="${ebfmesProduto.ebfProduto.localImagem == null}">
						<input type="text" name="ebfmesProduto.ebfProduto.LocalImagem" id="ebfProduto.localImagem" class="form-control" value=" - " disabled />
					</c:if>
					<c:if test="${ebfmesProduto.ebfProduto.localImagem != null}">
						<input type="text" name="ebfmesProduto.ebfProduto.localImagem" id="ebfProduto.localImagem" class="form-control" value="${ebfmesProduto.ebfProduto.localImagem}" disabled />
					</c:if>
				</div>
				<div class="col-md-8"></div>
			</div><br /><br />		
			
			<!-- SÉTIMA LINHA -->		 
			<div class="row text-left">	
				<div class="col-md-2">
					<label>Imagem do produto:</label>
					<c:if test="${ebfmesProduto.ebfProduto.localImagem != null and ebfmesProduto.ebfProduto.imagem != null}">
						<img src="${linkTo[ProdutoController].imgProduto(ebfmesProduto.codigoProduto)}" width="460" height="250">
					</c:if>
				</div>
				<div class="col-md-8"></div>
			</div><br /><br />		
			
			
<!-- 			<input type="submit" value="Cadastrar/Salvar" class="btn btn-primary"> <br /> <br /> -->

			<div id="dialog" title="Lista clientes" style="overflow-x: hidden;">
				<table id="tabPesquisa"></table>
			</div>
	</form>

	<script type="text/javascript" src="<c:url value="/js/jlib.js"/>"></script>   
	<script type="text/javascript" src="<c:url value="/js/select.js"/>"></script>
 	
</body>
</html>