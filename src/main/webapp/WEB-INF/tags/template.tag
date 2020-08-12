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

		<script type="text/javascript"
			src=" <c:url value='/resources/js/jquery-3.5.1.js' /> "></script>
	</head>
	<body>
		<nav
			class="navbar fixed-top navbar-expand-md navbar-dark mb-3 navbar-color">
			<div class="flex-row d-flex">
				<a class="navbar-brand" href=" <c:url value='/' /> " title="Casa do código">Casa do
					código</a>
			</div>
		</nav>
		<div class="container-fluid" id="main">
			<div class="row row-offcanvas row-offcanvas-left">
		
				<cdc:sidebar />
				<jsp:doBody />
				
				<!--/col-->
			</div>	
		</div>
			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script
				src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
			<script>
				$(document).ready(function() {
	
					$('[data-toggle=offcanvas]').click(function() {
						$('.row-offcanvas').toggleClass('active');
					});
	
				});
			</script>
	</body>
</html>