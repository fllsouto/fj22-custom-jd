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
				<form class="cart-formulario" action="/cart" method="post">
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
							<cdc:cartItem 
								productUrl="/products/46"
								productCoverUrl="http://cdn.shopify.com/s/files/1/0155/7645/products/7aXPAWM4TObeQ4OOv3mUY-mrVzqf23Ty6enIslrhXvM_large.jpg?v=1501874081" 
								productTitle="Spring MVC" 
								productKind="E-book" 
								productPrice="29.90" 
								productAmount="2" 
								productTotalPrice="59.80" 
								productRemoveUrl="http://cdn.shopify.com/s/files/1/0155/7645/t/241/assets/trash.png?v=14717796075839190483" 
							/>
							
							<cdc:cartItem 
								productUrl="/products/47"
								productCoverUrl="http://cdn.shopify.com/s/files/1/0155/7645/products/mean-featured_large.png?v=1423666173"
								productTitle="Mean Stack" 
								productKind="Combo digital + físico" 
								productPrice="35.00" 
								productAmount="3" 
								productTotalPrice="105.00" 
								productRemoveUrl="http://cdn.shopify.com/s/files/1/0155/7645/t/241/assets/trash.png?v=14717796075839190483" 
							/>
						</tbody>
						<tfoot class="cart-formulario-tabela-footer">
							<tr>
								<td class="cart-formulario-tabela-footer-item" colspan="3">
									<button class="btn btn-warning cart-formulario-tabela-item-submeter" type="submit" name="checkout" >
										<i class="fa fa-cart-plus fa-lg"></i> Finalizar compra
									</button>
								</td>
								<td class="cart-formulario-tabela-footer-item">
									<button class="btn btn-primary cart-formulario-tabela-item-atualizar" type="submit" name="update">
										<i class="fa fa-refresh fa-lg"></i> 
									</button>
								</td>
								<td class="cart-formulario-tabela-footer-item">
									<fmt:formatNumber value="${ 164.80 }" type="currency"  currencySymbol="R$" />
								</td>
								<td></td>
							</tr>
						</tfoot>
					</table>
				</form>
		</main>
    </jsp:body>
</cdc:shopTemplate>