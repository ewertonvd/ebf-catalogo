<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE httml>

<head>

<title>Lista Produtos - ECO</title>

<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css" class="init"></style>

<script type="text/javascript" src="<c:url value="/js/jquery-1.12.4.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.dataTables.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/dataTables.bootstrap.min.js"/>"></script>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.css'/>"  />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/dataTables.bootstrap.min.css'/>"  />
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script type="text/javascript" class="init"> 
 	$(document).ready(function() {
 		$('#tabProdutosEco').DataTable();
 	} );
</script>

</head>

<body>
	<input type="hidden" name="hdcargo" id="hdcargo"
		value="<%=request.getRemoteUser()%>">
	<input type="hidden" value="1" id="controle_cons" name="controle_cons" />
	<br />
	<div id="container-fluid">
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<form class="navbar-form navbar-left vertical-center">
						<div class="btn-group" data-toggle="buttons"></div>
					</form>

					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
						</div>
					</form>
					<ul class="nav navbar-nav navbar-right">
<%--					<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li> --%>
						<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
						<li><a href="${linkTo[ProdutoController].formEco()}" id="novoProduto">Novo</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<br /> <br /> <br />

		<h2>Lista de Produtos - Eco</h2>
		<table id="tabProdutosEco" class="table table-striped table-bordered table-condensed dataTable" role="grid" style="width: 99%;">
			<thead>
				<tr>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="codigoProduto: activate to sort column descending" aria-sort="ascending" style="width: 25px;">Código</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="montadora: activate to sort column descending" aria-sort="ascending" style="width: 180px;">Montadora</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="modelo: activate to sort column descending" aria-sort="ascending" style="width: 320px;">Modelo</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="deAno: activate to sort column descending" aria-sort="ascending" style="width: 45px;">De ano</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="ateAno: activate to sort column descending" aria-sort="ascending" style="width: 45px;">Até ano</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="linhaVeiculo: activate to sort column descending" aria-sort="ascending" style="width: 50px;">Linha Veículo</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="sistemaFreio: activate to sort column descending" aria-sort="ascending" style="width: 110px;">Sistema freio</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="dianteiraTraseira: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Dianteira Traseira</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="original: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Original</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="preco: activate to sort column descending" aria-sort="ascending" style="width: 75px;">Preço</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="semelhantes: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Semelhantes</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="comprimento: activate to sort column descending" aria-sort="ascending" style="width: 25px;">Comprimento Min/Máx</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="largura: activate to sort column descending" aria-sort="ascending" style="width: 25px;">Largura Min/Máx</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosEco" rowspan="1" colspan="1" aria-label="espessura: activate to sort column descending" aria-sort="ascending" style="width: 25px;">Espessura Min/Máx</th>
					
					<th style="width: 20px;">Selecionar</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${produtos}" var="produto">
					<tr>
						<td><c:if test="${not empty produto.codigoProduto}"> 
							${produto.codigoProduto}
						</c:if></td>
						
<%-- 						<td><c:if test="${not empty produto.ebfmesDescricaoProduto.marca}">  --%>
<%-- 							${produto.ebfmesDescricaoProduto.marca} --%>
<%-- 						</c:if></td>			 --%>
						
<%-- 						<td><c:if test="${not empty produto.ebfmesDescricaoProduto.descricao}">  --%>
<%-- 							${produto.ebfmesDescricaoProduto.descricao} --%>
<%-- 						</c:if></td> --%>
												
<%-- 						<td><c:if test="${not empty produto.ebfmesDescricaoProduto.deAno}">  --%>
<%-- 							${produto.ebfmesDescricaoProduto.deAno} --%>
<%-- 						</c:if></td>						 --%>

<%-- 						<td><c:if test="${not empty produto.ebfmesDescricaoProduto.ateAno}">  --%>
<%-- 							${produto.ebfmesDescricaoProduto.ateAno} --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty produto.ebfmesDescricaoProduto.linhaVeiculo}"> --%>
<%-- 							${produto.ebfmesDescricaoProduto.linhaVeiculo} --%>
<%-- 						</c:if></td> --%>
						
<%-- 						<td><c:if test="${not empty produto.ebfmesDescricaoProduto.sistemaFreio}"> --%>
<%-- 							${produto.ebfmesDescricaoProduto.sistemaFreio} --%>
<%-- 						</c:if></td> --%>
			
<%-- 						<td><c:if test="${not empty produto.ebfmesDescricaoProduto.dianteiraTraseira}"> --%>
<%-- 							${produto.ebfmesDescricaoProduto.dianteiraTraseira} --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty produto.original}"> --%>
<%-- 							${produto.original} --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty produto.preco}">  --%>
<%-- 							<fmt:formatNumber value="${produto.preco}" type="currency" /> --%>
<%-- 						</c:if></td> --%>
						
<%-- 						<td><c:if test="${not empty produto.ebfmesDescricaoProduto.semelhante}"> --%>
<%-- 							${produto.ebfmesDescricaoProduto.semelhante} --%>
<%-- 						</c:if></td> --%>

<!-- 					COMPRIMENTO -->
<%-- 						<td><c:if test="${not empty produto.ebfmesProduto.comprimentoMin && not empty produto.ebfmesProduto.comprimentoMax}"> --%>
<%-- 							${produto.ebfmesProduto.comprimentoMin} / ${produto.ebfmesProduto.comprimentoMax} --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty produto.ebfmesDescricaoProduto.comprimentoMin && not empty produto.ebfmesDescricaoProduto.comprimentoMax}"> --%>
<%-- 							${produto.ebfmesDescricaoProduto.comprimentoMin} / ${produto.ebfmesDescricaoProduto.comprimentoMax} --%>
<%-- 						</c:if></td> --%>

						
<!-- 					LARGURA -->
<%-- 						<td><c:if test="${not empty produto.ebfmesProduto.larguraMin && not empty produto.ebfmesProduto.larguraMax}"> --%>
<%-- 							${produto.ebfmesProduto.larguraMin} / ${produto.ebfmesProduto.larguraMax} --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty produto.ebfmesDescricaoProduto.larguraMin && not empty produto.ebfmesDescricaoProduto.larguraMax}"> --%>
<%-- 							${produto.ebfmesDescricaoProduto.larguraMin} / ${produto.ebfmesDescricaoProduto.larguraMax} --%>
<%-- 						</c:if></td> --%>

						
<!--                    ESPESSURA -->
<%-- 						<td><c:if test="${not empty produto.ebfmesProduto.espessuraMin && not empty produto.ebfmesProduto.espessuraMax}"> --%>
<%-- 							${produto.ebfmesProduto.espessuraMin} / ${produto.ebfmesProduto.espessuraMax} --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty produto.ebfmesDescricaoProduto.espessuraMin && not empty produto.ebfmesDescricaoProduto.espessuraMax}"> --%>
<%-- 							${produto.ebfmesDescricaoProduto.espessuraMin} / ${produto.ebfmesDescricaoProduto.espessuraMax} --%>
<%-- 						</c:if></td> --%>


						<td style="text-align: center">
						<a href="${linkTo[ProdutoController].carregaProdEco()}?codigoProduto=${produto.codigoProduto}" class="addSelecionaLista" title="Selecionar">
						<i class="glyphicon glyphicon-log-in"></i></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>

<c:import url="/WEB-INF/jsp/footer.jsp" />