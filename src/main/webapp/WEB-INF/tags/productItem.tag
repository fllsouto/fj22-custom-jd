<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ attribute name="productTitle" required="true"%>
<%@ attribute name="productCoverUrl" required="true"%>
<%@ attribute name="productKind" required="true"%>
<%@ attribute name="productPrice" required="true"%>
<%@ attribute name="productUrl" required="true"%>
<%@ attribute name="customClasses" required="false"%>

<li class="vitrine-item d-flex flex-column justify-content-between align-items-center ${ customClasses }">
	<span class="vitrine-item-name">${ productTitle }</span>
	<img class="vitrineDestacao-item-imagem" src="${ productCoverUrl }" title="${ productTitle }">
	<span class="h4 vitrine-destaque-item-price">${ productKind }</span>
		<span class="h4 vitrine-destaque-item-price"><fmt:formatNumber value="${ productPrice }" type="currency"  currencySymbol="R$" /></span>
	
	<a href="#" class="btn btn-warning vitrine-link" role="button" >
		<i class="fa fa-cart-plus fa-lg"></i>
	</a>
	<a href="${ productUrl }" class="btn btn-primary vitrine-link" role="button" >
		Mais detalhes
	</a>

</li>
