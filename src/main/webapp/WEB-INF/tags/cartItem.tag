<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ attribute name="productUrl" required="true"%>
<%@ attribute name="productCoverUrl" required="true"%>
<%@ attribute name="productTitle" required="true"%>
<%@ attribute name="productKind" required="true"%>
<%@ attribute name="productPrice" required="true"%>
<%@ attribute name="productAmount" required="true"%>
<%@ attribute name="productTotalPrice" required="true"%>
<%@ attribute name="productRemoveUrl" required="true"%>

<tr class="cart-formulario-tabela-row">
	<td class="cart-formulario-tabela-item">
		<a href="${ productUrl }">
			<img class="formularioDoCarrinho-item-imagem" src="${ productCoverUrl }">
		</a>
	</td>
	<td class="cart-formulario-tabela-item">
		<span>${ productTitle }</span>
		<span>${ productKind }</span>
	</td>
	<td class="cart-formulario-tabela-item"><fmt:formatNumber value="${ productPrice }" type="currency"  currencySymbol="R$" /></td>
	<td class="cart-formulario-tabela-item">
		<input disabled class="cart-formulario-tabela-item-quantidade" type="number" min="0" value="${ productAmount }" disabled>
	</td>
	<td class="cart-formulario-tabela-item" title="Preço unitário"><fmt:formatNumber value="${ productTotalPrice }" type="currency"  currencySymbol="R$" /></td>
	<td class="cart-formulario-tabela-item">
		<form action="${ productRemoveUrl }" method="post">
			<button type="submit" style="border: none;">
				<img class="cart-formulario-tabela-item-remover" src="https://cdn.shopify.com/s/files/1/0155/7645/t/241/assets/trash.png" alt="X" title="Remover">
			</button>
		</form>
	</td>
</tr>
