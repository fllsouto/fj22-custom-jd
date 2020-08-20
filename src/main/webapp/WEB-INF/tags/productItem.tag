<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ attribute name="productId" required="true"%>
<%@ attribute name="productTitle" required="true"%>
<%@ attribute name="productCoverUrl" required="true"%>
<%@ attribute name="productKind" required="true"%>
<%@ attribute name="productPrice" required="true"%>
<%@ attribute name="productUrl" required="true"%>
<%@ attribute name="customClasses" required="false"%>

<li class="vitrine-item d-flex flex-column justify-content-between align-items-center ${ customClasses }">
	<span class="vitrine-item-name">${ productTitle }</span>
	<img class="vitrineDestacao-item-imagem" src="${ productCoverUrl }" title="${ productTitle }">
	<span class="vitrine-destaque-item-price">${ productKind }</span>
	<span class="vitrine-destaque-item-price"><fmt:formatNumber value="${ productPrice }" type="currency"  currencySymbol="R$" /></span>

	<form action="/products/cart/add" method="POST">
		<input type="hidden" name="productId" value="${ productId }" />
		<button type="submit" class="btn btn-warning vitrine-link" >
			<i class="fa fa-cart-plus fa-lg"></i>
		</button>
	</form>
	
	<a href="${ productUrl }" class="btn btn-primary vitrine-link" role="button" >
		Mais detalhes
	</a>

</li>
