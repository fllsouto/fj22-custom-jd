<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<cdc:shopTemplate>
    <jsp:body>
		<main class="">
			<section class="vitrine-main">
				<div class="container vitrine-main vitrine-destaque">	
					<h2 class="vitrine-titulo">Últimos lançamentos</h2>
					<ul class="d-flex justify-content-around vitrine-destaque-list">
						<c:forEach items="${ lastProducts }" var="product">
	
							<cdc:productItem 
								productTitle="${ product.title }"
								productCoverUrl="${ product.coverUrl }"
								productKind="${ product.kind.description }"
								productPrice="${ product.price }"
								productUrl="/products/${ product.id }"
							/>

						</c:forEach>
					</ul>
				</div>		
			</section>
			<section class="vitrine-geral">
				<div class="container">
					<h2 class="vitrine-geral-titulo">Lista de Livros</h2>
					<ul class="d-flex flex-wrap justify-content-around align-content-around vitrine-destaque-list">
	
						<c:forEach items="${ products }" var="product">
	
							<cdc:productItem 
								productTitle="${ product.title }"
								productCoverUrl="${ product.coverUrl }"
								productKind="${ product.kind.description }"
								productPrice="${ product.price }"
								productUrl="/products/${ product.id }"
								customClasses="vitrine-geral-item"							
							/>

						</c:forEach>
									
					</ul>
				</div>
			</section>
		</main>
    </jsp:body>
</cdc:shopTemplate>