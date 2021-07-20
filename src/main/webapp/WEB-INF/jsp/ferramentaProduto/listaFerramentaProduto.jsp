<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE httml>

<head>

<title>Lista Ferramenta Produto</title>

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
 		$('#tabFerramentaProduto').DataTable();
 	} );
</script>

</head>

<body>
	<input type="hidden" name="hdferramentaProdVaz" id="hdferramentaProdVaz" value="<%=request.getRemoteUser()%>">
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
						<li><a href="${linkTo[FerramentaProdutoController].formFerramentaProduto()}" id="novaferramentaProd">Nova</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<br /> <br /> <br />

		<h2>Lista de Ferramentas</h2>
		<table id="tabFerramentaProduto" class="table table-striped table-bordered table-condensed dataTable" role="grid" style="width: 95%;">
			<thead>
				<tr>
                    <th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="codigoProduto: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Cód.Produto</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="codigoFerramenta: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Cód.Ferram.</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="descricao: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Descrição Ferram.</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="qtdFuros: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Qtd. furos</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="diamFuros: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Diam. furos</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="diamEntreFuros: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Diam. entre furos</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="rebaixoFuros: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Rebaixo furos</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="qtdAlivios: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Qtd. alívios</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="diamEntreAlivios: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Diam. entre alívios</th>					
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="larguraEstria: activate to sort column descending" aria-sort="ascending" style="width: 10x;">Largura estria</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="diamExternoEstria: activate to sort column descending" aria-sort="ascending" style="width: 10x;">Diam. externo estria</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="diamInternoEstria: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Diam. interno estria</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="qtdDentesEstria: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Qtd. dentes estria</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="tipoCorrente: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Corrente</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="diamCentral: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Diam. central</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="diamRolete: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Diam. rolete</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="espessura: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Espessura</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="indiceCavidades: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Índice cavidades</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="nroDentes: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Dentes</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="dobra: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Dobra</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="injetado: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Injetado</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="prensa: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Prensa</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="rebaixo: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Rebaixo</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="rebaixoFuros: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Rebaixo Furos</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabFerramentaProduto" rowspan="1" colspan="1" aria-label="capa: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Capa</th>
					
					<th style="width: 15px;">Selecionar</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ferramentas}" var="ferramenta">
					<tr>
						<td><c:if test="${not empty ferramenta.codigoProduto}">
							${ferramenta.codigoProduto}
						</c:if></td>

						<td><c:if test="${not empty ferramenta.codigoFerramenta}">
							${ferramenta.codigoFerramenta}
						</c:if></td>

						<td>
							<c:if test="${ferramenta.ebfmesItemFerramenta.descricao == null}">
								-
							</c:if>
							<c:if test="${not empty ferramenta.ebfmesItemFerramenta.descricao}">
								${ferramenta.ebfmesItemFerramenta.descricao}
 							</c:if>
 						</td>

<%-- 						<td><c:if test="${not empty ferramentaProd.diamFuros}"> --%>
<%-- 							<fmt:formatNumber value="${ferramentaProd.diamFuros}" pattern="#,##0.00" /> --%>
<%-- 						</c:if></td> --%>
						
<%-- 						<td><c:if test="${not empty ferramentaProd.diamEntreFuros}"> --%>
<%-- 							<fmt:formatNumber value="${ferramentaProd.diamEntreFuros}" pattern="#,##0.00" /> --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty ferramentaProd.rebaixoFuros}"> --%>
<%-- 							${ferramentaProd.rebaixoFuros} --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty ferramentaProd.qtdAlivios}"> --%>
<%-- 							${ferramentaProd.qtdAlivios} --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty ferramentaProd.diamEntreAlivios}"> --%>
<%-- 							<fmt:formatNumber value="${ferramentaProd.diamEntreAlivios}" pattern="#,##0.00" /> --%>
<%-- 						</c:if></td> --%>
						
<%-- 						<td><c:if test="${not empty ferramentaProd.larguraEstria}"> --%>
<%-- 							<fmt:formatNumber value="${ferramentaProd.larguraEstria}" pattern="#,##0.00" /> --%>
<%-- 						</c:if></td>					 --%>
						
<%-- 						<td><c:if test="${not empty ferramentaProd.qtdDentesEstria}"> --%>
<%-- 							${ferramentaProd.qtdDentesEstria} --%>
<%-- 						</c:if></td> --%>
						
<%-- 						<td><c:if test="${not empty ferramentaProd.diamExternoEstria}"> --%>
<%-- 							<fmt:formatNumber value="${ferramentaProd.diamExternoEstria}" pattern="#,##0.00" /> --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty ferramentaProd.diamInternoEstria}"> --%>
<%-- 							<fmt:formatNumber value="${ferramentaProd.diamInternoEstria}" pattern="#,##0.00" />o --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty ferramentaProd.capa}"> --%>
<%-- 							${ferramentaProd.capa} --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty ferramentaProd.tipoCorrente}"> --%>
<%-- 							${ferramentaProd.tipoCorrente} --%>
<%-- 						</c:if></td> --%>
						
<%-- 						<td><c:if test="${not empty ferramentaProd.diamCentral}"> --%>
<%-- 							<fmt:formatNumber value="${ferramentaProd.diamCentral}" pattern="#,##0.00" /> --%>
<%-- 						</c:if></td>					 --%>
						
<%-- 						<td><c:if test="${not empty ferramentaProd.diamRolete}"> --%>
<%-- 							<fmt:formatNumber value="${ferramentaProd.diamRolete}" pattern="#,##0.00" /> --%>
<%-- 						</c:if></td> --%>
						
<%-- 						<td><c:if test="${not empty ferramentaProd.dobra}"> --%>
<%-- 							${ferramentaProd.dobra} --%>
<%-- 						</c:if></td> --%>
						
<%-- 						<td><c:if test="${not empty ferramentaProd.espessura}"> --%>
<%-- 							<fmt:formatNumber value="${ferramentaProd.espessura}" pattern="#,##0.00" /> --%>
<%-- 						</c:if></td>						 --%>
						
<%-- 						<td><c:if test="${not empty ferramentaProd.indiceCavidades}"> --%>
<%-- 							${ferramentaProd.indiceCavidades} --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty ferramentaProd.injetado}"> --%>
<%-- 							${ferramentaProd.injetado} --%>
<%-- 						</c:if></td> --%>
						
<%-- 						<td><c:if test="${not empty ferramentaProd.nroDentes}"> --%>
<%-- 							${ferramentaProd.nroDentes} --%>
<%-- 						</c:if></td>		 --%>

<%-- 						<td><c:if test="${not empty ferramentaProd.prensa}"> --%>
<%-- 							${ferramentaProd.prensa} --%>
<%-- 						</c:if></td> --%>

<%-- 						<td><c:if test="${not empty ferramentaProd.rebaixo}"> --%>
<%-- 							${ferramentaProd.rebaixo} --%>
<%-- 						</c:if></td> --%>

						<td style="text-align: center">
						<a href="${linkTo[FerramentaProdutoController].carregaFerramenta()}?codigoFerramenta=${ferramenta.codigoFerramenta}" class="addSelecionaLista" title="Selecionar">
						<i class="glyphicon glyphicon-log-in"></i></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>

<c:import url="/WEB-INF/jsp/footer.jsp" />