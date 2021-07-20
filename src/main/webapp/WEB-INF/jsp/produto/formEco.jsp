<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf" %>

<!DOCTYPE html>
<html>

<head>

<title>Catálogo de produtos - ECO</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.min.css'/>"  />

</head>

<body>
	<form action="${linkTo[ProdutoController].carregaProdEco(null)}" method="get">
	
		<input type="hidden" name="hdprodutoEco" id="hdprodutoEco" value="<%=request.getRemoteUser()%>">
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
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
<%-- 						<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li> --%>
							<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
							<li><a href="${linkTo[ProdutoController].listaEco()}" id="listarProdutos">Listar</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<br /> 

		<div class="btn-group" data-toggle="buttons"></div>
		<div class="panel panel-default painelKit" style="width: 66%;">
			<div class="panel-heading">
				<h3 class="panel-title">Informações do Produto - ECO</h3>
			</div>
			<div id="collapse1" class="panel-body panel-collapse collapse"></div>
		</div><br />
			
			<!--PRIMEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<label>Código:</label> 
					<input type="text" name="ebfProduto.codigoProduto" id="codigoProduto" class="form-control" value="${ebfProduto.codigoProduto}" disabled />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />
		
		
			<!--SEGUNDA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<label>Descrição tipo produto:</label>
					<input type="text" name="ebfProduto.ebfmesProduto.ebfmesTipoProduto.descricao" id="ebfmesProduto.ebfmesTipoProduto.descricao" class="form-control" value="${ebfProduto.ebfmesProduto.ebfmesTipoProduto.descricao}" disabled />			
				</div>					
				<div class="col-md-2">
					<label>Montadora:</label>
					<input type="text" name="ebfProduto.ebfmesDescricaoProduto.marca" id="ebfmesDescricaoProduto.marca" class="form-control" value="${ebfProduto.ebfmesDescricaoProduto.marca}" disabled />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />
			
			
			<!--TERCEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-6">
					<label>Modelo:</label>
					<input type="text" name="ebfProduto.ebfmesDescricaoProduto.descricao" id="ebfmesDescricaoProduto.descricao" class="form-control" value="${ebfProduto.ebfmesDescricaoProduto.descricao}" disabled />
				</div>
				<div class="col-md-1">
					<label>De ano:</label> 
					<input type="text" name="ebfProduto.ebfmesDescricaoProduto.deAno" id="ebfmesDescricaoProduto.deAno" class="form-control" value="${ebfProduto.ebfmesDescricaoProduto.deAno}" disabled/>
				</div>
				<div class="col-md-1">
					<label>Até ano:</label>
					<input type="text" name="ebfProduto.ebfmesDescricaoProduto.ateAno" id="ebfmesDescricaoProduto.ateAno" class="form-control" value="${ebfProduto.ebfmesDescricaoProduto.ateAno}" disabled />
				</div>
				<div class="col-md-6"></div>
			</div><br /><br />


			<!--QUARTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<label>Linha veículo:</label>
					<input type="text" name="ebfProduto.ebfmesDescricaoProduto.linhaVeiculo" id="ebfmesDescricaoProduto.linhaVeiculo" class="form-control" value="${ebfProduto.ebfmesDescricaoProduto.linhaVeiculo}" disabled />
				</div>
				<div class="col-md-2">
					<label>Sistema freio:</label>
					<input type="text" name="ebfProduto.ebfmesDescricaoProduto.sistemaFreio" id="ebfmesDescricaoProduto.sistemaFreio" class="form-control" value="${ebfProduto.ebfmesDescricaoProduto.sistemaFreio}" disabled />
				</div>
				<div class="col-md-1">
					<label>Dianteira/ Traseira:</label>
					<input type="text" name="ebfProduto.ebfmesDescricaoProduto.dianteiraTraseira" id="ebfmesDescricaoProduto.dianteiraTraseira" class="form-control" value="${ebfProduto.ebfmesDescricaoProduto.dianteiraTraseira}" disabled /> 
				</div>
				<div class="col-md-2">
					<label>Marca:</label>
					<input type="text" name="ebfProduto.marca" id="marca" class="form-control" value="${ebfProduto.marca}" disabled />
				</div>
				<div class="col-md-1">
					<label>Original:</label>
					<input type="text" name="ebfProduto.original" id="original" class="form-control" value="${ebfProduto.original}" disabled />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />
			

			<!--QUINTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1"><br />
					<label>Liberado:</label> 
					<input type="text" name="ebfProduto.ebfmesProduto.liberado" id="ebfmesProduto.liberado" class="form-control" value="${ebfProduto.ebfmesProduto.liberado}" disabled />
				</div>
				<div class="col-md-1"><br />
					<label>Lançamento:</label>
					<input type="text" name="ebfProduto.ebfmesProduto.lancamento" id="ebfmesProduto.lancamento" class="form-control" value="${ebfProduto.ebfmesProduto.lancamento}" disabled />
				</div>
				<div class="col-md-1"><br />
					<label>Promoção:</label>
					<input type="text" name="ebfProduto.ebfmesProduto.promocao" id="ebfmesProduto.promocao" class="form-control" value="${ebfProduto.ebfmesProduto.promocao}" disabled /> 
				</div>
				<div class="col-md-1"><br />
					<label>Queima estoque:</label>
					<input type="text" name="ebfProduto.ebfmesProduto.queimaEstoque" id="ebfmesProduto.queimaEstoque" class="form-control" value="${ebfProduto.ebfmesProduto.queimaEstoque}" disabled />
				</div>
				<div class="col-md-1"><br />
					<label>Preço:</label>
					<input type="text" name="ebfProduto.preco" id="preco" class="form-control" value="<fmt:formatNumber value="${ebfProduto.preco}" pattern="#,##0.00" />" disabled />
				</div>
				<div class="col-md-1"><br />
					<label>Semelhantes:</label> 
					<input type="text" name="ebfProduto.ebfmesDescricaoProduto.semelhante" id="ebfmesDescricaoProduto.semelhante" class="form-control" value="${ebfProduto.ebfmesDescricaoProduto.semelhante}" disabled />
				</div>
				<div class="col-md-1">
					<label>Imagem embalagem:</label> 
					<input type="text" name="ebfProduto.imagemEmbalagem" id="imagemEmbalagem" class="form-control" value="${ebfProduto.imagemEmbalagem}" disabled />
				</div>
				<div class="col-md-1"><br />
					<label>Imagem:</label> 
					<input type="text" name="ebfProduto.imagem" id="imagem" class="form-control" value="${ebfProduto.imagem}" disabled />
				</div>
				<div class="col-md-1"></div>
			</div><br /><br />
			
			
			<!-- SEXTA LINHA... -->
			<div class="row text-left">	
				<div class="col-md-4">
					<label>Local imagem:</label>
					<input type="text" name="ebfProduto.localImagem" id="localImagem" class="form-control" value="${ebfProduto.localImagem}" disabled />
				</div>
				<div class="col-md-1">
					<label>Comprimento:</label>
					<input type="text" name="ebfProduto.ebfmesDescricaoProduto.comprimentoMinMax" id="ebfmesDescricaoProduto.comprimentoMinMax" class="form-control" value="${ebfProduto.ebfmesDescricaoProduto.comprimentoMin} / ${ebfProduto.ebfmesDescricaoProduto.comprimentoMax}" disabled />
				</div>
				<div class="col-md-1">
					<label>Largura:</label> 
					<input type="text" name="ebfProduto.ebfmesDescricaoProduto.larguraMinMax" id="ebfmesDescricaoProduto.larguraMinMax" class="form-control" value="${ebfProduto.ebfmesDescricaoProduto.larguraMin} / ${ebfProduto.ebfmesDescricaoProduto.larguraMax}" disabled />
				</div>
				<div class="col-md-1">
					<label>Espessura:</label>
					<input type="text" name="ebfProduto.ebfmesDescricaoProduto.espessuraMinMax" id="ebfmesDescricaoProduto.espessuraMinMax" class="form-control" value="${ebfProduto.ebfmesDescricaoProduto.espessuraMin} / ${ebfProduto.ebfmesDescricaoProduto.espessuraMax}" disabled />
				</div>
				<div class="col-md-1">
					<label>Peso:</label> 
					<input type="text" name="ebfProduto.ebfmesProduto.peso" id="ebfmesProduto.peso" class="form-control" value="<fmt:formatNumber value="${ebfProduto.ebfmesProduto.peso}" pattern="#,##0.000" />"  disabled />
				</div>
				<div class="col-md-4"></div>
			</div><br /><br />
			
			
			<!-- SÉTIMA LINHA... -->
 			<div class="row text-left">
				<div class="col-md-1">
					<label>EAN:</label> 
					<input type="text" name="ebfProduto.ean" id="ean" class="form-control" value="${ebfProduto.ean}" disabled />
				</div>
				<div class="col-md-1">
					<label>NCM:</label> 
					<input type="text" name="ebfProduto.ebfCodClassFiscal.classFiscal" id="ebfCodClassFiscal.classFiscal" class="form-control" value="${ebfProduto.ebfCodClassFiscal.classFiscal}" disabled />
				</div>
				<div class="col-md-1">
					<label>Catálogo:</label>
					<input type="text" name="ebfProduto.catalogo" id="ebfProduto.catalogo" class="form-control" value="${ebfProduto.catalogo}" disabled />
				</div>
				<div class="col-md-2">
					<label>Imagem do produto:</label>
					<c:if test="${ebfProduto.localImagem != null and ebfProduto.imagem != null}">
						<img src="${linkTo[ProdutoController].imgProduto(ebfProduto.codigoProduto)}" width="350" height="250">
					</c:if>
				</div>
				<div class="col-md-1"></div>
			</div><br /><br />

		<div id="dialog" title="Lista clientes" style="overflow-x: hidden;">
			<table id="tabPesquisa"></table>
		</div>
	</form>
	
	<script type="text/javascript" src="<c:url value="/js/jlib.js"/>"></script>   
	<script type="text/javascript" src="<c:url value="/js/select.js"/>"></script>
 	
</body>
</html>