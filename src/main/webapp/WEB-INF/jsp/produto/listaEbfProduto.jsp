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
 		$('#tab_Ebf_Produto').DataTable();
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

		<h2>Lista EBF_PRODUTO</h2>
		<table id="tab_Ebf_Produto">
			<thead>
				<tr>
					<th>Código prod.</th> 
					<th>Tipo corrente</th>
					<th>Marca</th>
					<th>Original</th>
					<th>Lancamento</th>
					<th>Promoção</th>
					<th>Queima estoque</th>
					<th>Preço</th>
					<th>Imagem</th>
					<th>Imagem Embalagem</th>
					<th>Local Imagem</th>
					<th>EAN</th>
					<th>NCM</th>
					<th>Catálogo</th>
					
					
<!-- 				<th style="width: 60px;">Selecionar</th> -->
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${produtos}" var="produto">
					<tr>
						<td><c:if test="${not empty produto.codigoProduto}"> 
							${produto.codigoProduto}
						</c:if></td>
						
						<td><c:if test="${not empty produto.tipoCorrente}"> 
							${produto.tipoCorrente}
						</c:if></td>

						<td><c:if test="${not empty produto.marca}"> 
							${produto.marca}
						</c:if></td>
						
						<td><c:if test="${not empty produto.original}"> 
							${produto.original}
						</c:if></td>

						<td><c:if test="${not empty produto.lancamento}"> 
							${produto.lancamento}
						</c:if></td>
				
						<td><c:if test="${not empty produto.promocao}"> 
							${produto.promocao}
						</c:if></td>
				
						<td><c:if test="${not empty produto.queimaEstoque}"> 
							${produto.queimaEstoque}
						</c:if></td>
				
						<td><c:if test="${not empty produto.preco}"> 
							${produto.preco}
						</c:if></td>

						<td><c:if test="${not empty produto.imagem}"> 
							${produto.imagem}
						</c:if></td>
						
						<td><c:if test="${not empty produto.imagemEmbalagem}"> 
							${produto.imagemEmbalagem}
						</c:if></td>
						
						<td><c:if test="${not empty produto.localImagem}"> 
							${produto.localImagem}
						</c:if></td>

						<td><c:if test="${not empty produto.ean}"> 
							${produto.ean}
						</c:if></td>

						<td><c:if test="${not empty produto.ncm}"> 
							${produto.ncm}
						</c:if></td>

						<td><c:if test="${not empty produto.catalogo}"> 
							${produto.catalogo}
						</c:if></td>

<!-- 						<td style="text-align: center"> -->
<%-- 						<a href="${linkTo[ProdutoController].atualizaVaz()}?id=${produto.id}" class="addSelecionaLista" title="Selecionar"> --%>
<!-- 						<i class="glyphicon glyphicon-log-in"></i></a> -->
<!-- 						</td> -->
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>

<c:import url="/WEB-INF/jsp/footer.jsp" />