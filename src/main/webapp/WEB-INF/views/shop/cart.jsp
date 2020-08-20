<%@ taglib tagdir="/WEB-INF/tags/" prefix="cdc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<cdc:shopTemplate>
	<jsp:body>
	    <main>
			<section class=" container cart-section cart-info">
				<h2 class="cart-info-titulo">
					Seu carrinho
				</h2>
				
					<table class="cart-formulario-tabela">
						<thead class="cart-formulario-tabela-cabecalho">
							<tr>
								<th></th>
								<th>Item</th>
								<th>Preço</th>
								<th>Qtd</th>
								<th>Total</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${ cart.items }" var="item">
								<cdc:cartItem 
									productUrl="/products/${ item.product.id }"
									productCoverUrl="${ item.product.coverUrl }" 
									productTitle="${ item.product.title }"
									productKind="${ item.product.kind.description }" 
									productPrice="${ item.product.price }"
									productAmount="${ item.amount }"
									productTotalPrice="${ item.totalPrice }"
									productRemoveUrl="/products/cart/remove/${ item.product.id }" 
								/>
							</c:forEach>
						</tbody>
						<tfoot class="cart-formulario-tabela-footer">
								<tr>
									<td class="cart-formulario-tabela-footer-item" colspan="3">
									<form class="cart-formulario" action="/products/checkout" method="post">
										<button class="btn btn-warning cart-formulario-tabela-item-submeter" type="submit" name="checkout" >
											<i class="fa fa-cart-plus fa-lg"></i> Finalizar compra
										</button>
									</form>
									</td>
									<td class="cart-formulario-tabela-footer-item" colspan="3">
										<fmt:formatNumber value="${ cart.totalPrice() }" type="currency"  currencySymbol="R$" />
									</td>
								</tr>
						</tfoot>
					</table>
				</section>
		</main>
	    <script async="false">
	    	function reloadCart(event) {
	    		event.preventDefault();
	    		console.log("submetendo dados...");
/* 				url = "/products/update-cart"
	    		$.post(url, function (data) {
					
				}) */
	    	}
	    	
	    	$("#cart-update-button").on("click", reloadCart);
	    </script>
    </jsp:body>
    
</cdc:shopTemplate>