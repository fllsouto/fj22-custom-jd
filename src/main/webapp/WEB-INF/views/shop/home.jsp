<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<cdc:shopTemplate>
    <jsp:body>
		<main class="">
			<section class="vitrine-main">
				<div class="container vitrine-main vitrine-destaque">	
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
				</div>		
			</section>
			<section class="vitrine-geral">
				<div class="container">
					<h2 class="vitrine-geral-titulo">Lista de Livros</h2>
					<ul class="d-flex flex-wrap justify-content-around align-content-around vitrine-destaque-list">
	
						<cdc:productItem 
							productTitle="Mean Stack"
							productCoverUrl="http://cdn.shopify.com/s/files/1/0155/7645/products/mean-featured_large.png?v=1423666173"
							productKind="Livro digital"
							productPrice="30.00"
							productUrl="/products/product"
							customClasses="vitrine-geral-item"
						/>
						<cdc:productItem 
							productTitle="Spring Boot"
							productCoverUrl="http://cdn.shopify.com/s/files/1/0155/7645/products/7aXPAWM4TObeQ4OOv3mUY-mrVzqf23Ty6enIslrhXvM_large.jpg?v=1501874081"
							productKind="Combo digital + físico"
							productPrice="70.00"
							productUrl="/products/46"
							customClasses="vitrine-geral-item"
						/>
						<cdc:productItem 
							productTitle="Mean Stack"
							productCoverUrl="http:////cdn.shopify.com/s/files/1/0155/7645/products/cover_4cf472c0-e215-419c-8c13-02914d4b5766_large.jpg?v=1597170715"
							productKind="Livro físico"
							productPrice="40.00"
							productUrl="/products/45"
							customClasses="vitrine-geral-item"
						/>
						<cdc:productItem 
							productTitle="Mean Stack"
							productCoverUrl="http:////cdn.shopify.com/s/files/1/0155/7645/products/cover_4cf472c0-e215-419c-8c13-02914d4b5766_large.jpg?v=1597170715"
							productKind="Livro físico"
							productPrice="40.00"
							productUrl="/products/45"
							customClasses="vitrine-geral-item"
						/>
						<cdc:productItem 
							productTitle="Mean Stack"
							productCoverUrl="http:////cdn.shopify.com/s/files/1/0155/7645/products/cover_4cf472c0-e215-419c-8c13-02914d4b5766_large.jpg?v=1597170715"
							productKind="Livro físico"
							productPrice="40.00"
							productUrl="/products/45"
							customClasses="vitrine-geral-item"
						/>
						<cdc:productItem 
							productTitle="Mean Stack"
							productCoverUrl="http://cdn.shopify.com/s/files/1/0155/7645/products/mean-featured_large.png?v=1423666173"
							productKind="Livro digital"
							productPrice="30.00"
							productUrl="/products/47"
							customClasses="vitrine-geral-item"
						/>
						
						<cdc:productItem 
							productTitle="Spring Boot"
							productCoverUrl="http://cdn.shopify.com/s/files/1/0155/7645/products/7aXPAWM4TObeQ4OOv3mUY-mrVzqf23Ty6enIslrhXvM_large.jpg?v=1501874081"
							productKind="Combo digital + físico"
							productPrice="70.00"
							productUrl="/products/46"
							customClasses="vitrine-geral-item"
						/>
									
					</ul>
				</div>
			</section>
		</main>
    </jsp:body>
</cdc:shopTemplate>