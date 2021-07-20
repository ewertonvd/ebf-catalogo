<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE httml>

<head>

<title>Lista Produtos - VAZCAP</title>

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
 		$('#tabProdutosVazCap').DataTable();
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
						<li><a href="${linkTo[ProdutoController].formVazCap()}" id="novoProduto">Novo</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<br /> <br /> <br />

		<h2>Lista de Produtos - VAZCAP</h2>
		<table id="tabProdutosVazCap" class="table table-striped table-bordered table-condensed dataTable" role="g rid" style="width: 99%;">
			<thead>
				<tr>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVazCap" rowspan="1" colspan="1" aria-label="codigo: activate to sort column descending" aria-sort="ascending" style="width: 20px;">Código</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVazCap" rowspan="1" colspan="1" aria-label="descricao: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Descrição</th>
 					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVazCap" rowspan="1" colspan="1" aria-label="descricaoTipoProduto: activate to sort column descending" aria-sort="ascending" style="width: 140px;">Modelo tipo prod.</th> 
 					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVazCap" rowspan="1" colspan="1" aria-label="semelhante: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Semelhante</th> 
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVazCap" rowspan="1" colspan="1" aria-label="tamanho: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Tamanho</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVazCap" rowspan="1" colspan="1" aria-label="peso: activate to sort column descending" aria-sort="ascending" style="width: 150px;">Peso</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVazCap" rowspan="1" colspan="1" aria-label="cor: activate to sort column descending" aria-sort="ascending" style="width: 150px;">Cor</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabProdutosVazCap" rowspan="1" colspan="1" aria-label="preco: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Preço</th>

					<th style="width: 15px;">Selecionar</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${produtos}" var="produto">
					<tr>
						<td><c:if test="${not empty produto.codigoProduto}"> 
							${produto.codigoProduto}
						</c:if></td>
						
						<td><c:if test="${not empty produto.descricao}"> 
							${produto.descricao}
						</c:if></td>

						<td><c:if test="${not empty produto.modeloTipoProduto}"> 
							${produto.modeloTipoProduto}
						</c:if></td>
						
						<td><c:if test="${not empty produto.ebfProduto.ebfmesDescricaoProduto.semelhante}"> 
							${produto.ebfProduto.ebfmesDescricaoProduto.semelhante}
						</c:if></td>						
						
						<td><c:if test="${not empty produto.tamanho}"> 
							${produto.tamanho}
						</c:if></td>
												
						<td><c:if test="${not empty produto.pesoLiquido}"> 
							${produto.pesoLiquido}
						</c:if></td>
						
						<td><c:if test="${not empty produto.cor}"> 
							${produto.cor}
						</c:if></td>
						
						<td><c:if test="${not empty produto.ebfProduto.preco}">
							<fmt:formatNumber value="${produto.ebfProduto.preco}" type="currency" />
						</c:if></td>
						
						

<%-- 						<td><c:if test="${not empty produto.ebfmesDescricaoProduto.descricao}">  --%>
<%-- 							${produto.ebfmesDescricaoProduto.descricao} --%>
<%-- 						</c:if></td>						 --%>
<%-- 				   		<td><c:if test="${not empty produto.codigoProduto}">  --%>
<%-- 							${produto.codigoProduto} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty produto.ebfmesDescricaoProduto.semelhante}"> --%>
<%-- 							${produto.ebfmesDescricaoProduto.semelhante} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty produto.ebfmesProduto.tamanho}">  --%>
<%-- 							${produto.ebfmesProduto.tamanho} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty produto.ebfmesProduto.peso}"> --%>
<%-- 							${produto.ebfmesProduto.peso} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty produto.codigoProduto}">  --%>
<%-- 							${produto.codigoProduto} --%>
<%-- 						</c:if></td> --%>


						<td style="text-align: center">
						<a href="${linkTo[ProdutoController].carregaProdVazCap()}?codigoProduto=${produto.codigoProduto}" class="addSelecionaLista" title="Selecionar">
						<i class="glyphicon glyphicon-log-in"></i></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>

<c:import url="/WEB-INF/jsp/footer.jsp" />