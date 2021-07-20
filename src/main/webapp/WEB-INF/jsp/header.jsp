<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Catálogo de Produtos</title>

<link href="<c:url value='/css/bootstrap.css'/>" rel="stylesheet" />
<link href="<c:url value='/css/site.css'/>" rel="stylesheet" />
</head>

<body>
	<nav>
		<ul class="nav nav-tabs">
			<li>
<%--			<a href="${linkTo[ProdutoController].formVaz()}">VAZ</a> --%>
				<a href="${linkTo[ProdutoController].listaVaz()}">Listagem VAZ</a>
			</li>
			
			<li>
<%--			<a href="${linkTo[ProdutoController].formEco()}">ECO</a> --%>
				<a href="${linkTo[ProdutoController].listaEco()}">Listagem ECO</a>
			</li>
			
			<li>
<%--			<a href="${linkTo[ProdutoController].formVazCap()}">VAZCAP</a> --%>
				<a href="${linkTo[ProdutoController].listaVazCap()}">Listagem VAZCAP</a>
			</li>

			<li>
<%--			<a href="${linkTo[ProdutoController].formKitVaz()}">KIT´S VAZ</a> --%>
				<a href="${linkTo[ProdutoController].listaKitVaz()}">Listagem KIT´S VAZ</a>
			</li>
			<li>
<%-- 				<a href="${linkTo[FerramentaProdutoController].formFerramentaProduto()}">Ferramenta Produto</a> --%>
 				<a href="${linkTo[FerramentaProdutoController].listaFerramentaProduto()}">Listagem Ferram. Produto</a>
			</li>
			
<%-- 			<c:if test="${usuarioLogado.logado}"> --%>
<%-- 				<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li> --%>
<%-- 			</c:if> --%>
<%-- 			<c:if test="${!usuarioLogado.logado}"> --%>
<%-- 				<li><a href="${linkTo[LoginController].formularioLogin()}">Autenticar</a></li> --%>
<%-- 			</c:if> --%>

		</ul>
	</nav>
	<br />
	<div class="container">
		<main class="col-sm-8">