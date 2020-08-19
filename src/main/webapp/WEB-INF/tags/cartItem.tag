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
		<input class="cart-formulario-tabela-item-quantidade" type="number" min="0" id="updates_47232878292" name="updates[47232878292]" value="${ productAmount }">
	</td>
	<td class="cart-formulario-tabela-item" title="Preço unitário: R$29,90"><fmt:formatNumber value="${ productTotalPrice }" type="currency"  currencySymbol="R$" /></td>
	<td class="cart-formulario-tabela-item">
		<a href="${ productRemoveUrl }">
			<img class="cart-formulario-tabela-item-remover" src="https://cdn.shopify.com/s/files/1/0155/7645/t/241/assets/trash.png" alt="X" title="Remover">
		</a>
	</td>
</tr>
