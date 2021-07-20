<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf" %>

<!DOCTYPE html>
<html>

<head>

<title>Ferramenta Produto</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.min.css'/>"  />

</head>

<body>
	<form action="${linkTo[FerramentaProdutoController].carregaFerramenta(null)}" method="get">
<%-- 		<input name="ferramentaProdVaz.rebaixoFurosaux" type="hidden" value="${ferramentaProdVaz.rebaixoFuros}"> --%>
<%-- 		<input name="ferramentaProdVaz.capaaux" type="hidden" value="${ferramentaProdVaz.capa}"> --%>
<%-- 		<input name="ferramentaProdVaz.tipoCorrenteaux" type="hidden" value="${ferramentaProdVaz.tipoCorrente}">		 --%>
<%-- 		<input name="ferramentaProdVaz.dobraaux" type="hidden" value="${ferramentaProdVaz.dobra}"> --%>
<%-- 		<input name="ferramentaProdVaz.injetadoaux" type="hidden" value="${ferramentaProdVaz.injetado}"> --%>
<%-- 		<input name="ferramentaProdVaz.rebaixoaux" type="hidden" value="${ferramentaProdVaz.rebaixo}"> --%>
	
		<input type="hidden" name="hdferramentaproduto" id="hdferramentaproduto" value="<%=request.getRemoteUser()%>">
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
							<li><a href="${linkTo[FerramentaProdutoController].listaFerramentaProduto()}" id="listarFerramentaProduto">Listar</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
		<br /> 

		<div class="btn-group" data-toggle="buttons"></div>

		<div class="panel panel-default painelCabecalho">
			<div class="panel-heading">
				<h3 class="panel-title">Informações - Ferramenta Produto</h3>
			</div>
			<div id="collapse1" class="panel-body panel-collapse collapse"></div>
		</div>
			
			<!--PRIMEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1"><br /><br />
					<label>Código PRODUTO:</label>
					<input type="text" name="ebfmesFerramentaProduto.codigoProduto" id="codigoProduto" class="form-control" value="${ebfmesFerramentaProduto.codigoProduto}" disabled />
				</div>
				<div class="col-md-1"><br />
					<label>Código FERRAMENTA:</label> 
					<input type="text" name="ebfmesFerramentaProduto.codigoFerramenta" id="codigoFerramenta" class="form-control" value="${ebfmesFerramentaProduto.codigoFerramenta}" disabled />
				</div>
				<div class="col-md-4"><br /><br />
					<label>Descrição:</label>
					<input type="text" name="ebfmesFerramentaProduto.ebfmesItemFerramenta.descricao" id="ebfmesItemFerramenta.descricao" class="form-control" value="${ebfmesFerramentaProduto.ebfmesItemFerramenta.descricao}" disabled />
				</div>
				<div class="col-md-1"></div>
			</div><br /><br />

		
			<!--SEGUNDA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1">
					<label>Qtd. furos:</label> 
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.qtdFuros" id="ebfmesFerramentas.qtdFuros" class="form-control" value="${ebfmesFerramentaProduto.ebfmesFerramentas.qtdFuros}" disabled />
				</div>
				<div class="col-md-1">
					<label>Diam. furos:</label> 
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.diamFuros" id="ebfmesFerramentas.diamFuros" class="form-control" value="<fmt:formatNumber value="${ebfmesFerramentaProduto.ebfmesFerramentas.diamFuros}" pattern="#,##0.00" />" disabled />
				</div>
				<div class="col-md-1">
					<label>Diam. entre furos:</label> 
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.diamEntreFuros" id="ebfmesFerramentas.diamEntreFuros" class="form-control" value="<fmt:formatNumber value="${ebfmesFerramentaProduto.ebfmesFerramentas.diamFuros}" pattern="#,##0.00" />" disabled />
				</div>
				<div class="col-md-1">
					<label>Rebaixo furos:</label>
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.rebaixoFuros" id="ebfmesFerramentas.rebaixoFuros" class="form-control" value="${ebfmesFerramentaProduto.ebfmesFerramentas.rebaixoFuros}" disabled />
				</div>
				<div class="col-md-1">
					<label>Qtd. alívios:</label> 
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.qtdAlivios" id="ebfmesFerramentas.qtdAlivios" class="form-control" value="${ebfmesFerramentaProduto.ebfmesFerramentas.qtdAlivios}" disabled />
				</div>
				<div class="col-md-1">
					<label>Diam. entre alívios:</label> 
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.diamEntreAlivios" id="ebfmesFerramentas.diamEntreAlivios" class="form-control" value="<fmt:formatNumber value="${ebfmesFerramentaProduto.ebfmesFerramentas.diamEntreAlivios}" pattern="#,##0.00" />" disabled />
				</div>
				<div class="col-md-1"></div>
			</div><br /><br />


			<!--TERCEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1"><br />
					<label>Largura estria:</label> 
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.larguraEstria" id="ebfmesFerramentas.larguraEstria" class="form-control" value="<fmt:formatNumber value="${ebfmesFerramentaProduto.ebfmesFerramentas.larguraEstria}" pattern="#,##0.00" />" disabled />
				</div>
				<div class="col-md-1"><br />
					<label>Qtd. dentes estria:</label> 
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.qtdDentesEstria" id="ebfmesFerramentas.qtdDentesEstria" class="form-control" value="${ebfmesFerramentaProduto.ebfmesFerramentas.qtdDentesEstria}" disabled />
				</div>
				<div class="col-md-1">
					<label>Diam. externo estria:</label> 
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.diamExternoEstria" id="ebfmesFerramentas.diamExternoEstria" class="form-control" value="<fmt:formatNumber value="${ebfmesFerramentaProduto.ebfmesFerramentas.diamExternoEstria}" pattern="#,##0.00" />" disabled />
				</div>

				<div class="col-md-1">
					<label>Diam. interno estria:</label> 
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.diamInternoEstria" id="ebfmesFerramentas.diamInternoEstria" class="form-control" value="<fmt:formatNumber value="${ebfmesFerramentaProduto.ebfmesFerramentas.diamInternoEstria}" pattern="#,##0.00" />" disabled />
				</div>
				<div class="col-md-1"><br />
					<label>Capa:</label>
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.capa" id="ebfmesFerramentas.capa" class="form-control" value="${ebfmesFerramentaProduto.ebfmesFerramentas.capa}" disabled />
				</div>
				<div class="col-md-1"><br />
					<label>Corrente:</label> 
					<input type="text" name="ebfmesFerramentaProduto.ebfProduto.tipoCorrente" id="ebfProduto.tipoCorrente" class="form-control" value="${ebfmesFerramentaProduto.ebfProduto.tipoCorrente}" disabled />
				</div>				
				<div class="col-md-1"></div>
			</div><br /><br />

				
			<!-- TERCEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1">
					<label>Diam.Central:</label> 
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.diamCentral" id="ebfmesFerramentas.diamCentral" class="form-control" value="<fmt:formatNumber value="${ebfmesFerramentaProduto.ebfmesFerramentas.diamCentral}" pattern="#,##0.00" />" disabled />
				</div>			
				
				<div class="col-md-1">
					<label>Diam. rolete:</label> 
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.diamRolete" id="ebfmesFerramentas.diamRolete" class="form-control" value="<fmt:formatNumber value="${ebfmesFerramentaProduto.ebfmesFerramentas.diamRolete}" pattern="#,##0.00" />" disabled />
				</div>	

				<div class="col-md-1">
					<label>Dobra:</label>
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.dobra" id="ebfmesFerramentas.dobra" class="form-control" value="${ebfmesFerramentaProduto.ebfmesFerramentas.dobra}" disabled />
				</div>
				<div class="col-md-1">
					<label>Espessura:</label> 
					<input type="text" name="ebfProduto.ebfmesDescricaoProduto.espessuraMinMax" id="ebfmesDescricaoProduto.espessuraMinMax" class="form-control" value="${ebfProduto.ebfmesDescricaoProduto.espessuraMin} / ${ebfProduto.ebfmesDescricaoProduto.espessuraMax}" disabled />
				</div>
				<div class="col-md-1">
					<label>Indíce cavidades:</label> 
					<input type="text" name="ebfmesFerramentaProduto.indiceCavidades" id="indiceCavidades" class="form-control" value="${ebfmesFerramentaProduto.indiceCavidades}" disabled />
				</div>

				<div class="col-md-1">
					<label>Injetado:</label>
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.injetado" id="ebfmesFerramentas.injetado" class="form-control" value="${ebfmesFerramentaProduto.ebfmesFerramentas.injetado}" disabled />
				</div>
			<div class="col-md-1"></div>
			</div><br /><br />	


			<!-- QUARTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1">
					<label>Dentes:</label> 
					<input type="text" name="ebfmesFerramentaProduto.ebfmesProduto.nroDentesElos" id="ebfmesProduto.nroDentesElos" class="form-control" value="${ebfmesFerramentaProduto.ebfmesProduto.nroDentesElos}" disabled />
				</div>

				<div class="col-md-1">
					<label>Prensa:</label> 
					<input type="text" name="ebfmesFerramentaProduto.prensa" id="prensa" class="form-control" value="${ebfmesFerramentaProduto.prensa}" disabled />
				</div>
				<div class="col-md-1">
					<label>Rebaixo.:</label>
					<input type="text" name="ebfmesFerramentaProduto.ebfmesFerramentas.rebaixo" id="ebfmesFerramentas.rebaixo" class="form-control" value="${ebfmesFerramentaProduto.ebfmesFerramentas.rebaixo}" disabled />
				</div>			
				<div class="col-md-1"></div>
			</div><br /><br />
			
<!-- 		***************************************************************************************************************************************************	 -->

<!-- 		<input type="submit" value="Cadastrar/Salvar" class="btn btn-primary"> <br /> <br /> -->

		<div id="dialog" title="Lista clientes" style="overflow-x: hidden;">
			<table id="tabPesquisa"></table>
		</div>
	</form>
	
	<script type="text/javascript" src="<c:url value="/js/jlib.js"/>"></script>   
	<script type="text/javascript" src="<c:url value="/js/select.js"/>"></script>
	
</body>
</html>