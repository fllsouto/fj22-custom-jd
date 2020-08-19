<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<cdc:shopTemplate>
	<jsp:body>
	    <main>
			<section
				class="container produto-section d-flex justify-content-around">
				<div>
					<img class="vitrineDestacao-item-imagem"
						src="${ product.coverUrl }"
						title="${ product.title }">
				</div>
				<div class="produto-container d-flex flex-column justify-content-around">
					<h1 class="produto-titulo">${ product.title }</h1>
					<span class="produto-titulo-categoria">Categoria: ${ product.category }</span>
					<span class="produto-titulo-autor">${ product.author }</span>
					
					<form action="/products/cart/add" method="POST" class="adicionarAoCarrinho">
						<input type="hidden" name="productId" value="${ product.id }" />
						<div class="produto-compra d-flex justify-content-between">
							<label class="produto-compra-info"
								for="product-variant-34446257290">
								<span class="adicionarAoCarrinho-tipoDaOferta" role="presentation">
									<span class="adicionarAoCarrinho-tipoDaOferta-nome">
										${ product.kind.description }
									</span>
					
								</span>
								<p class="adicionarAoCarrinho-preco">
									<span class="adicionarAoCarrinho-preco-valor" itemprop="price">
										<fmt:formatNumber value="${ product.price }" type="currency"  currencySymbol="R$" />
									</span>
					
								</p>
							</label>
							<button class="btn btn-warning vitrine-link produto-compra-botao" type="submit" name="id" value="34446257290" 
								title="Compre o E-book + Impresso">
								<i class="fa fa-cart-plus fa-lg"></i> Comprar
							</button>							
						</div>

				  		<p class="infoSection-texto">*Você terá acesso às futuras atualizações do livro.</p>
					</form>
				</div>
			</section>
			<section class=" container produto-section produto-info">
				<h2 class="produto-info-titulo">
					Conteúdo
				</h2>
				<p>
					${ product.description }
				</p>
				<p>
					Suspendisse pretium, dui ut imperdiet ullamcorper, orci lectus pharetra tellus, nec ornare mi quam quis ex. Vivamus efficitur euismod nisi, eu sollicitudin odio feugiat sed. Nulla tempus non justo quis mattis. Morbi auctor volutpat maximus. Cras pulvinar consectetur dui, vitae scelerisque odio interdum ut. Maecenas lobortis bibendum ligula vitae gravida. Donec vel eros lectus. Cras neque nisi, suscipit nec mattis sed, rhoncus non est. In sollicitudin eros a fermentum rutrum.				
				</p>
				<p>
					Cras ullamcorper tristique sagittis. Sed tincidunt elit id ligula convallis, sed volutpat orci tempus. Pellentesque vel feugiat justo. Proin placerat porta nunc. Phasellus aliquam tincidunt libero et tristique. Nullam nunc dui, feugiat at vulputate sit amet, faucibus vel mi. Etiam fermentum vulputate velit. Suspendisse ante velit, dictum sit amet dui id, posuere blandit nulla. Quisque elit velit, vestibulum eu ante vel, eleifend tincidunt dolor. Nullam eu blandit felis, id mattis urna. Sed eget turpis in nisi aliquet lacinia. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent diam justo, lacinia in finibus eget, facilisis nec metus.
				</p>
			</section>
		</main>
    </jsp:body>
</cdc:shopTemplate>