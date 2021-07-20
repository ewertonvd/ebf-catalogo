<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE httml>

<head>

<title>Lista Produtos - VAZ</title>

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
 		$('#tabProdutosVaz').DataTable();
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
<%-- 					<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li> --%>
						<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
						<li><a href="${linkTo[ProdutoController].formVaz()}" id="novoProduto">Novo</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<br /> <br /> <br />

		<h2>Lista de Produtos - VAZ</h2>
		<table id="tabProdutosVaz" class="table table-striped table-bordered table-condensed dataTable" role="grid" style="width: 98%;">
			<thead>
				<tr>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVaz" rowspan="1" colspan="1" aria-label="codigoProduto: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Código</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVaz" rowspan="1" colspan="1" aria-label="descricao: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Descricao T.Prod.</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVaz" rowspan="1" colspan="1" aria-label="marca: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Montadora</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVaz" rowspan="1" colspan="1" aria-label="descricao: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Modelo</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVaz" rowspan="1" colspan="1" aria-label="ano_ini: activate to sort column descending" aria-sort="ascending" style="width: 15px;">De ano</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVaz" rowspan="1" colspan="1" aria-label="ano_fim: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Até ano</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVaz" rowspan="1" colspan="1" aria-label="cilindrada: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Cilindrada</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVaz" rowspan="1" colspan="1" aria-label="preco: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Preço</th>

					<th style="width: 60px;">Selecionar</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${produtos}" var="produto">
					<tr>
						<td><c:if test="${not empty produto.codigoProduto}"> 
							${produto.codigoProduto}
						</c:if></td>
						
						<td><c:if test="${not empty produto.ebfmesTipoProduto.descricao}"> 
							${produto.ebfmesTipoProduto.descricao}
						</c:if></td>

						<td><c:if test="${not empty produto.ebfProduto.ebfmesDescricaoProduto.marca}"> 
							${produto.ebfProduto.ebfmesDescricaoProduto.marca}
						</c:if></td>
						
						<td><c:if test="${not empty produto.ebfProduto.ebfmesDescricaoProduto.descricao}"> 
							${produto.ebfProduto.ebfmesDescricaoProduto.descricao}
						</c:if></td>						 

						<td><c:if test="${not empty produto.ebfProduto.ebfmesDescricaoProduto.deAno}"> 
							${produto.ebfProduto.ebfmesDescricaoProduto.deAno}
						</c:if></td>	
						
						<td><c:if test="${not empty produto.ebfProduto.ebfmesDescricaoProduto.ateAno}"> 
							${produto.ebfProduto.ebfmesDescricaoProduto.ateAno}
						</c:if></td>	
						
						<td><c:if test="${not empty produto.ebfProduto.ebfmesDescricaoProduto.cilindrada}"> 
							${produto.ebfProduto.ebfmesDescricaoProduto.cilindrada}
						</c:if></td>	

						<td><c:if test="${not empty produto.ebfProduto.preco}"> 
							<fmt:formatNumber value="${produto.ebfProduto.preco}" type="currency" />
						</c:if></td>
						
						<td style="text-align: center">
							<a href="${linkTo[ProdutoController].carregaProdVaz()}?codigoProduto=${produto.codigoProduto}" class="addSelecionaLista" title="Selecionar">
							<i class="glyphicon glyphicon-log-in"></i></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>

<c:import url="/WEB-INF/jsp/footer.jsp" />