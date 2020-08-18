<%@ tag language="java" description="Overall Page template" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc" %>

<!DOCTYPE html>
<html lang="en">
	<!-- Template based on https://www.codeply.com/go/KrUO8QpyXP/bootstrap-4-dashboard -->
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Casa do Código</title>
		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link
			href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"
			rel="stylesheet">

		<link rel="stylesheet"
			href=" <c:url value='/resources/css/style.css' /> ">
 		<link rel="stylesheet"
			href=" <c:url value='/resources/css/custom-style.css' /> ">
			
			<style>
				.navbar {
					background-color: #ffaa60;
					height: 70px;
				}

				.navbar-linkTitulo {
					display: inline-block;
				}
				
				.navbar-logo {
					height: 70px;
				}
				
				.navbar-nav a {
					color: #fff;
					font-size: 18px;
				}
				
				.vitrine-main {
					padding-top: 3em;
					padding-bottom: 3em;
					background-color: #484848;
					background-image: url("data:image/svg+xml,%3Csvg width='40' height='12' viewBox='0 0 40 12' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M0 6.172L6.172 0h5.656L0 11.828V6.172zm40 5.656L28.172 0h5.656L40 6.172v5.656zM6.172 12l12-12h3.656l12 12h-5.656L20 3.828 11.828 12H6.172zm12 0L20 10.172 21.828 12h-3.656z' fill='%234f4f4f' fill-opacity='0.4' fill-rule='evenodd'/%3E%3C/svg%3E");
					border-bottom: solid 1px #f1e9e2;
					position: relative;
				}
				
				.vitrine-titulo {
					text-align: left;
					font-weight: 700;
					font-size: 1.75em;
					border-bottom: 2px solid #fff;
					padding-bottom: 15px;
					margin-bottom: 1em;
					letter-spacing: -0.4px;
					color: #fff;
				}
				
				.vitrine-geral-titulo {
					text-align: left;
					font-weight: 700;
					font-size: 1.75em;
					border-bottom: 2px solid #000;
					padding-bottom: 15px;
					margin-bottom: 1em;
					letter-spacing: -0.4px;
					color: #000;
				}
				
				.vitrine-destaque-list {
					list-style: none;
				}
				
				.vitrine-item {
					width: 250px;
					height: 560px;
					display: inline-block;
				}
				
				.vitrine-item a {
				    display: inline-block;
				    width: 100%;
				    max-width: 205px;
				    text-align: center;
				}
				
				.vitrine-item img {
				    display: inline-block;
				    width: 250px;
				}
				
				.vitrine-link {
					text-decoration: none;
				}
				
				.vitrine-item-name {
					text-transform: uppercase;
					color: #fff;
					white-space: nowrap;
					overflow: hidden;
					text-overflow: ellipsis; 
				}
				
				.vitrine-item span {
					color: #fff;
				}
				
				.vitrine-geral {
					padding-top: 3em;
					padding-bottom: 3em;
					background-color: #fbfaf9;
				}
				
				.vitrine-geral-item {
					width: 300px;
					margin-top: 20px;
				}
				
				.vitrine-geral-item span {
					color: #000;
				}
				
				body {
					background-color: #fbfaf9;
				}
				
				.produto-section {
					padding-top: 56px;
				}
				
				.produto-container {
					height: 390px;
				}
				
				.produto-compra {
					background-color: #f2f0ee;
					padding: 24px 32px 16px;
				}
				
				.produto-titulo {
					font-weight: 700;
				    font-size: 42px;
				    line-height: 1;
				    width: 500px;
				    display: block;
				}

				.produto-titulo-autor {
					font-size: 20px;
				    font-weight: 600;
    				color: #6c6a69;
				    display: inline-block;
				}
				
				.produto-titulo-categoria {
					font-size: 16px;
				    font-weight: 400;
    				color: #6c6a69;
				    display: inline-block;
				}
				
				.produto-compra-info {
				    line-height: 1.5;
				    font-size: 20px;
				}
				
				.produto-compra-botao {
					height: 60px;
   					width: 170px;
				}
				
				.produto-info-titulo {
					font-family: "open-sans", sans-serif;
				    font-size: 1.8em;
				    font-weight: 700;
				    width: 100%;
				    border-bottom: 2px solid rgba(108, 105, 105, 0.3);
				    padding-bottom: .35em;
				    margin-bottom: .6em;
				    color: #6c6a69;
				}
				
				.produto-info p {
				font-family: "Roboto", serif;
			    font-size: 1.1em;
			    line-height: 1.8;
			    color: #6c6a69;
			    font-weight: 300;
			    margin-top: 1em;
				}
			</style>

		<script type="text/javascript"
			src=" <c:url value='/resources/js/jquery-3.5.1.js' /> "></script>
	</head>
	<body>
		<header>
			<cdc:shopNavbar />
		</header>

		<jsp:doBody />
		
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
	</body>
</html>