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
					padding-bottom: 11em;
					background-color: #484848;
					background-image: url("data:image/svg+xml,%3Csvg width='40' height='12' viewBox='0 0 40 12' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M0 6.172L6.172 0h5.656L0 11.828V6.172zm40 5.656L28.172 0h5.656L40 6.172v5.656zM6.172 12l12-12h3.656l12 12h-5.656L20 3.828 11.828 12H6.172zm12 0L20 10.172 21.828 12h-3.656z' fill='%234f4f4f' fill-opacity='0.4' fill-rule='evenodd'/%3E%3C/svg%3E");
					border-bottom: solid 1px #f1e9e2;
					position: relative;
					margin-bottom: calc(145px + 50px);
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
				
				.vitrine-destaque-list {
					list-style: none;
				}
				
				.vitrine-destaque-item {
					width: 250px;
					height: 560px;
					display: inline-block;
				}
				
				.vitrine-destaque-item a {
				    display: inline-block;
				    width: 100%;
				    max-width: 205px;
				    text-align: center;
				}
				
				.vitrine-destaque-item img {
				    display: inline-block;
				    width: 100%;
				}
				
				.vitrine-destaque-link {
					text-decoration: none;
				}
				
				.vitrine-destaque-item-name {
					text-transform: uppercase;
					color: #fff;
					white-space: nowrap;
					overflow: hidden;
					text-overflow: ellipsis; 
				}
				
				.vitrine-destaque-item-price {
					color: #fff;
				}
			
			</style>

		<script type="text/javascript"
			src=" <c:url value='/resources/js/jquery-3.5.1.js' /> "></script>
	</head>
	<body>
		<header>
			<cdc:shopNavbar />
		</header>
		<main class="vitrine-main">
			<section class="container vitrine-destaque">
				<h2 class="vitrine-titulo">Últimos lançamentos</h2>
				<ul class="d-flex justify-content-around vitrine-destaque-list">

					<cdc:productItem 
						productTitle="Mean Stack"
						productCoverUrl="http://cdn.shopify.com/s/files/1/0155/7645/products/mean-featured_large.png?v=1423666173"
						productKind="Livro digital"
						productPrice="30.00"
						productUrl="/products/47"
					/>
					<cdc:productItem 
						productTitle="Spring Boot"
						productCoverUrl="http://cdn.shopify.com/s/files/1/0155/7645/products/7aXPAWM4TObeQ4OOv3mUY-mrVzqf23Ty6enIslrhXvM_large.jpg?v=1501874081"
						productKind="Combo digital + físico"
						productPrice="70.00"
						productUrl="/products/46"
					/>
					<cdc:productItem 
						productTitle="Mean Stack"
						productCoverUrl="http:////cdn.shopify.com/s/files/1/0155/7645/products/cover_4cf472c0-e215-419c-8c13-02914d4b5766_large.jpg?v=1597170715"
						productKind="Livro físico"
						productPrice="40.00"
						productUrl="/products/45"
					/>
					
				</ul>
<%-- 						<div class="container-fluid" id="main">
			<div class="row row-offcanvas row-offcanvas-left">
 
			</div>	
		</div> --%>			
				<jsp:doBody />
			</section>
		</main>

		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
	</body>
</html>